#!/bin/bash

set -e

echo "🍕 Creating WPizza documentation..."

# Root directories
mkdir -p \
  introduction \
  launch \
  wpizza-dex \
  presales \
  liquidity \
  token-management \
  wpizza-lock \
  developers/smart-contracts \
  security \
  faq \
  resources

# --------------------------------------------------
# Helper
# --------------------------------------------------

create_page() {
  local file="$1"
  local title="$2"
  local description="$3"

  cat > "$file" <<EOF
---
title: "$title"
description: "$description"
---

# $title

$description
EOF

  echo "✓ $file"
}

# --------------------------------------------------
# Introduction
# --------------------------------------------------

create_page \
  "introduction/what-is-wpizza.mdx" \
  "What is WPizza?" \
  "Learn what WPizza is and how it simplifies token creation, launching, trading, liquidity, and token management on BNB Smart Chain."

create_page \
  "introduction/how-wpizza-works.mdx" \
  "How WPizza Works" \
  "Understand the complete lifecycle of a token created and launched through WPizza."

create_page \
  "introduction/ecosystem-overview.mdx" \
  "Ecosystem Overview" \
  "Explore the different products and smart contracts that make up the WPizza ecosystem."

create_page \
  "introduction/getting-started.mdx" \
  "Getting Started" \
  "Get started with WPizza and learn the basic steps for creating and launching a token."

# --------------------------------------------------
# Launch & Create
# --------------------------------------------------

create_page \
  "launch/create-a-token.mdx" \
  "Create a Token" \
  "Learn how to create a token using the WPizza Token Factory."

create_page \
  "launch/create-a-tax-token.mdx" \
  "Create a Tax Token" \
  "Learn how to create and configure a token with transaction taxes."

create_page \
  "launch/create-a-tax-free-token.mdx" \
  "Create a Tax-Free Token" \
  "Learn how to create a token without transaction taxes."

create_page \
  "launch/create-a-presale.mdx" \
  "Create a Presale" \
  "Learn how to create and configure a token presale."

create_page \
  "launch/add-initial-liquidity.mdx" \
  "Add Initial Liquidity" \
  "Learn how initial liquidity is configured and added to a token."

# --------------------------------------------------
# WPizzaDex
# --------------------------------------------------

create_page \
  "wpizza-dex/what-is-wpizza-dex.mdx" \
  "What is WPizzaDex?" \
  "Learn how WPizzaDex enables token launches and trading through the Pizza Curve."

create_page \
  "wpizza-dex/pizza-curve.mdx" \
  "Pizza Curve" \
  "Understand the Pizza Curve and how it is used to launch and trade tokens."

create_page \
  "wpizza-dex/launching-a-token.mdx" \
  "Launching a Token" \
  "Learn how to launch a token on WPizzaDex."

create_page \
  "wpizza-dex/buying-tokens.mdx" \
  "Buying Tokens" \
  "Learn how to purchase tokens on the Pizza Curve."

create_page \
  "wpizza-dex/selling-tokens.mdx" \
  "Selling Tokens" \
  "Learn how to sell tokens through WPizzaDex."

create_page \
  "wpizza-dex/bonding-curve.mdx" \
  "Bonding Curve" \
  "Understand how the WPizzaDex bonding curve determines token pricing."

create_page \
  "wpizza-dex/graduation-and-liquidity.mdx" \
  "Graduation & Liquidity" \
  "Learn what happens when a token reaches the required liquidity threshold."

create_page \
  "wpizza-dex/migration-to-pancakeswap.mdx" \
  "Migration to PancakeSwap" \
  "Understand how tokens transition from the Pizza Curve to PancakeSwap."

# --------------------------------------------------
# Presales
# --------------------------------------------------

create_page \
  "presales/how-presales-work.mdx" \
  "How Presales Work" \
  "Understand the WPizza presale lifecycle."

create_page \
  "presales/creating-a-presale.mdx" \
  "Creating a Presale" \
  "Learn how to create a presale using WPizza."

create_page \
  "presales/presale-configuration.mdx" \
  "Presale Configuration" \
  "Learn how to configure the parameters of a WPizza presale."

create_page \
  "presales/buying-during-a-presale.mdx" \
  "Buying During a Presale" \
  "Learn how users can participate in a WPizza presale."

create_page \
  "presales/claiming-tokens.mdx" \
  "Claiming Tokens" \
  "Learn how participants claim tokens after a presale."

create_page \
  "presales/presale-lifecycle.mdx" \
  "Presale Lifecycle" \
  "Understand the complete lifecycle of a WPizza presale."

# --------------------------------------------------
# Liquidity
# --------------------------------------------------

create_page \
  "liquidity/add-liquidity.mdx" \
  "Add Liquidity" \
  "Learn how to add liquidity to a token."

create_page \
  "liquidity/pancakeswap-v2-liquidity.mdx" \
  "PancakeSwap V2 Liquidity" \
  "Learn how WPizza works with PancakeSwap V2 liquidity."

create_page \
  "liquidity/initial-liquidity.mdx" \
  "Initial Liquidity" \
  "Understand how initial liquidity is configured during token creation."

create_page \
  "liquidity/liquidity-management.mdx" \
  "Liquidity Management" \
  "Learn how to manage token liquidity."

# --------------------------------------------------
# Token Management
# --------------------------------------------------

create_page \
  "token-management/token-creation.mdx" \
  "Token Creation" \
  "Learn about WPizza token creation."

create_page \
  "token-management/tax-tokens.mdx" \
  "Tax Tokens" \
  "Understand how WPizza tax tokens work."

