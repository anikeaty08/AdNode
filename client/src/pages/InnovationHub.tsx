import { motion } from 'framer-motion';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { ShieldCheck, Timer, Crown, Zap, Layers3, Globe } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Link } from 'wouter';

const innovationFeatures = [
  {
    icon: ShieldCheck,
    title: 'Proof-of-Click Guardian',
    subtitle: 'Fraud prevention cockpit',
    description:
      'Monitor flagged publishers, rotating fingerprints, and autonomous blacklisting decisions enforced directly by the smart contract.',
    metrics: ['Live click audits', 'Reputation decay', 'Geo-distribution heatmap'],
  },
  {
    icon: Timer,
    title: 'Autonomous Payout Orchestrator',
    subtitle: '24h scheduled payouts',
    description:
      'Trigger or simulate payout waves, preview queued developers, and view coin requirements for the next run.',
    metrics: ['Pending MAS buffer', 'Publishers queued', 'Last run timestamp'],
  },
  {
    icon: Layers3,
    title: 'Ad NFT Marketplace',
    subtitle: 'Transferable campaign slots',
    description:
      'Each campaign is represented as an NFT containing targeting data, remaining budget, and performance history. Trade them to other advertisers.',
    metrics: ['Floor price', 'Secondary volume', 'Yield rating'],
  },
];

const roadmap = [
  {
    title: 'DeWeb snippet SDK',
    description: 'Auto-generated integration bundles for React, Vue, Next.js, and vanilla JS with built-in call-outs to record impressions/clicks.',
    status: 'Ready',
  },
  {
    title: 'AI creative scan',
    description: 'Optional LLM-powered verification to ensure creatives respect platform policies before locking budget.',
    status: 'In Review',
  },
  {
    title: 'Reputation-attached bids',
    description: 'Multiply CPC/CPM bids by the publisher score so high quality developers earn more by default.',
    status: 'Design',
  },
];

export default function InnovationHub() {
  return (
    <div className="min-h-screen bg-background">
      <div className="border-b bg-muted/30">
        <div className="mx-auto max-w-6xl px-4 sm:px-6 lg:px-8 py-12 space-y-4 text-center">
          <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }}>
            <Badge variant="outline" className="mb-4 px-4 py-1 text-sm uppercase tracking-wide">
              Innovation Hub
            </Badge>
            <h1 className="font-display text-4xl md:text-5xl font-bold mb-4">
              Advanced Controls for AdNode
            </h1>
            <p className="text-lg text-muted-foreground max-w-3xl mx-auto">
              Inspect fraud signals, launch payout waves, and explore the Ad NFT marketplace – purpose built for hackathon judges who love
              detail.
            </p>
          </motion.div>
          <div className="flex flex-wrap justify-center gap-3">
            <Link href="/hoster/dashboard">
              <Button className="gap-2">
                Go to Hoster Dashboard
                <Crown className="h-4 w-4" />
              </Button>
            </Link>
            <Link href="/developer/dashboard">
              <Button variant="outline" className="gap-2">
                Visit Developer Portal
                <Globe className="h-4 w-4" />
              </Button>
            </Link>
          </div>
        </div>
      </div>

      <div className="mx-auto max-w-6xl px-4 sm:px-6 lg:px-8 py-12 space-y-12">
        <div className="grid gap-6 md:grid-cols-3">
          {innovationFeatures.map((feature, index) => (
            <motion.div
              key={feature.title}
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ duration: 0.4, delay: index * 0.1 }}
            >
              <Card className="h-full border-primary/10">
                <CardHeader>
                  <div className="flex items-center gap-3">
                    <feature.icon className="h-10 w-10 text-primary" />
                    <div>
                      <CardTitle className="text-xl">{feature.title}</CardTitle>
                      <CardDescription>{feature.subtitle}</CardDescription>
                    </div>
                  </div>
                </CardHeader>
                <CardContent className="space-y-4">
                  <p className="text-sm text-muted-foreground">{feature.description}</p>
                  <div className="space-y-2">
                    {feature.metrics.map((metric) => (
                      <div key={metric} className="flex items-center gap-2 text-sm">
                        <Zap className="h-4 w-4 text-primary" />
                        <span>{metric}</span>
                      </div>
                    ))}
                  </div>
                </CardContent>
              </Card>
            </motion.div>
          ))}
        </div>

        <div>
          <div className="max-w-2xl mb-6">
            <h2 className="font-display text-3xl font-bold mb-2">Living Roadmap</h2>
            <p className="text-muted-foreground">
              These upgrades are already scoped with smart-contract hooks so we can keep building after the hackathon.
            </p>
          </div>
          <div className="grid gap-4 md:grid-cols-3">
            {roadmap.map((item) => (
              <Card key={item.title}>
                <CardHeader>
                  <CardTitle className="text-xl">{item.title}</CardTitle>
                  <Badge variant={item.status === 'Ready' ? 'default' : item.status === 'In Review' ? 'secondary' : 'outline'}>
                    {item.status}
                  </Badge>
                </CardHeader>
                <CardContent>
                  <p className="text-sm text-muted-foreground">{item.description}</p>
                </CardContent>
              </Card>
            ))}
          </div>
        </div>

        <Card>
          <CardHeader>
            <CardTitle>Need a live walkthrough?</CardTitle>
            <CardDescription>
              Ping us during judging – we can trigger payouts, simulate fraud, and mint Ad NFTs on the fly.
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-col gap-3 md:flex-row md:items-center md:justify-between">
            <div>
              <p className="text-sm text-muted-foreground">Contract + front-end are ready for Buildnet deployment.</p>
              <p className="text-xs text-muted-foreground">
                Run <code>npm run deploy --prefix contract</code> then update <code>VITE_MASSA_CONTRACT_ADDRESS</code>.
              </p>
            </div>
            <Button asChild>
              <Link href="/marketplace">Browse Live Campaigns</Link>
            </Button>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}


