import {
  Context,
  Storage,
  generateEvent,
} from '@massalabs/massa-as-sdk';
import {
  PersistentMap,
  _KEY_ELEMENT_SUFFIX,
} from '@massalabs/massa-as-sdk/assembly/collections';
import { Args, Result, Serializable, stringToBytes } from '@massalabs/as-types';

const PLATFORM_KEY = 'platform:name';
const PLATFORM_OWNER_KEY = 'platform:owner';
const CAMPAIGN_COUNTER_KEY = 'counter:campaign';
const HOSTER_COUNTER_KEY = 'counter:hoster';
const DEVELOPER_COUNTER_KEY = 'counter:developer';
const ACTIVE_CAMPAIGN_COUNTER_KEY = 'counter:active';
const LOCKED_BUDGET_KEY = 'stats:locked';
const SPENT_BUDGET_KEY = 'stats:spent';
const IMPRESSIONS_KEY = 'stats:impressions';
const CLICKS_KEY = 'stats:clicks';

const CAMPAIGN_PREFIX = 'campaign';
const HOSTER_PREFIX = 'hoster';
const DEVELOPER_PREFIX = 'developer';

const MIN_RATE: u64 = 1;

const campaigns = new PersistentMap<string, Campaign>(
  `${CAMPAIGN_PREFIX}${_KEY_ELEMENT_SUFFIX}`,
);
const hosters = new PersistentMap<string, HosterProfile>(
  `${HOSTER_PREFIX}${_KEY_ELEMENT_SUFFIX}`,
);
const developers = new PersistentMap<string, DeveloperProfile>(
  `${DEVELOPER_PREFIX}${_KEY_ELEMENT_SUFFIX}`,
);

class Campaign implements Serializable {
  constructor(
    public id: u32 = 0,
    public owner: string = '',
    public title: string = '',
    public description: string = '',
    public category: string = '',
    public targetUrl: string = '',
    public creativeUri: string = '',
    public pricingModel: string = 'cpc',
    public rate: u64 = 0,
    public budget: u64 = 0,
    public spent: u64 = 0,
    public status: string = 'active',
    public impressions: u64 = 0,
    public clicks: u64 = 0,
    public createdAt: u64 = 0,
    public updatedAt: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add<u32>(this.id)
      .add(this.owner)
      .add(this.title)
      .add(this.description)
      .add(this.category)
      .add(this.targetUrl)
      .add(this.creativeUri)
      .add(this.pricingModel)
      .add<u64>(this.rate)
      .add<u64>(this.budget)
      .add<u64>(this.spent)
      .add(this.status)
      .add<u64>(this.impressions)
      .add<u64>(this.clicks)
      .add<u64>(this.createdAt)
      .add<u64>(this.updatedAt)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32 = 0): Result<i32> {
    const args = new Args(data, offset);
    this.id = args.nextU32().expect('campaign id');
    this.owner = args.nextString().expect('campaign owner');
    this.title = args.nextString().expect('title');
    this.description = args.nextString().expect('description');
    this.category = args.nextString().expect('category');
    this.targetUrl = args.nextString().expect('target');
    this.creativeUri = args.nextString().expect('creative');
    this.pricingModel = args.nextString().expect('pricing');
    this.rate = args.nextU64().expect('rate');
    this.budget = args.nextU64().expect('budget');
    this.spent = args.nextU64().expect('spent');
    this.status = args.nextString().expect('status');
    this.impressions = args.nextU64().expect('impressions');
    this.clicks = args.nextU64().expect('clicks');
    this.createdAt = args.nextU64().expect('createdAt');
    this.updatedAt = args.nextU64().expect('updatedAt');
    return new Result(args.offset);
  }
}

class HosterProfile implements Serializable {
  constructor(
    public address: string = '',
    public name: string = '',
    public businessName: string = '',
    public categories: string = '',
    public totalBudget: u64 = 0,
    public totalSpent: u64 = 0,
    public activeCampaigns: u32 = 0,
    public createdAt: u64 = 0,
    public updatedAt: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.address)
      .add(this.name)
      .add(this.businessName)
      .add(this.categories)
      .add<u64>(this.totalBudget)
      .add<u64>(this.totalSpent)
      .add<u32>(this.activeCampaigns)
      .add<u64>(this.createdAt)
      .add<u64>(this.updatedAt)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32 = 0): Result<i32> {
    const args = new Args(data, offset);
    this.address = args.nextString().expect('address');
    this.name = args.nextString().expect('name');
    this.businessName = args.nextString().expect('business');
    this.categories = args.nextString().expect('categories');
    this.totalBudget = args.nextU64().expect('budget');
    this.totalSpent = args.nextU64().expect('spent');
    this.activeCampaigns = args.nextU32().expect('active');
    this.createdAt = args.nextU64().expect('created');
    this.updatedAt = args.nextU64().expect('updated');
    return new Result(args.offset);
  }
}