create_page \
  "token-management/tax-free-tokens.mdx" \
  "Tax-Free Tokens" \
  "Understand WPizza tax-free tokens."

create_page \
  "token-management/token-ownership.mdx" \
  "Token Ownership" \
  "Understand token ownership and permissions."

create_page \
  "token-management/token-management.mdx" \
  "Token Management" \
  "Learn how to manage tokens after creation."

# --------------------------------------------------
# WPizza Lock
# --------------------------------------------------

create_page \
  "wpizza-lock/what-is-wpizza-lock.mdx" \
  "What is WPizza Lock?" \
  "Learn how WPizza Lock helps projects lock tokens and liquidity."

create_page \
  "wpizza-lock/lock-tokens.mdx" \
  "Lock Tokens" \
  "Learn how to lock tokens using WPizza Lock."

create_page \
  "wpizza-lock/lock-liquidity.mdx" \
  "Lock Liquidity" \
  "Learn how to lock liquidity using WPizza Lock."

create_page \
  "wpizza-lock/view-locked-assets.mdx" \
  "View Locked Assets" \
  "Learn how to verify tokens and liquidity locked through WPizza."

create_page \
  "wpizza-lock/unlocking.mdx" \
  "Unlocking" \
  "Learn how locked assets become available after their lock period."

# --------------------------------------------------
# Developers
# --------------------------------------------------

create_page \
  "developers/architecture.mdx" \
  "Architecture" \
  "Understand the architecture of the WPizza smart contract ecosystem."

create_page \
  "developers/smart-contracts/wpizza-token-factory.mdx" \
  "WPizzaTokenFactory" \
  "Technical documentation for the WPizza Token Factory smart contract."

create_page \
  "developers/smart-contracts/wpizza-dex-factory.mdx" \
  "WPizzaDexFactory" \
  "Technical documentation for the WPizzaDex Factory smart contract."

create_page \
  "developers/smart-contracts/wpizza-pair.mdx" \
  "WPizzaPair" \
  "Technical documentation for the WPizza Pair smart contract."

create_page \
  "developers/smart-contracts/wpizza-router.mdx" \
  "WPizzaRouter" \
  "Technical documentation for the WPizza Router smart contract."

create_page \
  "developers/smart-contracts/wpizza-lock.mdx" \
  "WPizzaLock" \
  "Technical documentation for the WPizza Lock smart contract."

create_page \
  "developers/contract-addresses.mdx" \
  "Contract Addresses" \
  "Official WPizza smart contract addresses deployed on supported networks."

create_page \
  "developers/abis.mdx" \
  "ABIs" \
  "Access the ABIs required to integrate with WPizza smart contracts."

create_page \
  "developers/events.mdx" \
  "Events" \
  "Reference for events emitted by WPizza smart contracts."

create_page \
  "developers/interfaces.mdx" \
  "Interfaces" \
  "Smart contract interfaces used throughout the WPizza ecosystem."

create_page \
  "developers/integration-guide.mdx" \
  "Integration Guide" \
  "Learn how developers can integrate with WPizza smart contracts."

# --------------------------------------------------
# Security
# --------------------------------------------------

create_page \
  "security/smart-contract-security.mdx" \
  "Smart Contract Security" \
  "Learn about the security architecture of WPizza smart contracts."

create_page \
  "security/ownership-and-permissions.mdx" \
  "Ownership & Permissions" \
  "Understand contract ownership and administrative permissions."

create_page \
  "security/liquidity-safety.mdx" \
  "Liquidity Safety" \
  "Learn about liquidity-related safety considerations."

create_page \
  "security/user-safety.mdx" \
  "User Safety" \
  "Important safety information for WPizza users."

# --------------------------------------------------
# FAQ
# --------------------------------------------------

create_page \
  "faq/general.mdx" \
  "General" \
  "Frequently asked questions about WPizza."

create_page \
  "faq/tokens.mdx" \
  "Tokens" \
  "Frequently asked questions about WPizza tokens."

create_page \
  "faq/wpizza-dex.mdx" \
  "WPizzaDex" \
  "Frequently asked questions about WPizzaDex."

create_page \
  "faq/presales.mdx" \
  "Presales" \
  "Frequently asked questions about WPizza presales."

create_page \
  "faq/liquidity.mdx" \
  "Liquidity" \
  "Frequently asked questions about liquidity."

create_page \
  "faq/lock.mdx" \
  "Lock" \
  "Frequently asked questions about WPizza Lock."

# --------------------------------------------------
# Resources
# --------------------------------------------------

create_page \
  "resources/contract-addresses.mdx" \
  "Contract Addresses" \
  "Official WPizza contract addresses and deployment information."

create_page \
  "resources/supported-networks.mdx" \
  "Supported Networks" \
  "Networks supported by WPizza."

create_page \
  "resources/block-explorers.mdx" \
  "Block Explorers" \
  "Useful block explorers for interacting with WPizza contracts."

create_page \
  "resources/pancakeswap.mdx" \
  "PancakeSwap" \
  "Resources and information about PancakeSwap integration."

create_page \
  "resources/community.mdx" \
  "Community" \
  "Official WPizza community and social resources."

echo ""
echo "🍕 WPizza documentation structure created successfully!"
echo ""
echo "Total documentation sections:"
echo "  Introduction"
echo "  Launch & Create"
echo "  WPizzaDex"
echo "  Presales"
echo "  Liquidity"
echo "  Token Management"
echo "  WPizza Lock"
echo "  Developers"
echo "  Security"
echo "  FAQ"
echo "  Resources"
echo ""