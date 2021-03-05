# Solomon Decom Contracts

All Solomon smart contracts are contained in the monorepo https://github.com/solomondefi/slm-contracts

### Solomon Contract Factory

- Package name: `@solomondefi/contract-factory`
- Source: https://github.com/solomondefi/tree/main/slm-factory/
- Contracts:
  - `SlmFactory.sol`

A contract factory for producing chargeback, presale, and escrow contracts with low gas cost. Depends on `SlmChargeback`, `SlmPresale`,
`SlmEscrow`, and `SlmJudgement`.

### Solomon Contract Library

Library contracts with helper methods for chargeback, presale, and escrow related functionality.

- Package name: `@solomondefi/contract-library`
- Source: https://github.com/solomondefi/tree/main/slm-lib/
- Contracts:
  - `SlmPurchaseUtil.sol`
      - Utility functions common to purchase contracts
  - `SlmJudgement.sol`
      - Mediates purchase disputes
  - `SlmStaking.sol`
      - Provites a mechanism for staking SLM, and distributes purchase fees to stakers

### Solomon Chargebacks

Purchase/Chargeback contract that provides buyer protection for traditional ecommerce purchases.

- Package name: `@solomondefi/contract-chargebacks`
- Source: https://github.com/solomondefi/tree/main/slm-chargebacks/
- Contracts:
  - `SlmChargebacks.sol`
      - Chargeback functionality for ecommerce purchases

### Solomon Presale

Presale contract that can also be used for crowdfunding.

- Package name: `@solomondefi/contract-presale`
- Source: https://github.com/solomondefi/tree/main/slm-presale/
- Contracts:
  - `SlmPresale.sol`
      - Presale functionality for ecommerce, crowdfunding, etc

### Solomon Escrow

Escrow contract for large transactions with strict requirements.

- Package name: `@solomondefi/contract-escrow`
- Source: https://github.com/solomondefi/tree/main/slm-escrow/
- Contracts:
  - `SlmEscrow.sol`
      - Escrow functionality for personal and B2B transactions

## Contribution

SLM purchase contracts are written in Solidity. We use [Hardhat](https://hardhat.org/) for development, and future packages will be pushed
to NPM. For now, contracts are included by adding a git tag to dependencies, and importing directly from `node_modules/`

**Install** (we recommend [pnpm](https://pnpm.js.org/) if you work with many node projects):
```
npm install
```

**Compile**
```
npx hardhat compile
```

**Test**
```
npx hardhat test
```

TODO -- Include specific contribution guidelines
