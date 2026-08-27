# DAT — Provisional Draft

**Status:** U.S. Provisional Patent Application Filed / Not Audited / Not Deployed  
**Intended Network:** OP Mainnet (Optimism / Ethereum Layer 2)  
**Maintainer:** 0628DAO

This repository contains the provisional public materials for DAT's future deployment, including an ERC-20 smart contract draft and a separated dApp architecture. DAT is being researched and designed as foundational infrastructure for machine-to-machine settlement, including AI-agent transactions, and autonomous liquidity mechanisms.

The repository is public to make the pre-deployment design and validation process transparent. No official DAT smart contract has been deployed. All code currently published here is an unaudited draft.

## Current Positioning

DAT has moved beyond its former definition as a token for “DeAffiliate” or decentralized affiliate marketing. That former positioning is not the current purpose of DAT and is not used as its definition in this repository.

0628DAO is not a token name. It is a governance concept that combines multiple specialized intelligences with final human responsibility. DAT is one of the systems governed under that concept; DAT is not 0628DAO itself.

## Core Token Specifications

| Item | Specification |
|---|---|
| Token Name | DAT |
| Symbol | DAT |
| Network | OP Mainnet |
| Chain ID | 10 |
| Standard | ERC-20 |
| Initial Supply | 1,000,000,000 DAT |
| Decimals | 18 |
| Transfer / Buy / Sell Tax | 0% |
| Rewards / Reflection | None |
| Additional Minting | None |
| Burn | Self-burn by the token holder only |
| Permit | EIP-2612 |
| Owner / Admin / Pause / Upgrade / Proxy | None |

## Protocol Concepts Under Research

DAT separates the base token from the future protocol layer. Current research includes:

- Settlement for machine-driven participants, including AI agents
- A 0% transfer-tax model that does not reduce the transferred amount
- Predefined state transitions that do not depend on discretionary intervention by an external administrator
- One-way transitions of liquidity parameters indexed to cumulative metrics
- Separation of the base token from AMM, hook, and liquidity-management logic

The current `DAT_Draft.sol` is a foundational fixed-supply ERC-20 draft. The proposed AMM, hook, liquidity-state-transition, and AI-agent settlement mechanisms are not yet implemented in this file. They will be published separately after implementation, testing, and security review.

## U.S. Provisional Patent Application

A U.S. provisional patent application concerning DAT's original technology was officially received by the United States Patent and Trademark Office (USPTO), and an application number was assigned.

- **U.S. Provisional Patent Application No.:** 64/141,929
- **Filing / Receipt Date:** August 26, 2026
- **Title of Invention:** Irreversible-Accumulator-Indexed Liquidity State Transition Mechanism

This statement confirms receipt of a U.S. provisional patent application. It does not mean that a patent has been examined, granted, registered, or approved, and it does not guarantee any future patent rights. Unpublished implementation details, the specification, and potential claim scope are not included in this README.

## Design Principles

- Keep the base token implementation small and standards-based
- Place dApp-specific functions in separate protocol contracts
- Connect through `IERC20` and `IERC20Permit`
- Use OpenZeppelin `SafeERC20` for token transfers
- Do not embed taxes, reflection, automatic distribution, or DEX-pair detection in the base token
- Do not provide any post-deployment minting path

## Repository Contents

- `DAT_Draft.sol` — Provisional ERC-20 smart contract
- `DAT_dApp_Architecture_UTF8_BOM.txt` — dApp integration principles and pre-deployment considerations

## Items to Complete Before Deployment

- Confirm the wallet receiving the initial supply
- Define distribution, liquidity, and allocation rules
- Decide whether any restrictions belong in the base token or the dApp layer
- Determine whether `ERC20Votes` is required
- Test on OP Sepolia
- Complete an independent security audit
- Publish the official deployment address
- Update the USPTO status statement when appropriate
- Implement and verify the connection between the protocol layer and the base token

## Important Notices

- The code is unaudited and undeployed.
- No official contract address currently exists.
- This repository is not an offer to sell tokens, an investment solicitation, or a promise of profit or price appreciation.
- Before connecting a wallet or transferring tokens, verify the network and contract address through future official announcements.
- Specifications may change following testing, auditing, legal review, or further USPTO procedures.

© 0628DAO. Development record for technical review.
