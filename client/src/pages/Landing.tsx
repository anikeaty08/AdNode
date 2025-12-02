import { Link } from 'wouter';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';
import { motion } from 'framer-motion';
import {
  Wallet,
  Zap,
  Shield,
  TrendingUp,
  Code,
  DollarSign,
  Users,
  Eye,
  MousePointerClick,
  Sparkles,
  ArrowRight,
} from 'lucide-react';
import { useWallet } from '@/contexts/WalletContext';
import { useState } from 'react';
import { WalletConnectionModal } from '@/components/WalletConnectionModal';
import { useAuth } from '@/contexts/AuthContext';

export default function Landing() {
  const { isConnected } = useWallet();
  const { isAuthenticated, user } = useAuth();
  const [showWalletModal, setShowWalletModal] = useState(false);

  const features = [
    {
      icon: Shield,
      title: 'Decentralized & Transparent',
      description: 'All transactions on-chain with smart contracts. No intermediaries, no hidden fees.',
    },
    {
      icon: Zap,
      title: 'Autonomous Payments',
      description: 'Automatic daily payouts via smart contracts. Earnings distributed transparently.',
    },
    {
      icon: Code,
      title: 'Easy Integration',
      description: 'Copy-paste code snippets for React, Vue, Next.js, PHP, Python, and more.',
    },
    {
      icon: TrendingUp,
      title: 'Real-Time Analytics',
      description: 'Track impressions, clicks, and earnings in real-time. All data on-chain.',
    },
  ];

  const stats = [
    {
      label: 'Live campaigns',
      value: '1,234',
      icon: Sparkles,
      hint: 'Advertisers testing ideas on-chain right now.',
    },
    {
      label: 'Verified publishers',
      value: '5,678',
      icon: Users,
      hint: 'Developers who plugged AdNode into their apps.',
    },
    {
      label: 'On-chain impressions',
      value: '2.5M',
      icon: Eye,
      hint: 'Every view recorded and auditable on Massa.',
    },
    {
      label: 'Payouts sent',
      value: '125K MAS',
      icon: DollarSign,
      hint: 'Rewards paid automatically to developers.',
    },
  ];

  const howItWorks = [
    {
      step: '1',
      title: 'Connect Wallet',
      description: 'Link your Massa wallet (MassaStation or Bearby) to get started.',
      forHoster: 'Deposit funds to your campaign escrow.',
      forDeveloper: 'Receive automatic payouts to your wallet.',
    },
    {
      step: '2',
      title: 'Create or Browse',
      description: 'Choose your role on the platform.',
      forHoster: 'Create ad campaigns with budget, targeting, and creative assets.',
      forDeveloper: 'Browse available ads and select high-paying campaigns.',
    },
    {
      step: '3',
      title: 'Launch or Integrate',
      description: 'Start earning or get your message out.',
      forHoster: 'Your ads go live instantly across the network.',
      forDeveloper: 'Copy code snippet and integrate into your website.',
    },
  ];

  return (
    <>
      <div className="min-h-screen">
        <section className="py-16 md:py-24 border-b bg-background">
          <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.6 }}
              className="grid gap-10 lg:grid-cols-[minmax(0,1.2fr)_minmax(0,1fr)] items-center"
            >
              <div>
                <p className="inline-flex items-center rounded-full bg-primary/10 px-3 py-1 text-xs font-medium text-primary mb-4">
                  On‑chain ad network for builders
                </p>
                <h1 className="font-display font-bold text-4xl sm:text-5xl lg:text-6xl mb-4">
                  Run ads on Massa
                  <br />
                  <span className="text-primary">without touching web2 ad stacks</span>
                </h1>
                <p className="text-base sm:text-lg text-muted-foreground max-w-xl mb-6 leading-relaxed">
                  AdNode gives advertisers and developers one shared, simple flow:
                  fund a campaign, drop in a snippet, and let the contract handle auctions,
                  tracking, and payouts on-chain.
                </p>

                <div className="flex flex-col sm:flex-row gap-3 items-center">
                  {isAuthenticated ? (
                    <>
                      <Link href={user?.role === 'hoster' ? '/hoster/dashboard' : '/developer/dashboard'}>
                        <Button size="lg" className="text-base sm:text-lg px-6 py-4 gap-2 bg-primary">
                          Open {user?.role === 'hoster' ? 'Advertiser' : 'Developer'} space
                          <ArrowRight className="h-5 w-5" />
                        </Button>
                      </Link>
                      <Link href="/docs">
                        <Button size="lg" variant="outline" className="text-base sm:text-lg px-6 py-5 gap-2">
                          Read Docs
                        </Button>
                      </Link>
                    </>
                  ) : (
                    <>
                      <Link href="/auth/login">
                        <Button
                          size="lg"
                          className="text-base sm:text-lg px-6 py-4 gap-2 bg-primary"
                          data-testid="button-get-started"
                        >
                          <ArrowRight className="h-5 w-5" />
                          Sign in to Continue
                        </Button>
                      </Link>
                      <Button
                        size="lg"
                        variant="outline"
                        onClick={() => setShowWalletModal(true)}
                        className="text-base sm:text-lg px-6 py-4 gap-2"
                      >
                        <Wallet className="h-5 w-5" />
                        Connect Wallet
                      </Button>
                    </>
                  )}
                </div>
              </div>

              <Card className="border-muted bg-card/70 shadow-sm">
                <CardContent className="p-6 space-y-4">
                  <p className="text-sm font-medium text-muted-foreground">
                    Snapshot of what&apos;s happening on AdNode:
                  </p>
                  <div className="grid grid-cols-2 gap-4">
                    {stats.map((stat) => (
                      <div
                        key={stat.label}
                        className="rounded-lg border px-3 py-3 text-left space-y-1 hover-elevate"
                      >
                        <div className="flex items-center gap-2">
                          <stat.icon className="h-4 w-4 text-primary" />
                          <span className="text-xs uppercase tracking-wide text-muted-foreground">
                            {stat.label}
                          </span>
                        </div>
                        <p className="text-xl font-semibold">{stat.value}</p>
                        {stat.hint && (
                          <p className="text-[11px] text-muted-foreground leading-snug">
                            {stat.hint}
                          </p>
                        )}
                      </div>
                    ))}
                  </div>
                  <p className="text-[11px] text-muted-foreground">
                    Demo numbers for the UI – live deployments read directly from Massa chain data.
                  </p>
                </CardContent>
              </Card>
            </motion.div>
          </div>
        </section>

        <section className="py-20 bg-muted/30">
          <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ duration: 0.5 }}
              className="text-center mb-16"
            >
              <h2 className="font-display font-bold text-3xl sm:text-4xl mb-2">
                How AdNode works
              </h2>
              <p className="text-base sm:text-lg text-muted-foreground max-w-2xl mx-auto">
                Three simple steps to launch or monetize your ads.
              </p>
            </motion.div>

            <div className="grid md:grid-cols-3 gap-6">
              {howItWorks.map((item, index) => (
                <motion.div
                  key={index}
                  initial={{ opacity: 0, y: 20 }}
                  whileInView={{ opacity: 1, y: 0 }}
                  viewport={{ once: true }}
                  transition={{ duration: 0.5, delay: index * 0.1 }}
                >
                  <Card className="h-full transition-all duration-200">
                    <CardContent className="p-6">
                      <div className="h-16 w-16 rounded-full bg-primary/10 flex items-center justify-center mb-6">
                        <span className="text-3xl font-display font-bold text-primary">
                          {item.step}
                        </span>
                      </div>
                      <h3 className="font-semibold text-lg mb-2">{item.title}</h3>
                      <p className="text-sm text-muted-foreground mb-4 leading-relaxed">
                        {item.description}
                      </p>
                      <div className="space-y-3 pt-3 border-t">
                        <div>
                          <p className="text-sm font-semibold text-primary mb-1">For Hosters:</p>
                          <p className="text-sm text-muted-foreground">{item.forHoster}</p>
                        </div>
                        <div>
                          <p className="text-sm font-semibold text-primary mb-1">For Developers:</p>
                          <p className="text-sm text-muted-foreground">{item.forDeveloper}</p>
                        </div>
                      </div>
                    </CardContent>
                  </Card>
                </motion.div>
              ))}
            </div>
          </div>
        </section>

        <section className="py-20">
          <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ duration: 0.5 }}
              className="text-center mb-16"
            >
              <h2 className="font-display font-bold text-3xl sm:text-4xl mb-2">
                Why AdNode?
              </h2>
              <p className="text-base sm:text-lg text-muted-foreground max-w-2xl mx-auto">
                Powered by Massa\'s high-performance blockchain with clear, on-chain metrics.
              </p>
            </motion.div>

            <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
              {features.map((feature, index) => (
                <motion.div
                  key={index}
                  initial={{ opacity: 0, y: 20 }}
                  whileInView={{ opacity: 1, y: 0 }}
                  viewport={{ once: true }}
                  transition={{ duration: 0.5, delay: index * 0.1 }}
                >
                  <Card className="h-full hover-elevate transition-all duration-200">
                    <CardContent className="p-6">
                      <div className="h-12 w-12 rounded-lg bg-primary/10 flex items-center justify-center mb-4">
                        <feature.icon className="h-6 w-6 text-primary" />
                      </div>
                      <h3 className="font-semibold text-lg mb-2">{feature.title}</h3>
                      <p className="text-sm text-muted-foreground leading-relaxed">
                        {feature.description}
                      </p>
                    </CardContent>
                  </Card>
                </motion.div>
              ))}
            </div>
          </div>
        </section>

        <section className="py-20 bg-gradient-to-br from-primary/10 to-background">
          <div className="mx-auto max-w-4xl px-4 sm:px-6 lg:px-8 text-center">
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ duration: 0.5 }}
            >
              <h2 className="font-display font-bold text-4xl sm:text-5xl mb-6">
                Ready to Get Started?
              </h2>
              <p className="text-base sm:text-lg text-muted-foreground mb-6">
                Start using simple, transparent on-chain ads in just a few clicks.
              </p>
              {!isConnected && (
                <Button
                  size="lg"
                  onClick={() => setShowWalletModal(true)}
                  className="text-base sm:text-lg px-6 py-5 gap-2 bg-primary"
                >
                  <Wallet className="h-5 w-5" />
                  Connect Wallet Now
                </Button>
              )}
            </motion.div>
          </div>
        </section>
      </div>

      <WalletConnectionModal
        open={showWalletModal}
        onClose={() => setShowWalletModal(false)}
      />
    </>
  );
}
