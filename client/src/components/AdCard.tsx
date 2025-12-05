import { Card, CardContent, CardFooter, CardHeader } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Eye, MousePointerClick, DollarSign } from 'lucide-react';
import { motion } from 'framer-motion';
import type { AdCampaign } from '@shared/schema';
import { useEffect } from 'react';
import { useWallet } from '@/contexts/WalletContext';
import { contractConfigured, recordClickOnChain, recordImpressionOnChain, recordLocalClick, recordLocalImpression } from '@/lib/massa-contract';

interface AdCardProps {
  ad: AdCampaign;
  onViewDetails?: (ad: AdCampaign) => void;
  onIntegrate?: (ad: AdCampaign) => void;
  showEarnings?: boolean;
}

export function AdCard({ ad, onViewDetails, onIntegrate, showEarnings = false }: AdCardProps) {
  const paymentRate = ad.pricingModel === 'cpc' ? ad.costPerClick : ad.costPerImpression;
  const paymentLabel = ad.pricingModel === 'cpc' ? 'per click' : 'per 1000 impressions';
  const { accountProvider } = useWallet();

  useEffect(() => {
    if (contractConfigured && accountProvider) {
      recordImpressionOnChain(accountProvider, ad.id).catch(() => {});
    } else {
      recordLocalImpression(ad.id).catch(() => {});
    }
  }, [ad.id]);

  const handleCardClick = (e: React.MouseEvent) => {
    // Don't navigate if clicking on buttons or interactive elements
    const target = e.target as HTMLElement;
    if (target.closest('button') || target.closest('a')) {
      return;
    }
    // Navigate to target URL only if it's a valid external URL
    if (ad.targetUrl && (ad.targetUrl.startsWith('http://') || ad.targetUrl.startsWith('https://'))) {
      const key = `ad_click_last:${ad.id}`;
      const now = Date.now();
      const last = Number(sessionStorage.getItem(key) || 0);
      if (now - last < 2000) {
        return;
      }
      sessionStorage.setItem(key, String(now));
      const doNav = () => window.open(ad.targetUrl, '_blank', 'noopener,noreferrer');
      if (contractConfigured && accountProvider) {
        recordClickOnChain(accountProvider, ad.id).finally(doNav);
      } else {
        recordLocalClick(ad.id).finally(doNav);
      }
    } else if (onViewDetails) {
      // If no valid target URL, show details modal instead
      onViewDetails(ad);
    } else if (onIntegrate) {
      // Or show integrate modal
      onIntegrate(ad);
    }
  };

  return (
    <motion.div
      initial={{ opacity: 0, scale: 0.95 }}
      animate={{ opacity: 1, scale: 1 }}
      transition={{ duration: 0.2 }}
      whileHover={{ y: -4 }}
      className="h-full"
    >
      <Card 
        className="h-full flex flex-col hover:shadow-lg transition-all duration-200 cursor-pointer" 
        data-testid={`card-ad-${ad.id}`}
        onClick={handleCardClick}
      >
        <CardHeader className="p-0">
          {ad.imageUrl || (ad.creativeUri && (ad.creativeUri.startsWith('data:') || ad.creativeUri.match(/\.(jpg|jpeg|png|gif|webp|svg)$/i))) ? (
            <div
              onClick={(e) => {
                e.stopPropagation();
                if (ad.targetUrl && (ad.targetUrl.startsWith('http://') || ad.targetUrl.startsWith('https://'))) {
                  const key = `ad_click_last:${ad.id}`;
                  const now = Date.now();
                  const last = Number(sessionStorage.getItem(key) || 0);
                  if (now - last < 2000) {
                    return;
                  }
                  sessionStorage.setItem(key, String(now));
                  const doNav = () => window.open(ad.targetUrl, '_blank', 'noopener,noreferrer');
                  if (contractConfigured && accountProvider) {
                    recordClickOnChain(accountProvider, ad.id).finally(doNav);
                  } else {
                    recordLocalClick(ad.id).finally(doNav);
                  }
                }
              }}
              className="block aspect-video w-full overflow-hidden rounded-t-lg bg-muted cursor-pointer"
            >
              <img
                src={ad.imageUrl || ad.creativeUri}
                alt={ad.title}
                className="h-full w-full object-cover"
                onError={(e) => {
                  // Fallback if image fails to load
                  const target = e.target as HTMLImageElement;
                  target.style.display = 'none';
                  const parent = target.parentElement;
                  if (parent) {
                    parent.innerHTML = '<div class="aspect-video w-full rounded-t-lg bg-gradient-to-br from-primary/20 to-primary/5 flex items-center justify-center"><span class="text-6xl font-display font-bold text-primary/40">M</span></div>';
                  }
                }}
              />
            </div>
          ) : (
            <div
              onClick={(e) => {
                e.stopPropagation();
                if (ad.targetUrl && (ad.targetUrl.startsWith('http://') || ad.targetUrl.startsWith('https://'))) {
                  const key = `ad_click_last:${ad.id}`;
                  const now = Date.now();
                  const last = Number(sessionStorage.getItem(key) || 0);
                  if (now - last < 2000) {
                    return;
                  }
                  sessionStorage.setItem(key, String(now));
                  const doNav = () => window.open(ad.targetUrl, '_blank', 'noopener,noreferrer');
                  if (contractConfigured && accountProvider) {
                    recordClickOnChain(accountProvider, ad.id).finally(doNav);
                  } else {
                    recordLocalClick(ad.id).finally(doNav);
                  }
                }
              }}
              className="block aspect-video w-full rounded-t-lg bg-gradient-to-br from-primary/20 to-primary/5 flex items-center justify-center hover:from-primary/30 hover:to-primary/10 transition-colors cursor-pointer"
            >
              <span className="text-6xl font-display font-bold text-primary/40">M</span>
            </div>
          )}
        </CardHeader>

        <CardContent className="flex-1 p-6 space-y-4">
          <div className="flex items-start justify-between gap-2">
            <div
              onClick={(e) => {
                e.stopPropagation();
                if (ad.targetUrl && (ad.targetUrl.startsWith('http://') || ad.targetUrl.startsWith('https://'))) {
                  const key = `ad_click_last:${ad.id}`;
                  const now = Date.now();
                  const last = Number(sessionStorage.getItem(key) || 0);
                  if (now - last < 2000) {
                    return;
                  }
                  sessionStorage.setItem(key, String(now));
                  const doNav = () => window.open(ad.targetUrl, '_blank', 'noopener,noreferrer');
                  if (contractConfigured && accountProvider) {
                    recordClickOnChain(accountProvider, ad.id).finally(doNav);
                  } else {
                    recordLocalClick(ad.id).finally(doNav);
                  }
                }
              }}
              className="font-semibold text-lg leading-tight line-clamp-2 hover:text-primary transition-colors cursor-pointer"
            >
              {ad.title}
            </div>
            <Badge variant="secondary" className="shrink-0">
              {ad.category}
            </Badge>
          </div>

          <p className="text-sm text-muted-foreground line-clamp-2 leading-relaxed">
            {ad.description}
          </p>

          <div className="grid grid-cols-2 gap-4 pt-2">
            <div className="flex items-center gap-2">
              <Eye className="h-4 w-4 text-muted-foreground" />
              <div>
                <p className="text-xs text-muted-foreground">Impressions</p>
                <p className="text-sm font-semibold">{ad.impressions.toLocaleString()}</p>
              </div>
            </div>
            <div className="flex items-center gap-2">
              <MousePointerClick className="h-4 w-4 text-muted-foreground" />
              <div>
                <p className="text-xs text-muted-foreground">Clicks</p>
                <p className="text-sm font-semibold">{ad.clicks.toLocaleString()}</p>
              </div>
            </div>
          </div>

          {showEarnings && (
            <div className="pt-4 border-t">
              <div className="flex items-center gap-2">
                <DollarSign className="h-5 w-5 text-primary" />
                <div>
                  <p className="text-sm text-muted-foreground">Earn</p>
                  <p className="text-xl font-bold text-primary">
                    {paymentRate} MAS <span className="text-sm font-normal text-muted-foreground">{paymentLabel}</span>
                  </p>
                </div>
              </div>
            </div>
          )}
        </CardContent>

        <CardFooter className="p-6 pt-0 gap-2">
          {onViewDetails && (
            <Button
              variant="outline"
              className="flex-1"
              onClick={() => onViewDetails(ad)}
              data-testid={`button-view-details-${ad.id}`}
            >
              View Details
            </Button>
          )}
          {onIntegrate && (
            <Button
              className="flex-1"
              onClick={() => onIntegrate(ad)}
              data-testid={`button-integrate-${ad.id}`}
            >
              Integrate
            </Button>
          )}
        </CardFooter>
      </Card>
    </motion.div>
  );
}
