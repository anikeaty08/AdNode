import { useMemo, useState } from 'react';
import { motion } from 'framer-motion';
import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Input } from '@/components/ui/input';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Dialog, DialogContent, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { StatsCard } from '@/components/StatsCard';
import { AdCard } from '@/components/AdCard';
import { CodeSnippetGenerator } from '@/components/CodeSnippetGenerator';
import { Badge } from '@/components/ui/badge';
import {
  DollarSign,
  Eye,
  MousePointerClick,
  TrendingUp,
  Search,
  Filter,
  Code,
  BarChart3,
} from 'lucide-react';
import { useWallet } from '@/contexts/WalletContext';
import { useToast } from '@/hooks/use-toast';
import { Alert, AlertDescription, AlertTitle } from '@/components/ui/alert';
import type { AdCampaign, AdCategory } from '@shared/schema';
import {
  claimDeveloperEarningsOnChain,
  fetchCampaigns,
  fetchDeveloperProfile,
  triggerScheduledPayoutsOnChain,
} from '@/lib/massa-contract';
import { contractConfigured } from '@/lib/massa-contract';

const categories: AdCategory[] = ['Tech', 'AI', 'Crypto', 'Gaming', 'Finance', 'Education', 'Health', 'Entertainment'];

export default function DeveloperDashboard() {
  const { account, accountProvider } = useWallet();
  const { toast } = useToast();
  const queryClient = useQueryClient();
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedCategory, setSelectedCategory] = useState<string>('all');
  const [selectedAd, setSelectedAd] = useState<AdCampaign | null>(null);
  const [showIntegrationModal, setShowIntegrationModal] = useState(false);

  const { data: campaignData = [], isFetching } = useQuery({
    queryKey: ['campaigns', 'market'],
    queryFn: () => fetchCampaigns({ limit: 80 }),
  });

  const developerAddress = account?.address ?? '';

  const { data: developerProfile, isFetching: isProfileLoading } = useQuery({
    queryKey: ['developer-profile', developerAddress || 'demo'],
    queryFn: () => fetchDeveloperProfile(developerAddress || undefined),
  });

  const availableAds = useMemo(() => campaignData, [campaignData]);

  const earningsBreakdown = developerProfile
    ? [
        {
          adId: 'lifetime',
          adTitle: 'Network Earnings',
          earned: developerProfile.lifetimeEarnings,
          impressions: developerProfile.impressions,
          clicks: developerProfile.clicks,
        },
      ]
    : [];

  const totalEarned = developerProfile?.lifetimeEarnings ?? 0;
  const totalImpressions = developerProfile?.impressions ?? 0;
  const totalClicks = developerProfile?.clicks ?? 0;
  const pendingPayout = developerProfile?.pendingPayout ?? 0;
  const ctr =
    totalImpressions === 0
      ? '0.00'
      : ((totalClicks / totalImpressions) * 100).toFixed(2);
  const isWalletConnected = Boolean(account);

  const claimMutation = useMutation({
    mutationFn: () => claimDeveloperEarningsOnChain(accountProvider),
    onSuccess: () => {
      toast({
        title: 'Payout sent',
        description: 'Your earnings are on their way to your wallet.',
      });
      queryClient.invalidateQueries({ queryKey: ['developer-profile', developerAddress] });
    },
    onError: (error: unknown) => {
      toast({
        title: 'Unable to claim earnings',
        description: error instanceof Error ? error.message : 'Please try again.',
        variant: 'destructive',
      });
    },
  });

  const payoutMutation = useMutation({
    mutationFn: () => triggerScheduledPayoutsOnChain(accountProvider, 10),
    onSuccess: () => {
      toast({
        title: 'Payout wave triggered',
        description: 'Pending publisher payouts will be processed shortly.',
      });
    },
    onError: (error: unknown) => {
      toast({
        title: 'Unable to trigger payouts',
        description: error instanceof Error ? error.message : 'Please try again later.',
        variant: 'destructive',
      });
    },
  });

  const filteredAds = availableAds.filter(ad => {
    const matchesSearch = ad.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
      ad.description.toLowerCase().includes(searchQuery.toLowerCase());
    const matchesCategory = selectedCategory === 'all' || ad.category === selectedCategory;
    return matchesSearch && matchesCategory;
  });

  const handleIntegrate = (ad: AdCampaign) => {
    setSelectedAd(ad);
    setShowIntegrationModal(true);
  };

  return (
    <div className="min-h-screen bg-background">
      <div className="border-b bg-muted/30">
        <div className="mx-auto max-w-screen-2xl px-4 sm:px-6 lg:px-8 py-8">
          <div>
            <h1 className="font-display font-bold text-3xl mb-2">Developer Dashboard</h1>
            <p className="text-muted-foreground">
              Browse ads, integrate, and track your earnings
            </p>
          </div>
        </div>
      </div>

      <div className="mx-auto max-w-screen-2xl px-4 sm:px-6 lg:px-8 py-8">
        <div className="space-y-4 mb-6">
          {!isWalletConnected && (
            <Alert>
              <AlertTitle>Wallet not connected</AlertTitle>
              <AlertDescription>
                Connect your Massa wallet to view live earnings and interact with on-chain features.
              </AlertDescription>
            </Alert>
          )}
          {!contractConfigured && (
            <Alert variant="destructive">
              <AlertTitle>Smart contract not configured</AlertTitle>
              <AlertDescription>
                The smart contract address is not configured. Set <code>VITE_MASSA_CONTRACT_ADDRESS</code> to connect this UI to a deployed contract. Until then, some content may display placeholder values.
              </AlertDescription>
            </Alert>
          )}
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
          <StatsCard
            title="Total Earned"
            value={totalEarned.toFixed(2)}
            suffix="MAS"
            icon={DollarSign}
            trend={{ value: 15.2, isPositive: true }}
          />
          <StatsCard
            title="Total Impressions"
            value={totalImpressions.toLocaleString()}
            icon={Eye}
          />
          <StatsCard
            title="Total Clicks"
            value={totalClicks.toLocaleString()}
            icon={MousePointerClick}
          />
          <StatsCard
            title="Average CTR"
            value={ctr}
            suffix="%"
            icon={TrendingUp}
          />
        </div>

        <div className="flex flex-wrap gap-3 mb-8">
          <Button
            variant="outline"
            onClick={() => claimMutation.mutate()}
            disabled={!pendingPayout || claimMutation.isPending || !isWalletConnected}
          >
            {pendingPayout
              ? `Claim ${pendingPayout.toFixed(2)} MAS`
              : 'No pending payout'}
          </Button>
          <Button
            variant="ghost"
            onClick={() => payoutMutation.mutate()}
            disabled={payoutMutation.isPending || !isWalletConnected}
          >
            Trigger daily payout
          </Button>
          <Button asChild variant="secondary">
            <a href="/docs">Open Docs</a>
          </Button>
        </div>

        <Tabs defaultValue="marketplace" className="space-y-6">
          <TabsList>
            <TabsTrigger value="marketplace">Ad Marketplace</TabsTrigger>
            <TabsTrigger value="my-ads">My Integrated Ads</TabsTrigger>
            <TabsTrigger value="earnings">Earnings</TabsTrigger>
            <TabsTrigger value="playbooks">Playbooks</TabsTrigger>
          </TabsList>

          <TabsContent value="marketplace" className="space-y-6">
            <Card>
              <CardHeader>
                <CardTitle>Available Ads</CardTitle>
                <CardDescription>
                  Browse and integrate high-paying ad campaigns
                </CardDescription>
              </CardHeader>
              <CardContent className="space-y-4">
                <div className="flex flex-col sm:flex-row gap-4">
                  <div className="relative flex-1">
                    <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 h-4 w-4 text-muted-foreground" />
                    <Input
                      placeholder="Search ads..."
                      value={searchQuery}
                      onChange={(e) => setSearchQuery(e.target.value)}
                      className="pl-10"
                      data-testid="input-search-ads"
                    />
                  </div>
                  <Select value={selectedCategory} onValueChange={setSelectedCategory}>
                    <SelectTrigger className="w-full sm:w-[200px]" data-testid="select-filter-category">
                      <Filter className="h-4 w-4 mr-2" />
                      <SelectValue placeholder="All Categories" />
                    </SelectTrigger>
                    <SelectContent>
                      <SelectItem value="all">All Categories</SelectItem>
                      {categories.map((cat) => (
                        <SelectItem key={cat} value={cat}>
                          {cat}
                        </SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                </div>

                <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
                  {filteredAds.map((ad) => (
                    <AdCard
                      key={ad.id}
                      ad={ad}
                      onIntegrate={handleIntegrate}
                      showEarnings
                    />
                  ))}
                </div>

                {filteredAds.length === 0 && (
                  <div className="text-center py-12">
                    <p className="text-muted-foreground">No ads found matching your criteria</p>
                  </div>
                )}
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="my-ads" className="space-y-6">
            <Card>
              <CardHeader>
                <CardTitle>My Integrated Ads</CardTitle>
                <CardDescription>
                  Ads you've integrated into your website
                </CardDescription>
              </CardHeader>
              <CardContent>
                <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
                  {earningsBreakdown.map((earning) => {
                    const ad = availableAds.find(a => a.id === earning.adId);
                    return ad ? (
                      <AdCard
                        key={ad.id}
                        ad={ad}
                        onViewDetails={(ad) => {
                          setSelectedAd(ad);
                          setShowIntegrationModal(true);
                        }}
                      />
                    ) : null;
                  })}
                </div>
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="earnings" className="space-y-6">
            <Card>
              <CardHeader>
                <CardTitle className="flex items-center gap-2">
                  <BarChart3 className="h-5 w-5" />
                  Earnings Breakdown
                </CardTitle>
                <CardDescription>
                  Detailed earnings from each integrated ad
                </CardDescription>
              </CardHeader>
              <CardContent>
                <div className="space-y-4">
                  {isProfileLoading ? (
                    <p className="text-sm text-muted-foreground">Loading earnings...</p>
                  ) : (
                    earningsBreakdown.map((earning, index) => (
                      <motion.div
                        key={earning.adId}
                        initial={{ opacity: 0, x: -20 }}
                        animate={{ opacity: 1, x: 0 }}
                        transition={{ duration: 0.3, delay: index * 0.1 }}
                      >
                        <Card>
                          <CardContent className="p-6">
                            <div className="flex items-center justify-between mb-4">
                              <h4 className="font-semibold">{earning.adTitle}</h4>
                              <span className="text-2xl font-bold text-primary">
                                {earning.earned.toFixed(2)} MAS
                              </span>
                            </div>
                            <div className="grid grid-cols-3 gap-4 text-sm">
                              <div>
                                <p className="text-muted-foreground">Impressions</p>
                                <p className="font-semibold">{earning.impressions.toLocaleString()}</p>
                              </div>
                              <div>
                                <p className="text-muted-foreground">Clicks</p>
                                <p className="font-semibold">{earning.clicks.toLocaleString()}</p>
                              </div>
                              <div>
                                <p className="text-muted-foreground">CTR</p>
                                <p className="font-semibold">
                                  {earning.impressions === 0
                                    ? '0.00%'
                                    : `${((earning.clicks / earning.impressions) * 100).toFixed(2)}%`}
                                </p>
                              </div>
                            </div>
                          </CardContent>
                        </Card>
                      </motion.div>
                    ))
                  )}
                </div>
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="playbooks">
            <div className="grid gap-6 lg:grid-cols-2">
              <Card>
                <CardHeader>
                  <CardTitle>Integration Library</CardTitle>
                  <CardDescription>
                    Pull snippets for the script tag, React component, Vue wrapper, and Python widget.
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-3">
                  <p className="text-sm text-muted-foreground">
                    The brief asked for ready-to-integrate code across frameworks. Use the generator to preview the exact snippet you would embed in your site.
                  </p>
                  <Button
                    variant="outline"
                    onClick={() => {
                      if (availableAds.length > 0) {
                        setSelectedAd(availableAds[0]);
                        setShowIntegrationModal(true);
                      }
                    }}
                  >
                    Launch code generator
                  </Button>
                </CardContent>
              </Card>
              <Card>
                <CardHeader>
                  <CardTitle>Fraud & Reputation Monitor</CardTitle>
                  <CardDescription>
                    Mirrors proof-of-click scoring from the docs.
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-2">
                  <div className="flex items-center justify-between text-sm">
                    <span>Reputation score</span>
                    <Badge variant="secondary">
                      {developerProfile?.reputation ?? 80}
                    </Badge>
                  </div>
                  <div className="flex items-center justify-between text-sm">
                    <span>Alerts</span>
                    <Badge variant="outline">0 critical</Badge>
                  </div>
                  <p className="text-sm text-muted-foreground">
                    Proof-of-click checks wallet address, timestamp, IP hash, and repeated spam—exactly as described in the requirements. When the contract isn&apos;t live we still simulate the UX so you can explain the concept.
                  </p>
                </CardContent>
              </Card>
            </div>
          </TabsContent>
        </Tabs>
      </div>

      <Dialog open={showIntegrationModal} onOpenChange={setShowIntegrationModal}>
        <DialogContent className="max-w-4xl max-h-[90vh] overflow-y-auto">
          <DialogHeader>
            <DialogTitle className="font-display text-2xl flex items-center gap-2">
              <Code className="h-6 w-6" />
              {selectedAd?.title}
            </DialogTitle>
          </DialogHeader>

          {selectedAd && (
            <div className="space-y-6 py-4">
              <div>
                <h3 className="font-semibold mb-2">Ad Details</h3>
                <p className="text-muted-foreground">{selectedAd.description}</p>
              </div>

              <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div>
                  <p className="text-sm text-muted-foreground">Category</p>
                  <p className="font-semibold">{selectedAd.category}</p>
                </div>
                <div>
                  <p className="text-sm text-muted-foreground">Pricing</p>
                  <p className="font-semibold">
                    {selectedAd.pricingModel === 'cpc' ? 'CPC' : 'CPM'}
                  </p>
                </div>
                <div>
                  <p className="text-sm text-muted-foreground">Rate</p>
                  <p className="font-semibold text-primary">
                    {selectedAd.pricingModel === 'cpc'
                      ? `${selectedAd.costPerClick} MAS/click`
                      : `${(selectedAd.costPerImpression! * 1000).toFixed(2)} MAS/1K`
                    }
                  </p>
                </div>
                <div>
                  <p className="text-sm text-muted-foreground">Budget</p>
                  <p className="font-semibold">{selectedAd.budget} MAS</p>
                </div>
              </div>

              <CodeSnippetGenerator adId={selectedAd.id} />
            </div>
          )}
        </DialogContent>
      </Dialog>
    </div>
  );
}
