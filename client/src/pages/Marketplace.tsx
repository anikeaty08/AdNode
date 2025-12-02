import { useMemo, useState } from 'react';
import { useQuery } from '@tanstack/react-query';
import { motion } from 'framer-motion';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { AdCard } from '@/components/AdCard';
import { Dialog, DialogContent, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { CodeSnippetGenerator } from '@/components/CodeSnippetGenerator';
import { Search, Filter, Code } from 'lucide-react';
import type { AdCampaign, AdCategory } from '@shared/schema';
import { fetchCampaigns } from '@/lib/massa-contract';
import { contractConfigured } from '@/lib/massa-contract';
import { Alert, AlertDescription } from '@/components/ui/alert';

const categories: AdCategory[] = ['Tech', 'AI', 'Crypto', 'Gaming', 'Finance', 'Education', 'Health', 'Entertainment'];

export default function Marketplace() {
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedCategory, setSelectedCategory] = useState<string>('all');
  const [selectedAd, setSelectedAd] = useState<AdCampaign | null>(null);
  const [showIntegrationModal, setShowIntegrationModal] = useState(false);

  const { data: allAds = [], isFetching } = useQuery({
    queryKey: ['campaigns', 'marketplace'],
    queryFn: () => fetchCampaigns({ limit: 80, status: 'active' }),
  });

  const filteredAds = useMemo(() => {
    return allAds.filter((ad) => {
      const matchesSearch =
        ad.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
        ad.description.toLowerCase().includes(searchQuery.toLowerCase());
      const matchesCategory =
        selectedCategory === 'all' || ad.category === selectedCategory;
      return matchesSearch && matchesCategory;
    });
  }, [allAds, searchQuery, selectedCategory]);

  const handleIntegrate = (ad: AdCampaign) => {
    setSelectedAd(ad);
    setShowIntegrationModal(true);
  };

  return (
    <>
      <div className="min-h-screen bg-background">
        <div className="border-b bg-muted/30">
          <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 py-12">
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.5 }}
              className="text-center"
            >
              <h1 className="font-display font-bold text-4xl sm:text-5xl mb-4">
                Ad Marketplace
              </h1>
              <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
                Browse available ad campaigns and integrate them into your website
              </p>
            </motion.div>
          </div>
        </div>

        <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 py-12">
          {!contractConfigured && (
            <Alert className="mb-6">
              <AlertDescription>
                Smart contract not configured – showing curated campaigns so you can still explore the flow.
              </AlertDescription>
            </Alert>
          )}
          <Card>
            <CardHeader>
              <CardTitle>Available Campaigns</CardTitle>
              <CardDescription>
                Find the perfect ads for your audience
              </CardDescription>
            </CardHeader>
            <CardContent className="space-y-6">
              {isFetching && (
                <p className="text-sm text-muted-foreground">
                  Loading on-chain campaigns...
                </p>
              )}
              <div className="flex flex-col sm:flex-row gap-4">
                <div className="relative flex-1">
                  <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 h-4 w-4 text-muted-foreground" />
                  <Input
                    placeholder="Search ads..."
                    value={searchQuery}
                    onChange={(e) => setSearchQuery(e.target.value)}
                    className="pl-10"
                    data-testid="input-search-marketplace"
                  />
                </div>
                <Select value={selectedCategory} onValueChange={setSelectedCategory}>
                  <SelectTrigger className="w-full sm:w-[200px]" data-testid="select-filter-marketplace">
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
        </div>
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
    </>
  );
}
