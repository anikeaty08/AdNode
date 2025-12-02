# AdNode – Simple, On‑Chain Advertising on Massa

AdNode is a decentralized ad network built on the Massa blockchain. It connects **advertisers (Hosters)** and **publishers (Developers)** through transparent smart contracts that handle auctions, tracking, and payouts – wrapped in a clean, sky‑blue UI that feels like a modern web app, not a blockchain dashboard.

---

## 1. Features at a Glance

- **Two clear roles**
  - **Hoster (Advertiser)**: create, fund, and manage campaigns.
  - **Developer (Publisher)**: integrate snippets and earn automatic payouts.
- **Modern landing experience**
  - Two‑column hero with AdNode value prop and live-looking stats.
  - “How it works” guide and “Why AdNode?” explanation for judges/users.
- **Dashboards**
  - **Hoster dashboard**: campaign creation, budgets, CPC/CPM, status controls, and analytics.
  - **Developer dashboard**: marketplace view, earnings, and integrated ad placements.
- **Integration‑friendly**
  - Code snippet generator for HTML/JS, React, Next.js, Vue, Python, PHP, etc.
  - Clear, copy‑paste examples in the Docs page.
- **Wallet‑aware UX**
  - MassaStation/Bearby connect & disconnect flows.
  - Address truncation, reconnect on reload, and a dedicated wallet modal.
- **Polished UI/UX**
  - Sky‑blue primary palette, light/dark themes.
  - Shadcn UI, Framer Motion animations, responsive layout.

---

## 2. Project Status

- **Phase 1 – Frontend & UX** ✅  
  AdNode branding, landing page, dashboards, navigation, and wallet flows are implemented.

- **Phase 2 – Smart Contracts & Backend** 🚧  
  AssemblyScript contract in `conrtact/assembly/contracts/main.ts`, plus a planned Node/Express + PostgreSQL backend for uploads/metadata.

- **Phase 3 – End‑to‑End Wiring & Testing** 🚧  
  Hooking the UI to the deployed contract, simulating full journeys, and polishing performance/UX.

---

## 3. Tech Stack

- **Frontend**
  - React 18 + TypeScript
  - Tailwind CSS + Shadcn UI
  - Framer Motion (animations)
  - Wouter (routing)
  - React Hook Form + Zod (forms & validation)
  - @tanstack/react-query (data fetching & caching)
  - `@massalabs/wallet-provider`, `@massalabs/massa-web3` (Massa integration)

- **Smart Contracts**
  - AssemblyScript on Massa
  - `@massalabs/massa-as-sdk` + `@massalabs/as-types`
  - `conrtact/assembly/contracts/main.ts` stores platform name **AdNode** and maintains counters/stats.

---

## 4. Project Structure

```text
.
├── client/                    # Frontend (Vite + React)
│   ├── index.html
│   └── src/
│       ├── App.tsx           # App shell & routing
│       ├── main.tsx          # React entry
│       ├── index.css         # Tailwind + design tokens (sky blue theme)
│       ├── components/
│       │   ├── Navbar.tsx
│       │   ├── ThemeToggle.tsx
│       │   ├── WalletConnectionModal.tsx
│       │   ├── AdCard.tsx
│       │   ├── StatsCard.tsx
│       │   ├── CodeSnippetGenerator.tsx
│       │   ├── FileUpload.tsx
│       │   └── ui/           # Shadcn UI primitives
│       ├── contexts/
│       │   ├── WalletContext.tsx
│       │   ├── ThemeContext.tsx
│       │   └── AuthContext.tsx
│       ├── pages/
│       │   ├── Landing.tsx
│       │   ├── Login.tsx
│       │   ├── Onboarding.tsx
│       │   ├── Marketplace.tsx
│       │   ├── HosterDashboard.tsx
│       │   ├── DeveloperDashboard.tsx
│       │   ├── InnovationHub.tsx
│       │   └── Docs.tsx
│       └── lib/
│           ├── massa-contract.ts
│           ├── queryClient.ts
│           └── utils.ts
│
├── conrtact/                  # Massa smart-contract package
│   ├── assembly/
│   │   ├── contracts/
│   │   │   └── main.ts       # AdNode registry, stats & counters
│   │   └── __tests__/        # as-pect tests
│   ├── src/
│   │   └── deploy.ts         # Deployment script (uses .env)
│   ├── README.md             # Contract-specific docs
│   └── package.json
│
├── tailwind.config.ts
├── vite.config.ts
└── README.md                 # You are here
```

---

## 5. Running the Project

### Prerequisites

- Node.js (LTS)
- npm or pnpm
- Massa wallet (MassaStation or Bearby) for full flows

### Frontend (AdNode UI)

From the project root:

```bash
cd client
npm install
npm run dev
```

Open the printed `http://localhost:xxxx` URL in your browser.

### Smart Contract (optional, on‑chain part)

```bash
cd conrtact
npm install
npm run build       # Build WASM
npm run deploy      # Deploy (requires .env + funded Massa account)
```

Configure `.env` in `conrtact/` as described in `conrtact/README.md`, then wire the deployed address into the frontend via an env var (for example `VITE_MASSA_CONTRACT_ADDRESS`).

---

## 6. Design System & UX

- **Colors**: Sky blue primary (around `hsl(204 94% 50%)`) with neutral backgrounds.
- **Fonts**: Inter (UI), Space Grotesk (headlines), JetBrains Mono (code).
- **Components**: Shadcn UI with consistent radii, elevation, and focus states.
- **Interactions**: Framer Motion animations + custom “elevate” hover system.
- **Theme**: Dark and light modes, switched from the navbar.
- **Responsiveness**: Mobile‑first; nav, hero, and dashboards adapt down to small screens.

---

## 7. Typical User Journeys

### Hoster (Advertiser)
1. Connect Massa wallet.
2. Choose **Hoster** role in onboarding.
3. Create a campaign: title, creative URI, budget, pricing model.
4. Fund the campaign escrow on‑chain.
5. Monitor impressions, clicks, and spend from the dashboard.

### Developer (Publisher)
1. Connect Massa wallet.
2. Choose **Developer** role.
3. Browse campaigns in the marketplace.
4. Copy an integration snippet from the Docs / dashboard.
5. Paste it into a website or dApp and start earning MAS.

---

## 8. Contributing / Extending

This project is built for the Massa ecosystem and is intended to be extended:

- Add new pricing models or reputation‑weighted bidding in the smart contract.
- Extend analytics with richer charts, time windows, and fraud insights.
- Add more framework snippets (Svelte, Solid, mobile SDKs) to the Docs & generator.

If you’d like to contribute, open an issue or pull request describing the change or feature you have in mind. 
 