import {
  Args,
  JsonRpcPublicProvider,
  Mas,
  Provider,
  SmartContract,
} from '@massalabs/massa-web3';
import type {
  AdCampaign,
  CampaignFilters,
  CreateCampaignInput,
  DeveloperProfile,
  HosterProfile,
  PlatformStats,
  RegisterDeveloperInput,
  RegisterHosterInput,
} from '@shared/schema';
// For production we avoid shipping obvious demo/sample data.
// When the contract is not configured the UI will display neutral placeholders or empty lists.
import { masToNano, nanoToMasNumber } from './units';

const CONTRACT_ADDRESS = import.meta.env.VITE_MASSA_CONTRACT_ADDRESS;
const RPC_URL =
  import.meta.env.VITE_MASSA_RPC_URL ?? 'https://buildnet.massa.net/api/v2';
const DEFAULT_MAX_GAS = BigInt(
  import.meta.env.VITE_MASSA_MAX_GAS ?? '160000000',
);
export const contractConfigured = Boolean(CONTRACT_ADDRESS);

let reader: SmartContract | null = null;

function getReader(): SmartContract {
  if (!CONTRACT_ADDRESS) {
    throw new Error('Smart contract address is not configured.');
  }
  if (!reader) {
    const provider = JsonRpcPublicProvider.fromRPCUrl(RPC_URL);
    reader = new SmartContract(provider, CONTRACT_ADDRESS);
  }
  return reader;
}

async function read(functionName: string, args?: Args): Promise<Args> {
  const sc = getReader();
  const payload = await sc.read(functionName, args ?? new Args());
  return new Args(payload.value);
}

function decodeCampaign(args: Args): AdCampaign {
  const id = Number(args.nextU32());
  const owner = args.nextString();
  const title = args.nextString();
  const description = args.nextString();
  const category = args.nextString();
  const targetUrl = args.nextString();
  const creativeUri = args.nextString();
  const pricingModel = args.nextString();
  const rateRaw = args.nextU64();
  const budgetRaw = args.nextU64();
  const spentRaw = args.nextU64();
  const status = args.nextString();
  const impressions = Number(args.nextU64());
  const clicks = Number(args.nextU64());
  const createdAt = Number(args.nextU64());
  const updatedAt = Number(args.nextU64());

  const rateMas = nanoToMasNumber(rateRaw);
  const budget = nanoToMasNumber(budgetRaw);
  const spent = nanoToMasNumber(spentRaw);

  // Map creativeUri to imageUrl if it's a data URL or valid image URL
  let imageUrl: string | undefined = undefined;
  if (creativeUri) {
    if (creativeUri.startsWith('data:image/') || creativeUri.startsWith('data:video/')) {
      // It's a base64 data URL - use it directly
      imageUrl = creativeUri;
    } else if (creativeUri.match(/\.(jpg|jpeg|png|gif|webp|svg)$/i)) {
      // It's an image file reference - could be IPFS or HTTP URL
      imageUrl = creativeUri.startsWith('http') || creativeUri.startsWith('ipfs://') 
        ? creativeUri 
        : undefined;
    }
  }

  return {
    id,
    owner,
    title,
    description,
    category: category as AdCampaign['category'],
    imageUrl,
    videoUrl: null,
    htmlSnippet: null,
    targetUrl,
    creativeUri,
    pricingModel: pricingModel as AdCampaign['pricingModel'],
    costPerClick: pricingModel === 'cpc' ? rateMas : null,
    costPerImpression: pricingModel === 'cpm' ? rateMas : null,
    budget,
    spent,
    status: status as AdCampaign['status'],
    impressions,
    clicks,
    createdAt,
    updatedAt,
  };
}

function decodeHoster(args: Args): HosterProfile {
  const address = args.nextString();
  const name = args.nextString();
  const businessName = args.nextString();
  const categories = args.nextString();
  const totalBudget = nanoToMasNumber(args.nextU64());
  const totalSpent = nanoToMasNumber(args.nextU64());
  const activeCampaigns = Number(args.nextU32());
  const createdAt = Number(args.nextU64());
  const updatedAt = Number(args.nextU64());

  return {
    address,
    name,
    businessName,
    categories: categories ? categories.split('|') : [],
    totalBudget,
    totalSpent,
    activeCampaigns,
    createdAt,
    updatedAt,
  };
}