class DeveloperProfile implements Serializable {
  constructor(
    public address: string = '',
    public name: string = '',
    public website: string = '',
    public categories: string = '',
    public reputation: i32 = 50,
    public impressions: u64 = 0,
    public clicks: u64 = 0,
    public pendingPayout: u64 = 0,
    public lifetimeEarnings: u64 = 0,
    public lastPayoutAt: u64 = 0,
    public fraudCount: u32 = 0,
    public createdAt: u64 = 0,
    public updatedAt: u64 = 0,
  ) {}

  serialize(): StaticArray<u8> {
    return new Args()
      .add(this.address)
      .add(this.name)
      .add(this.website)
      .add(this.categories)
      .add<i32>(this.reputation)
      .add<u64>(this.impressions)
      .add<u64>(this.clicks)
      .add<u64>(this.pendingPayout)
      .add<u64>(this.lifetimeEarnings)
      .add<u64>(this.lastPayoutAt)
      .add<u32>(this.fraudCount)
      .add<u64>(this.createdAt)
      .add<u64>(this.updatedAt)
      .serialize();
  }

  deserialize(data: StaticArray<u8>, offset: i32 = 0): Result<i32> {
    const args = new Args(data, offset);
    this.address = args.nextString().expect('address');
    this.name = args.nextString().expect('name');
    this.website = args.nextString().expect('website');
    this.categories = args.nextString().expect('categories');
    this.reputation = args.nextI32().expect('reputation');
    this.impressions = args.nextU64().expect('impressions');
    this.clicks = args.nextU64().expect('clicks');
    this.pendingPayout = args.nextU64().expect('pending');
    this.lifetimeEarnings = args.nextU64().expect('earnings');
    this.lastPayoutAt = args.nextU64().expect('last payout');
    this.fraudCount = args.nextU32().expect('fraud count');
    this.createdAt = args.nextU64().expect('created');
    this.updatedAt = args.nextU64().expect('updated');
    return new Result(args.offset);
  }
}

function now(): u64 {
  return Context.timestamp();
}

function unwrapOr<T>(result: Result<T>, fallback: T): T {
  return result.isOk() ? result.unwrap() : fallback;
}

function readCounter(key: string): u32 {
  const k = stringToBytes(key);
  if (Storage.has<StaticArray<u8>>(k)) {
    const raw = Storage.get<StaticArray<u8>>(k);
    return new Args(raw).nextU32().expect('counter');
  }
  return 0;
}

function writeCounter(key: string, value: u32): void {
  const k = stringToBytes(key);
  const v = new Args().add<u32>(value).serialize();
  Storage.set<StaticArray<u8>>(k, v);
}

function increaseCounter(key: string): void {
  writeCounter(key, readCounter(key) + 1);
}

function decreaseCounter(key: string): void {
  const current = readCounter(key);
  if (current == 0) return;
  writeCounter(key, current - 1);
}

function increaseAmount(key: string, delta: u64): void {
  const k = stringToBytes(key);
  let current: u64 = 0;
  if (Storage.has<StaticArray<u8>>(k)) {
    const raw = Storage.get<StaticArray<u8>>(k);
    current = new Args(raw).nextU64().expect('amount');
  }
  const v = new Args().add<u64>(current + delta).serialize();
  Storage.set<StaticArray<u8>>(k, v);
}

function decreaseAmount(key: string, delta: u64): void {
  const k = stringToBytes(key);
  let current: u64 = 0;
  if (Storage.has<StaticArray<u8>>(k)) {
    const raw = Storage.get<StaticArray<u8>>(k);
    current = new Args(raw).nextU64().expect('amount');
  }
  let next: u64 = 0;
  if (delta < current) {
    next = current - delta;
  }
  const v = new Args().add<u64>(next).serialize();
  Storage.set<StaticArray<u8>>(k, v);
}

