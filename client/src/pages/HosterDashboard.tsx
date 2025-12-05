import { useMemo, useState } from 'react';
import { motion } from 'framer-motion';
import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Badge } from '@/components/ui/badge';
import { Switch } from '@/components/ui/switch';
import { Progress } from '@/components/ui/progress';
import { StatsCard } from '@/components/StatsCard';
import { FileUpload } from '@/components/FileUpload';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription, DialogFooter } from '@/components/ui/dialog';
import { Alert, AlertDescription, AlertTitle } from '@/components/ui/alert';
import {
  DollarSign,
  Eye,
  MousePointerClick,
  TrendingUp,
  Plus,
  Pause,
  Play,
  StopCircle,
  BarChart3,
  Settings,
} from 'lucide-react';
import { useWallet } from '@/contexts/WalletContext';
import { useToast } from '@/hooks/use-toast';
import type { AdCategory, PricingModel, AdStatus } from '@shared/schema';
import {
  createCampaignOnChain,
  fetchCampaigns,
  fetchHosterProfile,
  updateCampaignStatusOnChain,
  createLocalCampaignForOwner,
  countLocalCampaigns,
} from '@/lib/massa-contract';
import { contractConfigured } from '@/lib/massa-contract';

const categories: AdCategory[] = ['Tech', 'AI', 'Crypto', 'Gaming', 'Finance', 'Education', 'Health', 'Entertainment'];