function decodeDeveloper(args: Args): DeveloperProfile {
  const address = args.nextString();
  const name = args.nextString();
  const website = args.nextString();
  const categories = args.nextString();
  const reputation = Number(args.nextI32());
  const impressions = Number(args.nextU64());
  const clicks = Number(args.nextU64());
  const pendingPayout = nanoToMasNumber(args.nextU64());
  const lifetimeEarnings = nanoToMasNumber(args.nextU64());
  const lastPayoutAt = Number(args.nextU64());
  const fraudCount = Number(args.nextU32());
  const createdAt = Number(args.nextU64());
  const updatedAt = Number(args.nextU64());

  return {
    address,
    name,
    website,
    categories: categories ? categories.split('|') : [],
    reputation,
    impressions,
    clicks,
    pendingPayout,
    lifetimeEarnings,
    lastPayoutAt,
    fraudCount,
    createdAt,
    updatedAt,
  };
}

function cloneCampaigns(): AdCampaign[] {
  // Return locally created campaigns when the contract is not configured.
  try {
    const raw = globalThis.localStorage?.getItem('massa_local_campaigns');
    if (raw) {
      return JSON.parse(raw) as AdCampaign[];
    }
  } catch (e) {
    // ignore
  }
  return [];
}

function fallbackHoster(address?: string): HosterProfile {
  return {
    address: address ?? '',
    name: '',
    businessName: '',
    categories: [],
    totalBudget: 0,
    totalSpent: 0,
    activeCampaigns: 0,
    createdAt: Date.now(),
    updatedAt: Date.now(),
  };
}

function fallbackDeveloper(address?: string): DeveloperProfile {
  return {
    address: address ?? '',
    name: '',
    website: '',
    categories: [],
    reputation: 0,
    impressions: 0,
    clicks: 0,
    pendingPayout: 0,
    lifetimeEarnings: 0,
    lastPayoutAt: 0,
    fraudCount: 0,
    createdAt: Date.now(),
    updatedAt: Date.now(),
  };
}

async function safeFetch<T>(task: () => Promise<T>, fallback: () => T) {
  if (!contractConfigured) {
    return fallback();
  }
  try {
    return await task();
  } catch (error) {
    console.warn('Falling back to demo data:', error);
    return fallback();
  }
}