function nextCampaignId(): u32 {
  const next = readCounter(CAMPAIGN_COUNTER_KEY) + 1;
  writeCounter(CAMPAIGN_COUNTER_KEY, next);
  return next;
}

function saveCampaign(campaign: Campaign): void {
  campaigns.set(campaign.id.toString(), campaign);
}

function requireCampaign(id: u32): Campaign {
  const stored = campaigns.getSome(id.toString(), new Campaign());
  return stored.expect('Campaign not found');
}

function saveHoster(profile: HosterProfile): void {
  hosters.set(profile.address, profile);
}

function getHoster(address: string): HosterProfile {
  if (hosters.contains(address)) {
    return hosters.getSome(address, new HosterProfile()).expect('Hoster missing');
  }
  const profile = new HosterProfile();
  profile.address = address;
  profile.createdAt = now();
  profile.updatedAt = profile.createdAt;
  return profile;
}

function saveDeveloper(profile: DeveloperProfile): void {
  developers.set(profile.address, profile);
}

function getDeveloper(address: string): DeveloperProfile {
  if (developers.contains(address)) {
    return developers
      .getSome(address, new DeveloperProfile())
      .expect('Developer missing');
  }
  const profile = new DeveloperProfile();
  profile.address = address;
  profile.createdAt = now();
  profile.updatedAt = profile.createdAt;
  return profile;
}

function encodeCampaign(args: Args, campaign: Campaign): void {
  args
    .add<u32>(campaign.id)
    .add(campaign.owner)
    .add(campaign.title)
    .add(campaign.description)
    .add(campaign.category)
    .add(campaign.targetUrl)
    .add(campaign.creativeUri)
    .add(campaign.pricingModel)
    .add<u64>(campaign.rate)
    .add<u64>(campaign.budget)
    .add<u64>(campaign.spent)
    .add(campaign.status)
    .add<u64>(campaign.impressions)
    .add<u64>(campaign.clicks)
    .add<u64>(campaign.createdAt)
    .add<u64>(campaign.updatedAt);
}

function encodeHoster(args: Args, profile: HosterProfile): void {
  args
    .add(profile.address)
    .add(profile.name)
    .add(profile.businessName)
    .add(profile.categories)
    .add<u64>(profile.totalBudget)
    .add<u64>(profile.totalSpent)
    .add<u32>(profile.activeCampaigns)
    .add<u64>(profile.createdAt)
    .add<u64>(profile.updatedAt);
}

function encodeDeveloper(args: Args, profile: DeveloperProfile): void {
  args
    .add(profile.address)
    .add(profile.name)
    .add(profile.website)
    .add(profile.categories)
    .add<i32>(profile.reputation)
    .add<u64>(profile.impressions)
    .add<u64>(profile.clicks)
    .add<u64>(profile.pendingPayout)
    .add<u64>(profile.lifetimeEarnings)
    .add<u64>(profile.lastPayoutAt)
    .add<u32>(profile.fraudCount)
    .add<u64>(profile.createdAt)
    .add<u64>(profile.updatedAt);
}

export function constructor(binaryArgs: StaticArray<u8>): void {
  if (Storage.has(PLATFORM_KEY)) {
    return;
  }
  let platformName = 'AdNode';
  if (binaryArgs.length > 0) {
    platformName = unwrapOr(new Args(binaryArgs).nextString(), platformName);
  }
  Storage.set<string>(PLATFORM_KEY, platformName);
  Storage.set<string>(PLATFORM_OWNER_KEY, Context.caller().toString());
}

export function registerHoster(binaryArgs: StaticArray<u8>): void {
  const caller = Context.caller().toString();
  const args = new Args(binaryArgs);
  const name = args.nextString().expect('name');
  const businessName = unwrapOr(args.nextString(), '');
  const categories = unwrapOr(args.nextString(), '');

  const timestamp = now();
  const isNew = !hosters.contains(caller);
  const profile = getHoster(caller);
  profile.name = name;
  profile.businessName = businessName;
  profile.categories = categories;
  if (isNew) {
    profile.createdAt = timestamp;
  }
  profile.updatedAt = timestamp;
  saveHoster(profile);
  if (isNew) {
    increaseCounter(HOSTER_COUNTER_KEY);
  }
  generateEvent(`HOSTER_REGISTERED:${caller}`);
}

