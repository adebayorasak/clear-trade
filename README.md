# ClearTrade - Transparent Commerce Protocol

![Stacks](https://img.shields.io/badge/Stacks-3.1-blue.svg)
![Clarity](https://img.shields.io/badge/Clarity-3.0-orange.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## Overview

ClearTrade is a next-generation commerce protocol that revolutionizes online marketplaces through blockchain transparency, automated escrow, and community-driven trust. Built on the Stacks blockchain, it creates a trustless ecosystem where transparency meets convenience, enabling merchants to establish verified storefronts and customers to enjoy secure transactions backed by Bitcoin's immutable ledger.

## 🎯 Key Features

- **Verified Brand System**: Brand registration and verification process
- **Dual Commerce Models**: Both fixed-price listings and competitive auctions
- **Automated Escrow**: Secure fund management with automatic settlements
- **Community Reviews**: Decentralized rating and review system
- **Transparent Fees**: Clear 2.5% platform fee structure
- **Bitcoin Security**: Leveraging Bitcoin's security through Stacks

## 🏗️ Architecture

### System Overview

```text
┌─────────────────────────────────────────────────────────────────┐
│                        ClearTrade Protocol                      │
├─────────────────────────────────────────────────────────────────┤
│  Frontend (Web/Mobile)                                         │
│  ├── Brand Management                                          │
│  ├── Product Listings                                          │
│  ├── Auction Interface                                         │
│  └── Review System                                             │
├─────────────────────────────────────────────────────────────────┤
│  Smart Contract Layer (Clarity)                               │
│  ├── Brand Registration & Verification                        │
│  ├── Product Management                                       │
│  ├── Auction Engine                                           │
│  ├── Payment Processing                                       │
│  └── Review System                                            │
├─────────────────────────────────────────────────────────────────┤
│  Stacks Blockchain                                            │
│  ├── Transaction Processing                                   │
│  ├── State Management                                         │
│  └── STX Token Transfers                                      │
├─────────────────────────────────────────────────────────────────┤
│  Bitcoin Network (Security Layer)                             │
│  └── Final Settlement & Security                              │
└─────────────────────────────────────────────────────────────────┘
```

### Contract Architecture

The ClearTrade smart contract is organized into several key modules:

#### 1. **Brand Management**

- Brand registration and verification system
- Owner-controlled verification process
- Brand metadata storage (name, verification status, creation timestamp)

#### 2. **Product Management**

- Unified product creation for both direct sales and auctions
- Product metadata including brand association, pricing, and availability
- Automatic product ID generation and tracking

#### 3. **Commerce Engine**

- **Direct Sales**: Immediate purchase with automatic fund transfer
- **Auction System**: Time-based bidding with automatic bid management
- Automated escrow handling for both commerce models

#### 4. **Payment Processing**

- Platform fee calculation (2.5%)
- Automatic fund distribution (seller + platform fee)
- Secure STX token transfers

#### 5. **Review System**

- Product-based rating system (1-5 stars)
- Comment storage with timestamp tracking
- Reviewer identification and verification

## 📊 Data Flow

### Direct Purchase Flow

```text
Customer → Initiate Purchase → Contract Validation → Fund Transfer → Product Delivery
    ↓            ↓                    ↓                  ↓               ↓
 Balance      Product           Availability        Escrow &         Status
  Check      Validation          Check           Distribution       Update
```

### Auction Flow

```text
Seller → Create Auction → Bidders Place Bids → Auction Ends → Winner Settlement
   ↓           ↓               ↓                    ↓              ↓
Product    Set Duration    Update Highest      Automatic       Fund Transfer
Creation   & Min Price        Bid             Execution       & Completion
```

### Brand Verification Flow

```text
Merchant → Register Brand → Admin Review → Verification → Enhanced Trust
    ↓           ↓              ↓              ↓              ↓
 Submit      Store Brand    Owner Check    Update Status   Marketplace
Details      Metadata                                      Benefits
```

## 🚀 Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) (v16 or higher)
- [Clarinet](https://github.com/hirosystems/clarinet) (latest version)
- [Stacks Wallet](https://www.hiro.so/wallet) for testnet interaction

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/adebayorasak/clear-trade.git
   cd clear-trade
   ```

2. **Install dependencies**

   ```bash
   npm install
   ```

3. **Run tests**

   ```bash
   npm test
   ```

4. **Check contract syntax**

   ```bash
   clarinet check
   ```

### Development Setup

1. **Start local development environment**

   ```bash
   clarinet integrate
   ```

2. **Deploy to testnet**

   ```bash
   clarinet deploy --testnet
   ```

## 🧪 Testing

The project includes comprehensive unit tests covering all contract functionality:

```bash
# Run all tests
npm test

# Run tests with coverage report
npm run test:report

# Watch mode for development
npm run test:watch
```

## 📋 API Reference

### Public Functions

#### Brand Management

- `register-brand(name)` - Register a new brand
- `verify-brand(brand)` - Verify a brand (owner only)

#### Product Management

- `list-product(name, description, price)` - Create a direct sale listing
- `purchase-product(product-id)` - Purchase a listed product

#### Auction System

- `create-auction(name, description, min-price, duration)` - Create an auction
- `place-bid(product-id, bid-amount)` - Place a bid on an auction
- `end-auction(product-id)` - End an auction and settle payment

#### Reviews

- `add-review(product-id, rating, comment)` - Add a product review

### Read-Only Functions

- `get-product(product-id)` - Retrieve product information
- `get-brand(brand)` - Retrieve brand information
- `get-auction(product-id)` - Retrieve auction details
- `get-review(product-id, reviewer)` - Retrieve specific review

## 💰 Economics

### Fee Structure

- **Platform Fee**: 2.5% of transaction value
- **Gas Fees**: Standard Stacks network fees apply
- **Auction Deposits**: Bid amounts held in escrow during auction

### Revenue Distribution

- 97.5% to seller
- 2.5% to platform (contract owner)

## 🔒 Security Features

- **Trustless Escrow**: Automatic fund holding and release
- **Bid Protection**: Previous bid refunds on auction outbid
- **Access Controls**: Owner-only functions for critical operations
- **Input Validation**: Comprehensive parameter checking
- **Reentrancy Protection**: Safe fund transfer patterns

## 🛣️ Roadmap

### Phase 1 (Current)

- ✅ Core commerce functionality
- ✅ Brand verification system
- ✅ Basic auction mechanism
- ✅ Review system

### Phase 2 (Planned)

- 🔄 Dispute resolution system
- 🔄 Advanced search and filtering
- 🔄 Multi-token payment support
- 🔄 Reputation scoring algorithm

### Phase 3 (Future)

- 📋 Cross-chain integrations
- 📋 Mobile app development
- 📋 Advanced analytics dashboard
- 📋 Merchant tools and APIs

## 🤝 Contributing

We welcome contributions from the community! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details on:

- Code style and standards
- Pull request process
- Issue reporting
- Development workflow

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Stacks Foundation](https://stacks.org/) for the blockchain infrastructure
- [Hiro Systems](https://www.hiro.so/) for development tools
- The broader Stacks community for support and feedback
