import type {
  AdCampaign,
  DeveloperProfile,
  HosterProfile,
  PlatformStats,
} from '@shared/schema';

const now = Date.now();

export const sampleCampaigns: AdCampaign[] = [
  {
    id: 1,
    owner: 'AU_SampleAdvertiser',
    title: 'Premium Crypto Trading Platform',
    description:
      'Zero-fee trading with deep liquidity, built on Massa. Connect wallet and start executing instantly.',
    category: 'Crypto',
    imageUrl: undefined,
    videoUrl: null,
    htmlSnippet: null,
    targetUrl: 'https://example.com/crypto-trading',
    creativeUri: 'ipfs://crypto-banner.png',
    pricingModel: 'cpc',
    costPerClick: 0.15,
    costPerImpression: null,
    budget: 1_200,
    spent: 480,
    status: 'active',
    impressions: 152_300,
    clicks: 3_742,
    createdAt: now - 1000 * 60 * 60 * 24 * 7,
    updatedAt: now,
  },
  {
    id: 2,
    owner: 'AU_AIAnalytics',
    title: 'AI-Powered Analytics for Growth',
    description:
      'Turn on-chain interactions into dashboards. Includes anomaly detection for ad fraud.',
    category: 'AI',
    imageUrl: undefined,
    videoUrl: null,
    htmlSnippet: null,
    targetUrl: 'https://example.com/ai-analytics',
    creativeUri: 'ipfs://ai-dashboard.png',
    pricingModel: 'cpm',
    costPerClick: null,
    costPerImpression: 0.0025,
    budget: 600,
    spent: 220,
    status: 'active',
    impressions: 98_120,
    clicks: 1_108,
    createdAt: now - 1000 * 60 * 60 * 24 * 4,
    updatedAt: now,
  },
  {
    id: 3,
    owner: 'AU_GamingCollective',
    title: 'Play-to-Earn Multiverse',
    description:
      'Bring users to your game hub with provable fairness and NFT drops every hour.',
    category: 'Gaming',
    imageUrl: undefined,
    videoUrl: null,
    htmlSnippet: null,
    targetUrl: 'https://example.com/p2e',
    creativeUri: 'ipfs://p2e-card.png',
    pricingModel: 'cpc',
    costPerClick: 0.12,
    costPerImpression: null,
    budget: 900,
    spent: 300,
    status: 'paused',
    impressions: 76_890,
    clicks: 2_041,
    createdAt: now - 1000 * 60 * 60 * 24 * 10,
    updatedAt: now - 1000 * 60 * 60 * 12,
  },
];

export const sampleHoster: HosterProfile = {
  address: 'AU_SampleAdvertiser',
  name: 'DeAds Pioneer Studios',
  businessName: 'Pioneer Labs',
  categories: ['Tech', 'AI', 'Crypto'],
  totalBudget: 2_700,
  totalSpent: 1_000,
  activeCampaigns: 2,
  createdAt: now - 1000 * 60 * 60 * 24 * 14,
  updatedAt: now,
};

export const sampleDeveloper: DeveloperProfile = {
  address: 'AU_SamplePublisher',
  name: 'Orbit Media Collective',
  website: 'https://orbit.media',
  categories: ['Tech', 'Gaming', 'Education'],
  reputation: 88,
  impressions: 210_340,
  clicks: 5_320,
  pendingPayout: 380,
  lifetimeEarnings: 2_540,
  lastPayoutAt: now - 1000 * 60 * 60 * 22,
  fraudCount: 1,
  createdAt: now - 1000 * 60 * 60 * 24 * 30,
  updatedAt: now,
};

export const sampleStats: PlatformStats = {
  hosters: 128,
  developers: 412,
  campaigns: 362,
  activeCampaigns: 189,
  lockedBudget: 48_920,
  spent: 12_780,
  impressions: 4_890_230,
  clicks: 187_430,
};