export default function HosterDashboard() {
  const { account, accountProvider } = useWallet();
  const { toast } = useToast();
  const queryClient = useQueryClient();
  const [showCreateModal, setShowCreateModal] = useState(false);
  const [selectedFile, setSelectedFile] = useState<File | null>(null);
  
  const [formData, setFormData] = useState({
    title: '',
    description: '',
    category: '' as AdCategory | '',
    targetUrl: '',
    creativeUrl: '',
    budget: '',
    pricingModel: 'cpc' as PricingModel,
    costPerClick: '',
    costPerImpression: '',
  });
  const ownerAddress = account?.address ?? '';
  const [useFreePlan, setUseFreePlan] = useState(false);

  const { data: allCampaigns = [], isFetching } = useQuery({
    queryKey: ['campaigns', 'hoster'],
    queryFn: () => fetchCampaigns({ limit: 80 }),
    staleTime: 0, // Always consider data stale to ensure fresh data
  });

  const { data: hosterProfile, isFetching: isProfileLoading } = useQuery({
    queryKey: ['hoster-profile', ownerAddress || 'demo'],
    queryFn: () => fetchHosterProfile(ownerAddress || undefined),
  });

  const campaigns = useMemo(
    () => {
      if (!ownerAddress) {
        return [];
      }
      // Filter campaigns by owner address (case-insensitive comparison)
      // Also include local campaigns if the owner matches
      return allCampaigns.filter((campaign) => {
        const campaignOwner = campaign.owner?.toLowerCase() || '';
        const userOwner = ownerAddress.toLowerCase();
        // Match exact owner address
        return campaignOwner === userOwner || 
               // Also match if it starts with local_hoster_ and matches the user's identifier
               (campaignOwner.startsWith('local_hoster_') && ownerAddress);
      });
    },
    [allCampaigns, ownerAddress],
  );

  const createCampaignMutation = useMutation({
    mutationFn: async () => {
      if (!formData.title || !formData.description || !formData.category || !formData.targetUrl) {
        throw new Error('Please fill out all required fields (title, description, category, and target URL).');
      }
      const rate =
        formData.pricingModel === 'cpc'
          ? Number(formData.costPerClick)
          : Number(formData.costPerImpression);
      if (!rate || rate <= 0) {
        throw new Error('Enter a valid rate.');
      }
      const budgetValue = Number(formData.budget);

      // Get the image data URL from the selected file if available
      let creativeUri = formData.creativeUrl || '';
      if (selectedFile) {
        // Check if the file has a dataUrl property (from FileUpload component)
        const fileWithDataUrl = selectedFile as any;
        if (fileWithDataUrl.dataUrl) {
          creativeUri = fileWithDataUrl.dataUrl;
        } else if (selectedFile.type.startsWith('image/') || selectedFile.type.startsWith('video/')) {
          // Convert to data URL if not already done
          // Note: For large files, consider compressing or using IPFS
          // For now, we'll use base64 data URLs (on-chain storage)
          try {
            const dataUrl = await new Promise<string>((resolve, reject) => {
              const reader = new FileReader();
              reader.onload = () => {
                const result = reader.result as string;
                // Check if the data URL is too large (Massa contract string limit is ~64KB)
                // If too large, we'll use a placeholder and suggest IPFS
                if (result.length > 60000) {
                  console.warn('Image is too large for on-chain storage. Consider using IPFS or compressing the image.');
                  // Still use it, but warn the user
                }
                resolve(result);
              };
              reader.onerror = reject;
              reader.readAsDataURL(selectedFile);
            });
            creativeUri = dataUrl;
          } catch (error) {
            console.warn('Failed to convert file to data URL:', error);
            creativeUri = selectedFile.name;
          }
        } else {
          creativeUri = selectedFile.name;
        }
      }

      // If user chose the free plan, enforce a 3-campaign limit per hoster
      if (useFreePlan) {
        // Use the actual owner address, or a unique identifier if not connected
        const freePlanOwner = ownerAddress || `local_hoster_${Date.now()}`;
        const existing = countLocalCampaigns(freePlanOwner);
        if (existing >= 3) {
          throw new Error('Free plan limit reached: you can create up to 3 free campaigns.');
        }
        const created = await createLocalCampaignForOwner(freePlanOwner, {
          title: formData.title,
          description: formData.description,
          category: formData.category as any,
          targetUrl: formData.targetUrl,
          creativeUri,
          pricingModel: formData.pricingModel as any,
          rate: formData.pricingModel === 'cpc' ? Number(formData.costPerClick) : Number(formData.costPerImpression),
          budget: budgetValue || 0,
        });
        return created;
      }

      if (!budgetValue || budgetValue <= 0) {
        throw new Error('Enter a valid budget in MAS.');
      }
      
      if (!accountProvider) {
        throw new Error('Please connect your wallet to create an on-chain campaign. Or use the free demo plan.');
      }
      
      await createCampaignOnChain(accountProvider, {
        title: formData.title,
        description: formData.description,
        category: formData.category as AdCategory,
        targetUrl: formData.targetUrl,
        creativeUri,
        pricingModel: formData.pricingModel,
        rate,
        budget: budgetValue,
      });
    },
    onSuccess: async () => {
      toast({
        title: 'Campaign created and activated!',
        description: 'Your campaign is now live and visible to everyone.',
      });
      setShowCreateModal(false);
      setFormData({
        title: '',
        description: '',
        category: '',
        targetUrl: '',
        creativeUrl: '',
        budget: '',
        pricingModel: 'cpc',
        costPerClick: '',
        costPerImpression: '',
      });
      setSelectedFile(null);
      setUseFreePlan(false);
      // Invalidate and immediately refetch all campaign queries to ensure immediate visibility
      queryClient.invalidateQueries({ queryKey: ['campaigns'] });
      queryClient.invalidateQueries({ queryKey: ['hoster-profile', ownerAddress] });
      
      // For on-chain campaigns, wait a moment for blockchain confirmation, then refetch
      if (!useFreePlan && contractConfigured) {
        // Wait 2 seconds for blockchain confirmation
        await new Promise(resolve => setTimeout(resolve, 2000));
      }
      
      // Force immediate refetch to show the new campaign right away
      await queryClient.refetchQueries({ queryKey: ['campaigns'] });
    },
    onError: (error: unknown) => {
      let errorMessage = 'Please try again with valid parameters.';
      if (error instanceof Error) {
        errorMessage = error.message;
        // Provide helpful messages for common errors
        if (error.message.includes('Register as hoster first')) {
          errorMessage = 'Please register as a hoster first through the onboarding page, or use the free demo plan.';
        } else if (error.message.includes('Budget must be funded')) {
          errorMessage = 'Please ensure you have enough MAS in your wallet to cover the budget.';
        } else if (error.message.includes('Rate too low')) {
          errorMessage = 'The rate you entered is too low. Please enter a higher rate.';
        }
      }
      toast({
        title: 'Unable to create campaign',
        description: errorMessage,
        variant: 'destructive',
      });
    },
  });

  const statusMutation = useMutation({
    mutationFn: ({
      id,
      status,
    }: {
      id: number;
      status: AdStatus;
    }) => updateCampaignStatusOnChain(accountProvider, id, status),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['campaigns', 'hoster'] });
    },
    onError: (error: unknown) => {
      toast({
        title: 'Unable to update campaign',
        description:
          error instanceof Error ? error.message : 'Please try again later.',
        variant: 'destructive',
      });
    },
  });

  const totalImpressions = campaigns.reduce((sum, c) => sum + c.impressions, 0);
  const totalClicks = campaigns.reduce((sum, c) => sum + c.clicks, 0);
  const totalSpent = campaigns.reduce((sum, c) => sum + c.spent, 0);
  const totalBudget = campaigns.reduce((sum, c) => sum + c.budget, 0);

  const isWalletConnected = Boolean(account);
  const ctr =
    totalImpressions === 0
      ? '0.00'
      : ((totalClicks / totalImpressions) * 100).toFixed(2);

  const getStatusColor = (status: AdStatus) => {
    switch (status) {
      case 'active': return 'bg-green-500/10 text-green-600 dark:text-green-400';
      case 'paused': return 'bg-yellow-500/10 text-yellow-600 dark:text-yellow-400';
      case 'stopped': return 'bg-red-500/10 text-red-600 dark:text-red-400';
      default: return 'bg-muted text-muted-foreground';
    }
  };

  return (
    <div className="min-h-screen bg-background">
      <div className="border-b bg-muted/30">
        <div className="mx-auto max-w-screen-2xl px-4 sm:px-6 lg:px-8 py-8">
          <div className="flex items-center justify-between">
            <div>
              <h1 className="font-display font-bold text-3xl mb-2">Hoster Dashboard</h1>
              <p className="text-muted-foreground">
                Manage your advertising campaigns and automation playbooks.
              </p>
            </div>
            <Button
              size="lg"
              onClick={() => setShowCreateModal(true)}
              className="gap-2"
              data-testid="button-create-campaign"
            >
              <Plus className="h-5 w-5" />
              Create Campaign
            </Button>
          </div>
        </div>
      </div>

      <div className="mx-auto max-w-screen-2xl px-4 sm:px-6 lg:px-8 py-8">
        <div className="space-y-4 mb-6">
          {!isWalletConnected && (
            <Alert>
              <AlertTitle>Wallet not connected</AlertTitle>
              <AlertDescription>
                Connect your Massa wallet to publish campaigns and sign transactions.
              </AlertDescription>
            </Alert>
          )}
          {!contractConfigured && (
            <Alert variant="destructive">
              <AlertTitle>Smart contract not configured</AlertTitle>
              <AlertDescription>
                Set <code>VITE_MASSA_CONTRACT_ADDRESS</code> to connect this UI to your deployed smart contract. Some UI elements may show placeholder values until configured.
              </AlertDescription>
            </Alert>
          )}
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
          <StatsCard
            title="Total Spent"
            value={`${totalSpent.toFixed(2)}`}
            suffix="MAS"
            icon={DollarSign}
          />
          <StatsCard
            title="Total Impressions"
            value={totalImpressions.toLocaleString()}
            icon={Eye}
            trend={{ value: 12.5, isPositive: true }}
          />
          <StatsCard
            title="Total Clicks"
            value={totalClicks.toLocaleString()}
            icon={MousePointerClick}
            trend={{ value: 8.3, isPositive: true }}
          />
          <StatsCard
            title="Average CTR"
            value={ctr}
            suffix="%"
            icon={TrendingUp}
          />
        </div>

        <Tabs defaultValue="campaigns" className="space-y-6">
          <TabsList>
            <TabsTrigger value="campaigns">Campaigns</TabsTrigger>
            <TabsTrigger value="analytics">Analytics</TabsTrigger>
            <TabsTrigger value="automation">Automation</TabsTrigger>
          </TabsList>

          <TabsContent value="campaigns" className="space-y-6">
            <div className="grid gap-6">
              {campaigns.map((campaign, index) => (
                <motion.div
                  key={campaign.id}
                  initial={{ opacity: 0, y: 20 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ duration: 0.3, delay: index * 0.1 }}
                >
                  <Card data-testid={`card-campaign-${campaign.id}`}>
                    <CardHeader>
                      <div className="flex items-start justify-between">
                        <div className="flex-1">
                          <CardTitle className="text-xl mb-2">{campaign.title}</CardTitle>
                          <div className="flex items-center gap-2 flex-wrap">
                            <Badge variant="secondary">{campaign.category}</Badge>
                            <Badge className={getStatusColor(campaign.status)}>
                              {campaign.status}
                            </Badge>
                            <Badge variant="outline">
                              {campaign.pricingModel.toUpperCase()}
                            </Badge>
                          </div>
                        </div>
                        <div className="flex gap-2">
                          {campaign.status === 'active' ? (
                            <Button
                              size="icon"
                              variant="outline"
                              data-testid={`button-pause-${campaign.id}`}
                              onClick={() =>
                                statusMutation.mutate({
                                  id: campaign.id,
                                  status: 'paused',
                                })
                              }
                              disabled={statusMutation.isPending}
                            >
                              <Pause className="h-4 w-4" />
                            </Button>
                          ) : (
                            <Button
                              size="icon"
                              variant="outline"
                              data-testid={`button-play-${campaign.id}`}
                              onClick={() =>
                                statusMutation.mutate({
                                  id: campaign.id,
                                  status: 'active',
                                })
                              }
                              disabled={statusMutation.isPending}
                            >
                              <Play className="h-4 w-4" />
                            </Button>
                          )}
                          <Button
                            size="icon"
                            variant="outline"
                            data-testid={`button-stop-${campaign.id}`}
                            onClick={() =>
                              statusMutation.mutate({
                                id: campaign.id,
                                status: 'stopped',
                              })
                            }
                            disabled={statusMutation.isPending}
                          >
                            <StopCircle className="h-4 w-4" />
                          </Button>
                          <Button size="icon" variant="outline" data-testid={`button-settings-${campaign.id}`}>
                            <Settings className="h-4 w-4" />
                          </Button>
                        </div>
                      </div>
                    </CardHeader>
                    <CardContent className="space-y-6">
              {isFetching && (
                <p className="text-sm text-muted-foreground">Refreshing campaigns...</p>
              )}
                      <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                        <div>
                          <p className="text-sm text-muted-foreground mb-1">Impressions</p>
                          <p className="text-2xl font-bold">{campaign.impressions.toLocaleString()}</p>
                        </div>
                        <div>
                          <p className="text-sm text-muted-foreground mb-1">Clicks</p>
                          <p className="text-2xl font-bold">{campaign.clicks.toLocaleString()}</p>
                        </div>
                        <div>
                          <p className="text-sm text-muted-foreground mb-1">CTR</p>
                          <p className="text-2xl font-bold">
                            {((campaign.clicks / campaign.impressions) * 100).toFixed(2)}%
                          </p>
                        </div>
                        <div>
                          <p className="text-sm text-muted-foreground mb-1">Cost</p>
                          <p className="text-2xl font-bold">
                            {campaign.pricingModel === 'cpc' 
                              ? `${campaign.costPerClick} MAS/click`
                              : `${(campaign.costPerImpression! * 1000).toFixed(2)} MAS/1K`
                            }
                          </p>
                        </div>
                      </div>

                      <div className="space-y-2">
                        <div className="flex justify-between text-sm">
                          <span className="text-muted-foreground">Budget Usage</span>
                          <span className="font-medium">
                            {campaign.spent.toFixed(2)} / {campaign.budget} MAS
                            ({((campaign.spent / campaign.budget) * 100).toFixed(1)}%)
                          </span>
                        </div>
                        <Progress value={(campaign.spent / campaign.budget) * 100} className="h-2" />
                      </div>
                    </CardContent>
                  </Card>
                </motion.div>
              ))}
            </div>
          </TabsContent>

          <TabsContent value="analytics">
            <Card>
              <CardHeader>
                <CardTitle className="flex items-center gap-2">
                  <BarChart3 className="h-5 w-5" />
                  Campaign Performance
                </CardTitle>
                <CardDescription>
                  Detailed analytics and insights for your campaigns
                </CardDescription>
              </CardHeader>
              <CardContent>
                <div className="h-64 flex items-center justify-center text-muted-foreground">
                  {isProfileLoading ? 'Syncing analytics...' : 'Analytics charts will be displayed here'}
                </div>
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="automation">
            <div className="grid gap-6 lg:grid-cols-2">
              <Card>
                <CardHeader>
                  <CardTitle>Autonomous Payout Schedule</CardTitle>
                  <CardDescription>
                    Queues a 24h payout to all publishers with valid traffic.
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <p className="text-sm text-muted-foreground">
                    Trigger manually or allow the autonomous smart contract to run scheduled payouts every 24 hours.
                  </p>
                  <div className="flex items-center justify-between text-sm">
                    <span className="text-muted-foreground">Next run</span>
                    <span className="font-semibold">In 12 hours</span>
                  </div>
                  <div className="flex items-center justify-between text-sm">
                    <span className="text-muted-foreground">Publishers queued</span>
                    <span className="font-semibold">42</span>
                  </div>
                  <Button asChild variant="outline" disabled={!isWalletConnected}>
                    <a href="/developer/dashboard">Trigger payout wave from developer console</a>
                  </Button>
                </CardContent>
              </Card>
              <Card>
                <CardHeader>
                  <CardTitle>Proof-of-Click Guardian</CardTitle>
                  <CardDescription>
                    Fraud heuristics inspired by the docs brief.
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-3">
                  <div className="flex items-center justify-between text-sm">
                    <span>Unique fingerprint threshold</span>
                    <Badge variant="outline">60s cooldown</Badge>
                  </div>
                  <div className="flex items-center justify-between text-sm">
                    <span>Auto-ban level</span>
                    <Badge variant="secondary">3 strikes</Badge>
                  </div>
                    <p className="text-sm text-muted-foreground">
                      These rules mirror the specification in <em>projecct</em>: unique wallet, timestamp, IP hash, and protection against repeated spam.
                    </p>
                  <Button asChild variant="link" className="px-0">
                    <a href="/innovation">Explore the Innovation Hub</a>
                  </Button>
                </CardContent>
              </Card>
            </div>
          </TabsContent>
        </Tabs>
      </div>

      <Dialog open={showCreateModal} onOpenChange={setShowCreateModal}>
        <DialogContent className="max-w-2xl max-h-[90vh] overflow-y-auto">
          <DialogHeader>
            <DialogTitle className="font-display text-2xl">Create Ad Campaign</DialogTitle>
            <DialogDescription>
              Launch a new advertising campaign on the Massa network
            </DialogDescription>
          </DialogHeader>

          <div className="space-y-6 py-4">
            <div className="space-y-2">
              <Label htmlFor="title">Campaign Title *</Label>
              <Input
                id="title"
                placeholder="Enter campaign title"
                value={formData.title}
                onChange={(e) => setFormData({ ...formData, title: e.target.value })}
                data-testid="input-campaign-title"
              />
            </div>

            <div className="space-y-2">
              <Label htmlFor="description">Description *</Label>
              <Textarea
                id="description"
                placeholder="Describe your ad campaign"
                rows={3}
                value={formData.description}
                onChange={(e) => setFormData({ ...formData, description: e.target.value })}
                data-testid="textarea-campaign-description"
              />
            </div>

            <div className="space-y-2">
              <Label htmlFor="category">Category *</Label>
              <Select
                value={formData.category}
                onValueChange={(value) => setFormData({ ...formData, category: value as AdCategory })}
              >
                <SelectTrigger data-testid="select-category">
                  <SelectValue placeholder="Select category" />
                </SelectTrigger>
                <SelectContent>
                  {categories.map((cat) => (
                    <SelectItem key={cat} value={cat}>
                      {cat}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>

            <FileUpload
              label="Ad Creative (Image or Video)"
              description="Upload your ad image or video"
              onFileSelect={setSelectedFile}
              currentFile={selectedFile || undefined}
              onRemove={() => setSelectedFile(null)}
            />

            <div className="space-y-2">
              <Label htmlFor="targetUrl">Target URL *</Label>
              <Input
                id="targetUrl"
                type="url"
                placeholder="https://yourwebsite.com"
                value={formData.targetUrl}
                onChange={(e) => setFormData({ ...formData, targetUrl: e.target.value })}
                data-testid="input-target-url"
              />
            </div>

            <div className="grid grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="budget">Budget (MAS) *</Label>
                <Input
                  id="budget"
                  type="number"
                  step="0.01"
                  placeholder="100.00"
                  value={formData.budget}
                  onChange={(e) => setFormData({ ...formData, budget: e.target.value })}
                  data-testid="input-budget"
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="pricingModel">Pricing Model *</Label>
                <Select
                  value={formData.pricingModel}
                  onValueChange={(value) => setFormData({ ...formData, pricingModel: value as PricingModel })}
                >
                  <SelectTrigger data-testid="select-pricing-model">
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="cpc">CPC (Cost Per Click)</SelectItem>
                    <SelectItem value="cpm">CPM (Cost Per 1000 Impressions)</SelectItem>
                  </SelectContent>
                </Select>
              </div>

              <div className="flex items-center gap-3">
                <div className="flex-1">
                  <p className="text-sm font-medium">Use free demo plan</p>
                  <p className="text-xs text-muted-foreground">Allow posting this campaign without escrow (limit 3 free campaigns per hoster)</p>
                </div>
                <div>
                  <Switch checked={useFreePlan} onCheckedChange={(v) => setUseFreePlan(Boolean(v))} />
                </div>
              </div>
            </div>

            {formData.pricingModel === 'cpc' ? (
              <div className="space-y-2">
                <Label htmlFor="costPerClick">Cost Per Click (MAS) *</Label>
                <Input
                  id="costPerClick"
                  type="number"
                  step="0.01"
                  placeholder="0.10"
                  value={formData.costPerClick}
                  onChange={(e) => setFormData({ ...formData, costPerClick: e.target.value })}
                  data-testid="input-cost-per-click"
                />
              </div>
            ) : (
              <div className="space-y-2">
                <Label htmlFor="costPerImpression">Cost Per 1000 Impressions (MAS) *</Label>
                <Input
                  id="costPerImpression"
                  type="number"
                  step="0.001"
                  placeholder="2.00"
                  value={formData.costPerImpression}
                  onChange={(e) => setFormData({ ...formData, costPerImpression: e.target.value })}
                  data-testid="input-cost-per-impression"
                />
              </div>
            )}
          </div>

          <DialogFooter>
            <Button variant="outline" onClick={() => setShowCreateModal(false)}>
              Cancel
            </Button>
            <Button
              onClick={() => createCampaignMutation.mutate()}
              data-testid="button-submit-campaign"
              disabled={createCampaignMutation.isPending}
            >
              {createCampaignMutation.isPending ? 'Creating...' : 'Create Campaign'}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
}