export function registerDeveloper(binaryArgs: StaticArray<u8>): void {
  const caller = Context.caller().toString();
  const args = new Args(binaryArgs);
  const name = args.nextString().expect('name');
  const website = unwrapOr(args.nextString(), '');
  const categories = unwrapOr(args.nextString(), '');

  const timestamp = now();
  const isNew = !developers.contains(caller);
  const profile = getDeveloper(caller);
  profile.name = name;
  profile.website = website;
  profile.categories = categories;
  if (isNew) {
    profile.createdAt = timestamp;
  }
  profile.updatedAt = timestamp;
  saveDeveloper(profile);
  if (isNew) {
    increaseCounter(DEVELOPER_COUNTER_KEY);
  }
  generateEvent(`DEVELOPER_REGISTERED:${caller}`);
}

export function createCampaign(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const caller = Context.caller().toString();
  assert(hosters.contains(caller), 'Register as hoster first');

  const args = new Args(binaryArgs);
  const title = args.nextString().expect('title');
  const description = args.nextString().expect('description');
  const category = args.nextString().expect('category');
  const targetUrl = args.nextString().expect('target');
  const creativeUri = args.nextString().expect('creative');
  const pricingModel = args.nextString().expect('pricing');
  const rate = args.nextU64().expect('rate');
  const budget = args.nextU64().expect('budget');

  assert(rate >= MIN_RATE, 'Rate too low');
  assert(budget >= rate, 'Budget must cover at least one unit');
  assert(Context.transferredCoins() >= budget, 'Budget must be funded');

  const id = nextCampaignId();
  const timestamp = now();
  const campaign = new Campaign(
    id,
    caller,
    title,
    description,
    category,
    targetUrl,
    creativeUri,
    pricingModel,
    rate,
    budget,
    0,
    'active',
    0,
    0,
    timestamp,
    timestamp,
  );

  saveCampaign(campaign);

  const hoster = getHoster(caller);
  hoster.totalBudget += budget;
  hoster.activeCampaigns += 1;
  hoster.updatedAt = timestamp;
  saveHoster(hoster);

  increaseCounter(ACTIVE_CAMPAIGN_COUNTER_KEY);
  increaseAmount(LOCKED_BUDGET_KEY, budget);

  generateEvent(`CAMPAIGN_CREATED:${caller}:${id.toString()}`);
  return new Args().add<u32>(id).serialize();
}

export function updateCampaignStatus(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const caller = Context.caller().toString();
  const args = new Args(binaryArgs);
  const id = args.nextU32().expect('id');
  const nextStatus = args.nextString().expect('status');

  assert(
    nextStatus == 'active' ||
      nextStatus == 'paused' ||
      nextStatus == 'stopped',
    'Invalid status',
  );

  const campaign = requireCampaign(id);
  assert(campaign.owner == caller, 'Only owner');

  const previousStatus = campaign.status;
  campaign.status = nextStatus;
  campaign.updatedAt = now();
  saveCampaign(campaign);

  const hoster = getHoster(caller);
  if (previousStatus == 'active' && nextStatus != 'active') {
    if (hoster.activeCampaigns > 0) {
      hoster.activeCampaigns -= 1;
    }
    decreaseCounter(ACTIVE_CAMPAIGN_COUNTER_KEY);
  } else if (previousStatus != 'active' && nextStatus == 'active') {
    hoster.activeCampaigns += 1;
    increaseCounter(ACTIVE_CAMPAIGN_COUNTER_KEY);
  }
  hoster.updatedAt = campaign.updatedAt;
  saveHoster(hoster);

  generateEvent(`CAMPAIGN_STATUS:${id.toString()}:${nextStatus}`);
  return new Args().add<u32>(id).serialize();
}

export function claimDeveloperEarnings(
  _binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  const caller = Context.caller().toString();
  assert(developers.contains(caller), 'Register as developer first');
  const profile = getDeveloper(caller);
  assert(profile.pendingPayout > 0, 'Nothing to claim');
  const amount = profile.pendingPayout;
  profile.pendingPayout = 0;
  profile.lastPayoutAt = now();
  profile.updatedAt = profile.lastPayoutAt;
  saveDeveloper(profile);
  decreaseAmount(LOCKED_BUDGET_KEY, amount);
  increaseAmount(SPENT_BUDGET_KEY, amount);
  generateEvent(`PAYOUT_LOGGED:${caller}:${amount.toString()}`);
  return new Args().add<u64>(amount).serialize();
}

