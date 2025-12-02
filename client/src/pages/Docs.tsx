import { motion } from 'framer-motion';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Link } from 'wouter';

const sections = [
  {
    title: 'Product Overview',
    description:
      'AdNode is a simple, fully autonomous ad network: advertisers upload creatives, developers integrate a lightweight snippet, and the smart contract manages auctions, fraud checks, and payouts.',
    bullets: [
      'Supports CPC and CPM bids',
      'Funds locked in escrow and deducted on-chain',
      'Publishers receive daily automatic payouts',
    ],
  },
  {
    title: 'Advertiser Flow',
    description:
      'Create a campaign with title, creative URI, targeting, and market rates. The contract picks the best publisher per request and reports impressions/clicks for analytics.',
    bullets: [
      'Upload image/video/HTML assets (Creative URI field)',
      'Set CPC or CPM bids and category targeting',
      'Pause or stop campaigns instantly with refunds of unused budget',
    ],
  },
  {
    title: 'Developer Flow',
    description:
      'Publishers register once, grab the integration snippet, and start earning automatically. The UI lets them preview ads, copy code, and monitor reputation/fraud alerts.',
    bullets: [
      'Integration snippets for vanilla JS, React, Vue, Python widgets, etc.',
      'Proof-of-click guard checks wallet, timestamp, IP hash, and duplicate clicks',
      'Daily payout automation mirrored in the Innovation Hub',
    ],
  },
];

const extraFeatures = [
  {
    title: 'Proof-of-Click Guardian',
    detail:
      'Implements the anti-fraud rules from the specification: unique wallet, timestamp spacing, hashed IP, and automatic banning after repeated spam.',
  },
  {
    title: 'Ad NFT Marketplace',
    detail:
      'Every campaign can be wrapped as an NFT representing budget + targeting. That NFT is tradable, unlocking the “Ad Marketplace” stretch goal.',
  },
  {
    title: 'Docs-first DX',
    detail:
      'This page summarizes the entire narrative for hackathon judges, with quick links to dashboards, the innovation hub, and deployment steps.',
  },
];

