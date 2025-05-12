# 🗳 ERC20 Snapshot Voting Ethereum DAO

The aim of this project is to implement a decentralized governance system using OpenZeppelin's Governor module, leveraging ERC20 snapshot-based voting. 

## 🧠 Overview
This projects demonstrates a functional DAO (Decentralized Autonomous Organization) that allows token holders to participate in governane through snapshot-based voting to change the value held in the "Box.sol" contract. 
Basic implementation of an on-chain ethereum dao.

## 💻 Tech Stack
- Solidity: Smart contract development
- OpenZeppelin Contracts: Secure modular implementations for:
  - ```Governor```
  - ```ERC20Votes```
  - ```TimelockController```
- Hardhat: Development environment
- Javascript: Deployment Scripts.
- Tally: Frontend, to create, queue & execute proposals.

## 📁 Project Structure
```
├── contracts/
│   ├── Box.sol                # Box contract
│   ├── DAOGovernor.sol        # Governor contract
│   ├── DAOToken.sol           # ERC20Votes-compatible token
│   └── Timelock.sol           # TimelockController
├── ignition/modules
│   ├── Box.js                 # Deployment script
│   ├── DAOGovernor.js         # Deployment script
│   ├── DAOToken.js            # Deployment script
│   └── Timelock.js            # Deployment script
├── hardhat.config.ts          # Hardhat configuration
```
Notes:
- Network Sepolia
- Governor contract exceeds contract length, run optimizer.
- Deployment order (parameters)
    - Timelock {minDelay, propsers, executors, admin}
    - DAOToken 
    - Box {Timelock address}
    - Governor {Token address, Timelock address}
 - Use Tally to register DAO.

## 📚 Resources
 - OpenZeppelin Governor Docs
 - Inspired by: DAO Template by PatrickAlphaC
 - Tally
 - Safe