export async function fetchCampaigns(
  filters: CampaignFilters = {},
): Promise<AdCampaign[]> {
  // Always get local campaigns first (they work even without contract)
  // Local campaigns are stored in localStorage and visible to ALL accounts in the same browser
  const localCampaigns = cloneCampaigns();
  console.log('[fetchCampaigns] Local campaigns found:', localCampaigns.length);
  
  // If contract is configured, try to fetch from contract and combine
  if (contractConfigured) {
    try {
      console.log('[fetchCampaigns] Contract configured, fetching on-chain campaigns...');
      const args = new Args()
        .addU32(BigInt(filters.offset ?? 0))
        .addU32(BigInt(filters.limit ?? 200)) // Increased limit to get more campaigns
        .addString(filters.category ?? '')
        .addString(filters.status ?? '');
      const response = await read('listCampaigns', args);
      const count = Number(response.nextU32());
      console.log('[fetchCampaigns] On-chain campaigns found:', count);
      const onChainCampaigns: AdCampaign[] = [];
      for (let i = 0; i < count; i++) {
        onChainCampaigns.push(decodeCampaign(response));
      }
      
      let allCampaigns = onChainCampaigns.length > 0 ? onChainCampaigns : localCampaigns;
      console.log('[fetchCampaigns] Total campaigns after merge:', allCampaigns.length);
      
      // Apply filters if specified (status, category)
      if (filters.status) {
        allCampaigns = allCampaigns.filter(c => c.status === filters.status);
      }
      if (filters.category) {
        allCampaigns = allCampaigns.filter(c => c.category === filters.category);
      }
      
      // Sort by creation date (newest first)
      allCampaigns.sort((a, b) => b.createdAt - a.createdAt);
      
      console.log('[fetchCampaigns] Final campaigns after filters:', allCampaigns.length);
      return allCampaigns;
    } catch (error) {
      console.warn('[fetchCampaigns] Error fetching campaigns from contract, falling back to local:', error);
      // Fall back to local campaigns if contract read fails
      // Show ALL local campaigns regardless of owner
      let filtered = localCampaigns;
      if (filters.status) {
        filtered = filtered.filter(c => c.status === filters.status);
      }
      if (filters.category) {
        filtered = filtered.filter(c => c.category === filters.category);
      }
      filtered.sort((a, b) => b.createdAt - a.createdAt);
      console.log('[fetchCampaigns] Returning local campaigns only:', filtered.length);
      return filtered;
    }
  }
  
  // If contract is not configured, return ALL local campaigns with filters applied
  // Show ALL campaigns to ALL users - NO owner filtering
  // IMPORTANT: Local campaigns are visible to ALL accounts in the same browser
  // For cross-browser visibility, configure the contract (VITE_MASSA_CONTRACT_ADDRESS)
  console.log('[fetchCampaigns] Contract not configured, using local campaigns only');
  console.log('[fetchCampaigns] Total local campaigns (ALL owners):', localCampaigns.length);
  
  // Show ALL campaigns regardless of owner - no filtering by owner address
  let filtered = localCampaigns;
  if (filters.status) {
    filtered = filtered.filter(c => c.status === filters.status);
    console.log('[fetchCampaigns] After status filter:', filtered.length);
  }
  if (filters.category) {
    filtered = filtered.filter(c => c.category === filters.category);
    console.log('[fetchCampaigns] After category filter:', filtered.length);
  }
  filtered.sort((a, b) => b.createdAt - a.createdAt);
  console.log('[fetchCampaigns] Returning ALL local campaigns (no owner filter):', filtered.length);
  return filtered;
}

export async function fetchCampaignById(id: number): Promise<AdCampaign> {
  return safeFetch(async () => {
    const args = new Args().addU32(BigInt(id));
    const payload = await read('getCampaign', args);
    return decodeCampaign(payload);
  }, () => {
    // try local campaigns
    try {
      const raw = globalThis.localStorage?.getItem('massa_local_campaigns');
      if (raw) {
        const arr = JSON.parse(raw) as AdCampaign[];
        const found = arr.find((c) => c.id === id);
        if (found) return found;
      }
    } catch (e) {
      // ignore
    }
    // fallback empty campaign shaped object
    return {
      id,
      owner: '',
      title: '',
      description: '',
      category: 'Tech',
      imageUrl: undefined,
      videoUrl: null,
      htmlSnippet: null,
      targetUrl: '',
      creativeUri: '',
      pricingModel: 'cpc',
      costPerClick: 0,
      costPerImpression: null,
      budget: 0,
      spent: 0,
      status: 'active',
      impressions: 0,
      clicks: 0,
      createdAt: Date.now(),
      updatedAt: Date.now(),
    } as AdCampaign;
  });
}

export async function fetchHosterProfile(
  address?: string,
): Promise<HosterProfile> {
  return safeFetch(async () => {
    const args = address ? new Args().addString(address) : new Args();
    const payload = await read('getHosterProfile', args);
    return decodeHoster(payload);
  }, () => computeHosterFromLocal(address));
}

// Local campaign helpers used when the contract is not configured
function getLocalCampaigns(): AdCampaign[] {
  try {
    const raw = globalThis.localStorage?.getItem('massa_local_campaigns');
    if (!raw) return [];
    return JSON.parse(raw) as AdCampaign[];
  } catch (e) {
    return [];
  }
}

