# Massa DeAds - Decentralized Advertising Platform

## Overview

Massa DeAds is a decentralized advertising platform built on the Massa blockchain. It connects advertisers (Hosters) with publishers (Developers) through transparent, on-chain smart contracts for autonomous payments, fraud-free ad delivery, and real-time analytics.

## Project Status

**Last Updated**: November 23, 2025

### Current Phase: Frontend Implementation Complete ✅

**Phase 1 - Schema & Frontend**: ✅ Complete
- All data schemas defined in `shared/schema.ts`
- Design system configured (Inter + Space Grotesk fonts, purple primary color)
- Complete component library built with Shadcn UI
- All pages implemented with exceptional visual quality
- Massa wallet integration (MassaStation/Bearby support)
- Dark/Light theme support
- Smooth animations with Framer Motion

**Phase 2 - Smart Contracts & Backend**: Pending
- Smart contracts in AssemblyScript for Massa blockchain
- Backend API for file uploads and data persistence
- Database integration

**Phase 3 - Integration & Testing**: Pending
- Connect frontend to blockchain
- End-to-end testing
- Final polish and optimizations

## Architecture

### Technology Stack

**Frontend:**
- React 18 with TypeScript
- Tailwind CSS + Shadcn UI components
- Framer Motion for animations
- @massalabs/wallet-provider for Massa wallet connectivity
- @massalabs/massa-web3 for blockchain interactions
- Wouter for routing
- React Hook Form + Zod for form validation
- Prism.js for code syntax highlighting

**Backend (Planned):**
- Express.js
- PostgreSQL database
- Multer for file uploads

**Smart Contracts (Planned):**
- AssemblyScript for Massa smart contracts
- Massa AS-SDK for contract development
- Autonomous Smart Contracts (ASC) for automated payouts

### Project Structure

```
client/
├── src/
│   ├── components/          # Reusable UI components
│   │   ├── ui/             # Shadcn UI primitives
│   │   ├── Navbar.tsx      # Main navigation with wallet connection
│   │   ├── ThemeToggle.tsx # Dark/light mode toggle
│   │   ├── WalletConnectionModal.tsx
│   │   ├── StatsCard.tsx   # Analytics display cards
│   │   ├── AdCard.tsx      # Ad campaign cards
│   │   ├── CodeSnippetGenerator.tsx  # Multi-framework code snippets
│   │   └── FileUpload.tsx  # Drag-drop file upload
│   ├── contexts/
│   │   ├── WalletContext.tsx   # Massa wallet state management
│   │   └── ThemeContext.tsx    # Theme (dark/light) management
│   ├── pages/
│   │   ├── Landing.tsx         # Landing page with hero & features
│   │   ├── Onboarding.tsx      # User onboarding flow
│   │   ├── Marketplace.tsx     # Public ad marketplace
│   │   ├── HosterDashboard.tsx # Advertiser dashboard
│   │   └── DeveloperDashboard.tsx  # Publisher dashboard
│   ├── lib/
│   │   ├── queryClient.ts  # React Query configuration
│   │   └── utils.ts        # Utility functions
│   └── App.tsx             # Main app with routing
├── index.html
└── index.css              # Tailwind + custom styles

 

 
smart-contract/ (Planned)
└── assembly/              # AssemblyScript smart contracts
```

## Key Features Implemented

### User Roles
1. **Hoster (Advertiser)** - Create and manage ad campaigns
2. **Developer (Publisher)** - Integrate ads and earn revenue

### Pages & Features

**Landing Page:**
- Hero section with gradient background
- Platform statistics (campaigns, publishers, impressions, earnings)
- How It Works section (3-step guide)
- Feature highlights with icons
- CTA sections with wallet connection

**Onboarding Flow:**
- Role selection (Hoster vs Developer)
- Profile creation form with validation
- Category selection with badges
- Smooth page transitions

**Hoster Dashboard:**
- Campaign creation modal with file upload
- Budget and pricing model configuration (CPC/CPM)
- Real-time analytics (impressions, clicks, CTR, spend)
- Campaign management (pause/resume/stop)
- Budget consumption progress bars
- Category filtering

**Developer Dashboard:**
- Ad marketplace with search and filters
- Earnings tracker with detailed breakdown
- Integrated ads management
- Code snippet generator (HTML/JS, React, Next.js, Vue, Python, PHP)
- Real-time analytics per ad

