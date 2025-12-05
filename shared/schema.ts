export type AdCategory = 'Tech' | 'AI' | 'Crypto' | 'Gaming' | 'Finance' | 'Education' | 'Health' | 'Entertainment';
export type PricingModel = 'cpc' | 'cpm';
export type AdStatus = 'active' | 'paused' | 'stopped';
export type UserRole = 'hoster' | 'developer';

export interface AdCampaign {
  id: number;
  owner: string;
  title: string;
  description: string;
  category: AdCategory;
  targetUrl: string;
  creativeUri: string;
  pricingModel: PricingModel;
  costPerClick: number | null;
  costPerImpression: number | null;
  budget: number;
  spent: number;
  status: AdStatus;
  impressions: number;
  clicks: number;
  createdAt: number;
  updatedAt: number;
  imageUrl?: string;
  videoUrl?: string | null;
  htmlSnippet?: string | null;
}

export interface CampaignFilters {
  offset?: number;
  limit?: number;
  category?: AdCategory;
  status?: AdStatus;
}

export interface RegisterHosterInput {
  name: string;
  businessName?: string;
  categories: string[];
}

export interface RegisterDeveloperInput {
  name: string;
  website?: string;
  categories: string[];
}

export interface CreateCampaignInput {
  title: string;
  description: string;
  category: AdCategory;
  targetUrl: string;
  creativeUri: string;
  pricingModel: PricingModel;
  rate: number;
  budget: number;
}

export interface HosterProfile {
  address: string;
  name: string;
  businessName?: string;
  categories: string[];
  totalBudget: number;
  totalSpent: number;
  activeCampaigns: number;
  createdAt: number;
  updatedAt: number;
}

export interface DeveloperProfile {
  address: string;
  name: string;
  website?: string;
  categories: string[];
  reputation: number;
  impressions: number;
  clicks: number;
  pendingPayout: number;
  lifetimeEarnings: number;
  lastPayoutAt: number;
  fraudCount: number;
  createdAt: number;
  updatedAt: number;
}

export interface PlatformStats {
  hosters: number;
  developers: number;
  campaigns: number;
  activeCampaigns: number;
  lockedBudget: number;
  spent: number;
  impressions: number;
  clicks: number;
}
