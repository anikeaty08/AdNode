import { LucideIcon } from 'lucide-react';
import { Card, CardContent } from '@/components/ui/card';
import { motion } from 'framer-motion';

interface StatsCardProps {
  title: string;
  value: string | number;
  icon: LucideIcon;
  trend?: {
    value: number;
    isPositive: boolean;
  };
  suffix?: string;
}

export function StatsCard({ title, value, icon: Icon, trend, suffix }: StatsCardProps) {
  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.3 }}
    >
      <Card className="hover-elevate transition-all duration-200" data-testid={`card-stats-${title.toLowerCase().replace(/\s/g, '-')}`}>
        <CardContent className="p-6">
          <div className="flex items-center justify-between">
            <div className="flex-1">
              <p className="text-sm font-medium text-muted-foreground">{title}</p>
              <div className="mt-2 flex items-baseline gap-2">
                <p className="text-3xl font-bold">
                  {value}
                  {suffix && <span className="text-lg text-muted-foreground ml-1">{suffix}</span>}
                </p>
                {trend && (
                  <span
                    className={`text-sm font-medium ${
                      trend.isPositive ? 'text-green-600 dark:text-green-400' : 'text-red-600 dark:text-red-400'
                    }`}
                  >
                    {trend.isPositive ? '+' : ''}{trend.value}%
                  </span>
                )}
              </div>
            </div>
            <div className="h-12 w-12 rounded-lg bg-primary/10 flex items-center justify-center">
              <Icon className="h-6 w-6 text-primary" />
            </div>
          </div>
        </CardContent>
      </Card>
    </motion.div>
  );
}