**Marketplace Page:**
- Public ad browsing
- Search and category filters
- Ad cards with payment rates
- Integration modal with code snippets

### Wallet Integration
- MassaStation and Bearby wallet support
- Connect/disconnect functionality
- Automatic reconnection on page load
- Address display with truncation
- Wallet connection modal

### Design System
- **Colors**: Purple primary (HSL 262 83% 58%)
- **Fonts**: Inter (UI), Space Grotesk (headlines), JetBrains Mono (code)
- **Components**: Fully accessible Shadcn UI components
- **Animations**: Framer Motion for smooth transitions
- **Theme**: Dark mode by default with light mode support
- **Responsive**: Mobile-first design

## Environment Variables

No environment variables currently required for frontend development.

## Installation & Development

```bash
# Install dependencies
npm install

# Start development server
npm run dev
```

The application will be available at the configured port (typically 5000).

## Massa Wallet Setup

To use the platform, you need a Massa wallet:

1. **MassaStation** (Recommended): Download from https://massa.net
2. **Bearby**: Browser extension from https://bearby.io

## Data Models

### User
- `id`: UUID
- `walletAddress`: Massa wallet address (unique)
- `role`: "hoster" | "developer"
- `name`: User's display name
- `email`: Optional email
- `website`: Developer's website (optional)
- `businessName`: Hoster's business name (optional)
- `categories`: Array of interest categories

### Ad Campaign
- `id`: UUID
- `hosterId`: Reference to user
- `title`: Campaign title
- `description`: Ad description
- `imageUrl`, `videoUrl`, `htmlSnippet`: Ad creative
- `category`: Ad category
- `budget`: Total budget in MAS
- `spent`: Amount spent so far
- `pricingModel`: "cpc" | "cpm"
- `costPerClick` or `costPerImpression`: Payment rates
- `status`: "active" | "paused" | "stopped" | "completed"
- `impressions`, `clicks`: Performance metrics

### Developer Earnings
- `id`: UUID
- `developerId`: Reference to user
- `adCampaignId`: Reference to campaign
- `totalEarned`: Cumulative earnings in MAS
- `impressions`, `clicks`: Delivery metrics
- `lastPayout`: Timestamp of last payout

### Ad Interactions
- `id`: UUID
- `adCampaignId`: Reference to campaign
- `developerId`: Reference to developer
- `interactionType`: "impression" | "click"
- `ipAddress`, `userAgent`: For fraud detection
- `timestamp`: Event timestamp

## Next Steps

### Phase 2: Smart Contracts & Backend
1. Create `smart-contract/` folder with AssemblyScript setup
2. Implement smart contracts:
   - Ad registry and metadata storage
   - Escrow system for budget management
   - Impression/click tracking with fraud prevention
   - Autonomous Smart Contract for daily payouts
   - Reputation scoring system
3. Build backend API:
   - File upload endpoints for ad images/videos
   - Ad metadata aggregation
   - Analytics data collection
4. Database setup with PostgreSQL

### Phase 3: Integration & Testing
1. Connect frontend to Massa blockchain via wallet provider
2. Implement smart contract calls for all operations
3. Add real-time updates and transaction confirmations
4. End-to-end testing of user journeys
5. Performance optimization
6. Production deployment

## Design Philosophy

The platform follows modern Web3 design principles:
- **Transparent**: All transactions visible on-chain
- **Trustless**: Smart contracts enforce rules automatically
- **Decentralized**: No central authority controls funds
- **User-Friendly**: Web2-level UX for Web3 functionality
- **Beautiful**: Professional design that instills trust

## User Journeys

### Hoster Journey
1. Connect Massa wallet
2. Select "I'm a Hoster" role
3. Complete onboarding profile
4. Create ad campaign with budget
5. Upload ad creative (image/video)
6. Set pricing model (CPC or CPM)
7. Campaign goes live on network
8. Monitor real-time analytics
9. Pause/resume/stop campaigns as needed

### Developer Journey
1. Connect Massa wallet
2. Select "I'm a Developer" role
3. Complete onboarding with website URL
4. Browse ad marketplace
5. Select high-paying campaigns
6. Copy integration code snippet
7. Paste code into website
8. Earn MAS automatically
9. Track earnings in dashboard
10. Receive daily automated payouts

## Contributing

This project is part of the Massa blockchain ecosystem. Contributions welcome!

 