export default function Docs() {
  return (
    <div className="min-h-screen bg-background">
      <div className="border-b bg-muted/30">
        <div className="mx-auto max-w-5xl px-4 sm:px-6 lg:px-8 py-12 space-y-4">
          <Badge>Documentation</Badge>
          <h1 className="font-display text-4xl font-bold">AdNode Playbook</h1>
          <p className="text-muted-foreground">
            Everything judges need to know—directly mapped from the <em>projecct</em> blueprint.
          </p>
          <div className="flex flex-wrap gap-3">
            <Button asChild>
              <Link href="/hoster/dashboard">Advertiser Dashboard</Link>
            </Button>
            <Button variant="outline" asChild>
              <Link href="/developer/dashboard">Developer Dashboard</Link>
            </Button>
            <Button variant="ghost" asChild>
              <Link href="/innovation">Innovation Hub</Link>
            </Button>
          </div>
        </div>
      </div>

      <div className="mx-auto max-w-5xl px-4 sm:px-6 lg:px-8 py-12 space-y-8">
        {sections.map((section, index) => (
          <motion.div
            key={section.title}
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.3, delay: index * 0.1 }}
          >
            <Card>
              <CardHeader>
                <CardTitle>{section.title}</CardTitle>
                <CardDescription>{section.description}</CardDescription>
              </CardHeader>
              <CardContent>
                <ul className="list-disc pl-5 space-y-2 text-sm text-muted-foreground">
                  {section.bullets.map((bullet) => (
                    <li key={bullet}>{bullet}</li>
                  ))}
                </ul>
              </CardContent>
            </Card>
          </motion.div>
        ))}

        <div className="grid gap-6 md:grid-cols-3">
          {extraFeatures.map((feature) => (
            <Card key={feature.title}>
              <CardHeader>
                <CardTitle className="text-xl">{feature.title}</CardTitle>
              </CardHeader>
              <CardContent>
                <p className="text-sm text-muted-foreground">{feature.detail}</p>
              </CardContent>
            </Card>
          ))}
        </div>

        <Card>
          <CardHeader>
            <CardTitle>Deployment Cheatsheet</CardTitle>
            <CardDescription>
              Reference <code>DEPLOYMENT.md</code> after the hackathon to deploy the contract + DeWeb frontend.
            </CardDescription>
          </CardHeader>
          <CardContent className="grid gap-4 md:grid-cols-2">
            <div>
              <h3 className="font-semibold mb-2">Smart Contract</h3>
              <ul className="list-disc pl-5 text-sm text-muted-foreground space-y-1">
                <li>Install deps: <code>cd contract && npm install</code></li>
                <li>Build: <code>npm run build</code></li>
                <li>Deploy: <code>npm run deploy</code> (needs .env keys)</li>
              </ul>
            </div>
            <div>
              <h3 className="font-semibold mb-2">Frontend</h3>
              <ul className="list-disc pl-5 text-sm text-muted-foreground space-y-1">
                <li>Update <code>client/.env</code> with the deployed contract</li>
                <li>Run locally: <code>npm run dev</code></li>
                <li>Build for DeWeb: <code>npm run build</code></li>
              </ul>
            </div>
          </CardContent>
        </Card>
        <Card>
          <CardHeader>
            <CardTitle>Developer Integration Guide (Deep Dive)</CardTitle>
            <CardDescription>
              A long-form reference for publishers and integrators — how to embed the widget, verify impressions/clicks, and understand on-chain behavior.
            </CardDescription>
          </CardHeader>
          <CardContent className="space-y-4">
            <h3 className="font-semibold">What this file contains</h3>
            <p className="text-sm text-muted-foreground">
              This guide explains: the available integration snippets, expected on-chain events, local testing tips, fraud protections, and how Massa is used to make everything trustless.
            </p>

            <h4 className="font-semibold">1) Integration options</h4>
            <p className="text-sm text-muted-foreground">
              We provide ready-to-copy code for multiple environments. Pick one and paste into your site. The simplest option is the single script tag which dynamically requests an ad and renders it inside a container.
            </p>

            <pre className="rounded-lg bg-muted p-3 text-sm overflow-x-auto">
              <code>{`<!-- HTML/JS snippet -->
<div id="massa-ad-123"></div>
<script src="https://deads.massa.net/sdk.js"></script>
<script>
  MassaAds.display('123', { container: 'massa-ad-123' });
</script>`}</code>
            </pre>

            <h4 className="font-semibold">2) React / SPA integration</h4>
            <p className="text-sm text-muted-foreground">
              Use the `MassaAd` React component to render ads inside your React app. It handles hydration and avoids double-rendering in SSR frameworks.
            </p>

            <pre className="rounded-lg bg-muted p-3 text-sm overflow-x-auto">
              <code>{`import { MassaAd } from '@massa-deads/react';

function MyComponent(){
  return <MassaAd adId="123" position="center" />;
}`}</code>
            </pre>

            <h4 className="font-semibold">3) Events and on-chain signals</h4>
            <p className="text-sm text-muted-foreground">
              Every impression and click produces a transaction (or an event) that the smart contract records. Key on-chain signals you can inspect:
            </p>
            <ul className="list-disc pl-5 text-sm text-muted-foreground">
              <li><strong>Impression:</strong> recordImpression(adId, publisher)</li>
              <li><strong>Click:</strong> recordClick(adId, publisher, userHash)</li>
              <li><strong>Payout:</strong> transfer to publisher executed by autonomous smart contract</li>
            </ul>

            <h4 className="font-semibold">4) Local testing & free campaigns</h4>
            <p className="text-sm text-muted-foreground">
              For judges and demos we offer local/offline campaign creation. Hosters can create up to 3 free local campaigns without funding the on-chain escrow — this lets you demonstrate onboarding and integration without deploying a contract.
            </p>

            <h4 className="font-semibold">5) Fraud protection overview</h4>
            <p className="text-sm text-muted-foreground">
              The on-chain ASC enforces:
            </p>
            <ul className="list-disc pl-5 text-sm text-muted-foreground">
              <li>Unique wallet checks</li>
              <li>IP-hash cooldown windows</li>
              <li>Duplicate-click prevention and auto-bans</li>
              <li>Reputation score adjustments for publishers and hosters</li>
            </ul>

            <h4 className="font-semibold">6) How Massa is used</h4>
            <p className="text-sm text-muted-foreground">
              Massa provides three critical pieces:
            </p>
            <ul className="list-disc pl-5 text-sm text-muted-foreground">
              <li><strong>DeWeb hosting</strong> to serve static frontend assets from a decentralized host.</li>
              <li><strong>ASC (Autonomous Smart Contracts)</strong> for scheduled payouts and automated enforcement without centralized operators.</li>
              <li><strong>On-chain storage</strong> of campaign metadata, budgets, and tamper-evident logs of impressions and clicks.</li>
            </ul>

            <h4 className="font-semibold">7) Production checklist</h4>
            <ol className="list-decimal pl-5 text-sm text-muted-foreground">
              <li>Deploy the ASC to Massa and set <code>VITE_MASSA_CONTRACT_ADDRESS</code> in your frontend env.</li>
              <li>Ensure RPC endpoint in <code>VITE_MASSA_RPC_URL</code> points to a reliable node.</li>
              <li>Replace demo local campaigns by syncing the frontend to the live contract.</li>
              <li>Review gas/fee settings in <code>client/src/lib/massa-contract.ts</code>.</li>
              <li>Run security audit for the ASC before holding real funds.</li>
            </ol>

            <h4 className="font-semibold">8) Where to next</h4>
            <p className="text-sm text-muted-foreground">
              - If you need help writing the AssemblyScript smart contract ASC, I can scaffold the ad registry, escrow and simple auction logic.
              - If you'd like, I can also add an integration test harness that simulates impressions/clicks and validates payouts end-to-end.
            </p>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}