function saveLocalCampaigns(items: AdCampaign[]) {
  try {
    globalThis.localStorage?.setItem('massa_local_campaigns', JSON.stringify(items));
  } catch (e) {
    // ignore
  }
}

function broadcastCampaignsUpdated(adId?: number) {
  if (typeof window !== 'undefined' && window.localStorage) {
    const timestamp = Date.now().toString();
    window.localStorage.setItem('massa_campaigns_updated', timestamp);
    window.dispatchEvent(
      new CustomEvent('massa_campaigns_updated', {
        detail: { timestamp, campaignId: adId },
      }),
    );
  }
}

function updateLocalCampaign(
  id: number,
  updater: (c: AdCampaign) => AdCampaign,
): AdCampaign | null {
  const items = getLocalCampaigns();
  const idx = items.findIndex((c) => c.id === id);
  if (idx === -1) return null;
  const updated = updater(items[idx]);
  items[idx] = { ...items[idx], ...updated, updatedAt: Date.now() } as AdCampaign;
  saveLocalCampaigns(items);
  broadcastCampaignsUpdated(id);
  return items[idx];
}

export async function recordLocalImpression(id: number): Promise<void> {
  updateLocalCampaign(id, (c) => ({ ...c, impressions: (c.impressions ?? 0) + 1 }));
}

export async function recordLocalClick(id: number): Promise<void> {
  updateLocalCampaign(id, (c) => {
    const next: Partial<AdCampaign> = { clicks: (c.clicks ?? 0) + 1 };
    if (c.pricingModel === 'cpc' && typeof c.costPerClick === 'number') {
      const spent = (c.spent ?? 0) + c.costPerClick;
      next.spent = Math.min(spent, c.budget ?? spent);
    }
    return { ...(c as any), ...next } as AdCampaign;
  });
}

export function countLocalCampaigns(ownerAddress?: string) {
  const all = getLocalCampaigns();
  if (!ownerAddress) return all.length;
  return all.filter((c) => c.owner === ownerAddress).length;
}

export async function createLocalCampaignForOwner(ownerAddress: string, input: CreateCampaignInput): Promise<AdCampaign> {
  // create a lightweight local campaign to allow demos without a deployed contract
  // These campaigns are stored in localStorage and visible to ALL accounts
  const existing = getLocalCampaigns();
  // Use a more unique ID to avoid conflicts - combine timestamp with random number
  const nextId = existing.length > 0 
    ? Math.max(...existing.map((c) => c.id)) + 1 
    : Date.now() + Math.floor(Math.random() * 1000);
  const now = Date.now();
  
  // Map creativeUri to imageUrl if it's a data URL or valid image URL
  let imageUrl: string | undefined = undefined;
  const creativeUri = input.creativeUri || '';
  if (creativeUri) {
    if (creativeUri.startsWith('data:image/') || creativeUri.startsWith('data:video/')) {
      imageUrl = creativeUri;
    } else if (creativeUri.match(/\.(jpg|jpeg|png|gif|webp|svg)$/i)) {
      imageUrl = creativeUri.startsWith('http') || creativeUri.startsWith('ipfs://') 
        ? creativeUri 
        : undefined;
    }
  }
  
  const campaign: AdCampaign = {
    id: Number(nextId),
    owner: ownerAddress || 'demo_hoster',
    title: input.title,
    description: input.description,
    category: input.category as AdCampaign['category'],
    imageUrl,
    videoUrl: null,
    htmlSnippet: null,
    targetUrl: input.targetUrl,
    creativeUri,
    pricingModel: input.pricingModel as AdCampaign['pricingModel'],
    costPerClick: input.pricingModel === 'cpc' ? input.rate : null,
    costPerImpression: input.pricingModel === 'cpm' ? input.rate : null,
    budget: input.budget,
    spent: 0,
    status: 'active', // Always set to active so it's visible in marketplace
    impressions: 0,
    clicks: 0,
    createdAt: now,
    updatedAt: now,
  };
  
  // Add to the beginning of the array (newest first)
  existing.unshift(campaign);
  saveLocalCampaigns(existing);
  
  // Trigger storage event to notify other tabs/windows immediately
  if (typeof window !== 'undefined' && window.localStorage) {
    const timestamp = Date.now().toString();
    window.localStorage.setItem('massa_campaigns_updated', timestamp);
    // Dispatch custom event for same-tab listeners (StorageEvent only works across tabs)
    window.dispatchEvent(new CustomEvent('massa_campaigns_updated', {
      detail: { timestamp, campaignId: campaign.id }
    }));
  }
  
  // Return the campaign immediately
  return campaign;
}

