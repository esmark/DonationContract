# Donation Contract

## Description
This is donation contract written in **Solidity**, that uses the **Ethereum** blockchain.

## Requirements
* [NodeJS](https://nodejs.org/) >=6.X
* [Truffle](https://www.npmjs.com/package/truffle) `npm install -g truffle` - npm package installed globally
* [Hardhat](https://hardhat.org/getting-started/) `npm install --save-dev hardhat`
* [Ganache](https://github.com/trufflesuite/ganache/releases) - the self-contained prebuilt Ganache binary for your platform of choice from the linked releases page, otherwise follow the official instructions to build your own. 
* [MyEtherWallet](https://github.com/kvhnuke/etherwallet/releases) - is a free, client-side interface helping you interact with the Ethereum blockchain. Our easy-to-use, open-source platform allows you to generate wallets, interact with smart contracts, and so much more. 

## Compiling and Migrating
1. Compile the code using _truffle_:
    ```
    truffle compile
    ```
2. Run the required migrations:
    ```
    truffle migrate
    ```

## Testing
1. Manual testing with help of Ganache and MyEtherWallet.
2. Execute the provided tests:
    ```
    truffle test
    ```
3. Using hardhat:
    
    This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts. 
    
    Try running some of the following tasks:

    ```shell
    npx hardhat accounts
    npx hardhat compile
    npx hardhat clean
    npx hardhat test
    npx hardhat node
    node scripts/sample-script.js
    npx hardhat help
    ```
