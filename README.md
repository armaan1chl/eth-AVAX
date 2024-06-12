# eth-intermediate

# LocalStore Smart Contract

## Overview

The LocalStore smart contract is a simple contract for managing a local store. 
It allows the owner to add items, check the store's balance, 
and demonstrates the use of Solidity's error handling mechanisms (require(), assert(), and revert()).

## Prerequisites

-Solidity version 0.8.0 or higher.
-An Ethereum wallet/address for deploying the contract.
-A development environment like Remix, Truffle, or Hardhat for deploying and interacting with the contract.

## SPDX License Identifier

The contract is licensed under the GNU General Public License version 3.0, as indicated by the SPDX-License-Identifier: GPL-3.0 declaration.

## Deployment

To deploy the contract, the constructor requires no arguments, we manually sets the owner to a specific address (0xc9F915BDCcF5Ef9a06C61d544391BD81dc987862).

constructor() {
    owner = 0xc9F915BDCcF5Ef9a06C61d544391BD81dc987862;
}

Ensure that the provided address is correct before deploying.

## Usage

## Contract Structure

-Item Struct: Represents an item in the store with id, name, price, and quantity.
-Mapping: Stores items with their id as the key.
-Owner: The address of the contract owner.

## Functions

1.addItem
  -Description: Adds a new item to the store.
  -Modifiers: onlyOwner

2.checkStoreBalance

 -Description: Returns the balance of the store.
 -Modifiers: onlyOwner
 -Returns: The balance of the contract in wei.

3.checkInvariant

 -Description: Demonstrates the use of the assert() function to check a contract invariant.
 -Modifiers: onlyOwner

4.onlyOwnerCanDoThis

 -Description: Demonstrates the use of the revert() function to restrict access to the owner.

## Modifiers
-onlyOwner
  -Restricts the execution of the function to the owner of the contract.

## Authors

Armaan Chahal

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