// Augment fallback hoster profile with local campaigns counts
function computeHosterFromLocal(address?: string): HosterProfile {
  const local = getLocalCampaigns().filter((c) => (address ? c.owner === address : true));
  const totalBudget = local.reduce((s, c) => s + (c.budget ?? 0), 0);
  const totalSpent = local.reduce((s, c) => s + (c.spent ?? 0), 0);
  return {
    address: address ?? '',
    name: '',
    businessName: '',
    categories: [],
    totalBudget,
    totalSpent,
    activeCampaigns: local.length,
    createdAt: Date.now(),
    updatedAt: Date.now(),
  };
}

export async function fetchDeveloperProfile(
  address?: string,
): Promise<DeveloperProfile> {
  return safeFetch(async () => {
    const args = address ? new Args().addString(address) : new Args();
    const payload = await read('getDeveloperProfile', args);
    return decodeDeveloper(payload);
  }, () => fallbackDeveloper(address));
}

export async function fetchPlatformStats(): Promise<PlatformStats> {
  return safeFetch(async () => {
    const payload = await read('getPlatformStats');
    return {
      hosters: Number(payload.nextU32()),
      developers: Number(payload.nextU32()),
      campaigns: Number(payload.nextU32()),
      activeCampaigns: Number(payload.nextU32()),
      lockedBudget: nanoToMasNumber(payload.nextU64()),
      spent: nanoToMasNumber(payload.nextU64()),
      impressions: Number(payload.nextU64()),
      clicks: Number(payload.nextU64()),
    };
  }, () => ({
    hosters: 0,
    developers: 0,
    campaigns: 0,
    activeCampaigns: 0,
    lockedBudget: 0,
    spent: 0,
    impressions: 0,
    clicks: 0,
  }));
}

function ensureAccount(provider: Provider | null | undefined): Provider {
  if (!provider) {
    throw new Error('Wallet account is not connected');
  }
  return provider;
}

function categoriesToString(categories: string[]): string {
  return categories.filter(Boolean).join('|');
}

const DEFAULT_CALL_OPTIONS = {
  fee: Mas.fromString('0.02'),
  maxGas: DEFAULT_MAX_GAS,
};

function simulateNetworkLatency(delay = 600) {
  return new Promise((resolve) => setTimeout(resolve, delay));
}

export async function registerHosterOnChain(
  account: Provider | null,
  input: RegisterHosterInput,
): Promise<void> {
  if (!contractConfigured) {
    await simulateNetworkLatency();
    return;
  }
  const provider = ensureAccount(account);
  const args = new Args()
    .addString(input.name)
    .addString(input.businessName ?? '')
    .addString(categoriesToString(input.categories));

  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'registerHoster',
    parameter: args,
    ...DEFAULT_CALL_OPTIONS,
  });
}

export async function registerDeveloperOnChain(
  account: Provider | null,
  input: RegisterDeveloperInput,
): Promise<void> {
  if (!contractConfigured) {
    await simulateNetworkLatency();
    return;
  }
  const provider = ensureAccount(account);
  const args = new Args()
    .addString(input.name)
    .addString(input.website ?? '')
    .addString(categoriesToString(input.categories));

  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'registerDeveloper',
    parameter: args,
    ...DEFAULT_CALL_OPTIONS,
  });
}

