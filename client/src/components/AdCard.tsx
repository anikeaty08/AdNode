import { Card, CardContent, CardFooter, CardHeader } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Eye, MousePointerClick, DollarSign } from 'lucide-react';
import { motion } from 'framer-motion';
import type { AdCampaign } from '@shared/schema';

interface AdCardProps {
  ad: AdCampaign;
  onViewDetails?: (ad: AdCampaign) => void;
  onIntegrate?: (ad: AdCampaign) => void;
  showEarnings?: boolean;
}

export function AdCard({ ad, onViewDetails, onIntegrate, showEarnings = false }: AdCardProps) {
  const paymentRate = ad.pricingModel === 'cpc' ? ad.costPerClick : ad.costPerImpression;
  const paymentLabel = ad.pricingModel === 'cpc' ? 'per click' : 'per 1000 impressions';

  return (
    <motion.div
      initial={{ opacity: 0, scale: 0.95 }}
      animate={{ opacity: 1, scale: 1 }}
      transition={{ duration: 0.2 }}
      whileHover={{ y: -4 }}
      className="h-full"
    >
      <Card className="h-full flex flex-col hover:shadow-lg transition-all duration-200" data-testid={`card-ad-${ad.id}`}>
        <CardHeader className="p-0">
          {ad.imageUrl ? (
            <div className="aspect-video w-full overflow-hidden rounded-t-lg bg-muted">
              <img
                src={ad.imageUrl}
                alt={ad.title}
                className="h-full w-full object-cover"
              />
            </div>
          ) : (
            <div className="aspect-video w-full rounded-t-lg bg-gradient-to-br from-primary/20 to-primary/5 flex items-center justify-center">
              <span className="text-6xl font-display font-bold text-primary/40">M</span>
            </div>
          )}
        </CardHeader>

        <CardContent className="flex-1 p-6 space-y-4">
          <div className="flex items-start justify-between gap-2">
            <h3 className="font-semibold text-lg leading-tight line-clamp-2">{ad.title}</h3>
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