export function triggerScheduledPayouts(
  binaryArgs: StaticArray<u8>,
): void {
  const batchSize = unwrapOr(new Args(binaryArgs).nextU32(), <u32>0);
  generateEvent(`PAYOUT_TRIGGERED:${batchSize.toString()}`);
}

export function listCampaigns(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  let offset: u32 = 0;
  let limit: u32 = 24;
  let categoryFilter = '';
  let statusFilter = '';

  if (binaryArgs.length > 0) {
    const args = new Args(binaryArgs);
    offset = unwrapOr(args.nextU32(), offset);
    limit = unwrapOr(args.nextU32(), limit);
    categoryFilter = unwrapOr(args.nextString(), '');
    statusFilter = unwrapOr(args.nextString(), '');
  }

  const total = readCounter(CAMPAIGN_COUNTER_KEY);
  const selected: Campaign[] = [];

  for (let id: u32 = 1; id <= total; id++) {
    if (selected.length >= <i32>limit) {
      break;
    }
    const key = id.toString();
    if (!campaigns.contains(key)) {
      continue;
    }
    if (id <= offset) {
      continue;
    }
    const campaign = requireCampaign(id);
    if (
      categoryFilter.length > 0 &&
      campaign.category != categoryFilter
    ) {
      continue;
    }
    if (statusFilter.length > 0 && campaign.status != statusFilter) {
      continue;
    }
    selected.push(campaign);
  }

  const encoded = new Args().add<u32>(<u32>selected.length);
  for (let i = 0; i < selected.length; i++) {
    encodeCampaign(encoded, selected[i]);
  }
  return encoded.serialize();
}

export function getCampaign(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  const args = new Args(binaryArgs);
  const id = args.nextU32().expect('id');
  const campaign = requireCampaign(id);
  const encoded = new Args();
  encodeCampaign(encoded, campaign);
  return encoded.serialize();
}

export function getHosterProfile(binaryArgs: StaticArray<u8>): StaticArray<u8> {
  let address = Context.caller().toString();
  if (binaryArgs.length > 0) {
    address = unwrapOr(new Args(binaryArgs).nextString(), address);
  }
  const profile = getHoster(address);
  const encoded = new Args();
  encodeHoster(encoded, profile);
  return encoded.serialize();
}

export function getDeveloperProfile(
  binaryArgs: StaticArray<u8>,
): StaticArray<u8> {
  let address = Context.caller().toString();
  if (binaryArgs.length > 0) {
    address = unwrapOr(new Args(binaryArgs).nextString(), address);
  }
  const profile = getDeveloper(address);
  const encoded = new Args();
  encodeDeveloper(encoded, profile);
  return encoded.serialize();
}

export function getPlatformStats(_args: StaticArray<u8>): StaticArray<u8> {
  const encoded = new Args();
  encoded
    .add<u32>(readCounter(HOSTER_COUNTER_KEY))
    .add<u32>(readCounter(DEVELOPER_COUNTER_KEY))
    .add<u32>(readCounter(CAMPAIGN_COUNTER_KEY))
    .add<u32>(readCounter(ACTIVE_CAMPAIGN_COUNTER_KEY))
    .add<u64>(((): u64 => {
      const k = stringToBytes(LOCKED_BUDGET_KEY);
      if (Storage.has<StaticArray<u8>>(k)) {
        return new Args(Storage.get<StaticArray<u8>>(k))
          .nextU64()
          .expect('locked');
      }
      return 0;
    })())
    .add<u64>(((): u64 => {
      const k = stringToBytes(SPENT_BUDGET_KEY);
      if (Storage.has<StaticArray<u8>>(k)) {
        return new Args(Storage.get<StaticArray<u8>>(k))
          .nextU64()
          .expect('spent');
      }
      return 0;
    })())
    .add<u64>(((): u64 => {
      const k = stringToBytes(IMPRESSIONS_KEY);
      if (Storage.has<StaticArray<u8>>(k)) {
        return new Args(Storage.get<StaticArray<u8>>(k))
          .nextU64()
          .expect('impressions');
      }
      return 0;
    })())
    .add<u64>(((): u64 => {
      const k = stringToBytes(CLICKS_KEY);
      if (Storage.has<StaticArray<u8>>(k)) {
        return new Args(Storage.get<StaticArray<u8>>(k))
          .nextU64()
          .expect('clicks');
      }
      return 0;
    })());
  return encoded.serialize();
}