export async function createCampaignOnChain(
  account: Provider | null,
  input: CreateCampaignInput,
): Promise<void> {
  if (!contractConfigured) {
    // If contract not configured, fall back to local storage for demo
    await simulateNetworkLatency();
    return;
  }
  const provider = ensureAccount(account);
  const args = new Args()
    .addString(input.title)
    .addString(input.description)
    .addString(input.category)
    .addString(input.targetUrl)
    .addString(input.creativeUri)
    .addString(input.pricingModel)
    .addU64(masToNano(input.rate))
    .addU64(masToNano(input.budget));

  // Ensure budget is at least the minimum required (0.000001 MAS for free plan, or user's budget)
  const minBudget = Math.max(input.budget, 0.000001);
  const coinsToSend = Mas.fromString(minBudget.toString());
  
  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'createCampaign',
    parameter: args,
    coins: coinsToSend,
    fee: Mas.fromString('0.05'),
    maxGas: DEFAULT_MAX_GAS,
  });
}

export async function updateCampaignStatusOnChain(
  account: Provider | null,
  id: number,
  status: AdCampaign['status'],
): Promise<void> {
  if (!contractConfigured) {
    await simulateNetworkLatency();
    return;
  }
  const provider = ensureAccount(account);
  const args = new Args().addU32(BigInt(id)).addString(status);
  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'updateCampaignStatus',
    parameter: args,
    ...DEFAULT_CALL_OPTIONS,
  });
}

export async function updateCampaignDetailsOnChain(
  account: Provider | null,
  id: number,
  input: Pick<CreateCampaignInput, 'title' | 'description' | 'category' | 'targetUrl' | 'creativeUri' | 'pricingModel' | 'rate'>,
): Promise<void> {
  if (!contractConfigured) {
    await simulateNetworkLatency();
    return;
  }
  const provider = ensureAccount(account);
  const args = new Args()
    .addU32(BigInt(id))
    .addString(input.title)
    .addString(input.description)
    .addString(input.category)
    .addString(input.targetUrl)
    .addString(input.creativeUri)
    .addString(input.pricingModel)
    .addU64(masToNano(input.rate));
  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'updateCampaignDetails',
    parameter: args,
    ...DEFAULT_CALL_OPTIONS,
  });
}

export async function deleteCampaignOnChain(
  account: Provider | null,
  id: number,
): Promise<void> {
  if (!contractConfigured) {
    await simulateNetworkLatency();
    return;
  }
  const provider = ensureAccount(account);
  const args = new Args().addU32(BigInt(id));
  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'deleteCampaign',
    parameter: args,
    ...DEFAULT_CALL_OPTIONS,
  });
}

export async function claimDeveloperEarningsOnChain(
  account: Provider | null,
): Promise<void> {
  if (!contractConfigured) {
    await simulateNetworkLatency();
    return;
  }
  const provider = ensureAccount(account);
  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'claimDeveloperEarnings',
    parameter: new Args(),
    ...DEFAULT_CALL_OPTIONS,
  });
}

export async function triggerScheduledPayoutsOnChain(
  account: Provider | null,
  batchSize = 25,
): Promise<void> {
  if (!contractConfigured) {
    await simulateNetworkLatency();
    return;
  }
  const provider = ensureAccount(account);
  const args = new Args().addU32(BigInt(batchSize));
  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'triggerScheduledPayouts',
    parameter: args,
    ...DEFAULT_CALL_OPTIONS,
  });
}

export async function recordImpressionOnChain(
  account: Provider | null,
  id: number,
): Promise<void> {
  if (!contractConfigured) {
    return;
  }
  const provider = ensureAccount(account);
  const args = new Args().addU32(BigInt(id));
  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'recordImpression',
    parameter: args,
    ...DEFAULT_CALL_OPTIONS,
  });
}

export async function recordClickOnChain(
  account: Provider | null,
  id: number,
): Promise<void> {
  if (!contractConfigured) {
    return;
  }
  const provider = ensureAccount(account);
  const args = new Args().addU32(BigInt(id));
  await provider.callSC({
    target: CONTRACT_ADDRESS!,
    func: 'recordClick',
    parameter: args,
    ...DEFAULT_CALL_OPTIONS,
  });
}


