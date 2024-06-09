#AssertionExample Smart Contract

##Overview
The AssertionExample smart contract is a simple Solidity contract that demonstrates the use of require, assert, 
and revert statements to ensure safe and predictable execution of the contract's functions. This contract specifically
provides a function to perform division with several checks to handle potential errors or undesirable outcomes.

##Prerequisites
Solidity version 0.8.0 or later
An Ethereum development environment such as Hardhat, Truffle, or Remix IDE

##Contract Details
divide Function
The divide function takes two unsigned integers, _dividend and _divisor, and returns the quotient of their division, ensuring the following conditions:

The _divisor must not be zero.
The _dividend must be greater than or equal to the _divisor.
The resulting quotient must not exceed 10.

##Error Handling
The function employs different Solidity error handling mechanisms:

require: Ensures _divisor is not zero to prevent division by zero.
assert: Ensures _dividend is greater than or equal to _divisor to satisfy logical correctness within the function.
revert: Reverts the transaction if the quotient exceeds 10, indicating an invalid result for this function's context.

##SPDX License Identifier
The contract is licensed under the GNU General Public License version 3.0, as indicated by the SPDX-License-Identifier: GPL-3.0 declaration.

##Usage
To interact with this contract, you can deploy it on an Ethereum-compatible blockchain using your preferred development environment. Here is an example of how to use the contract in Remix IDE:

Open Remix IDE: Navigate to Remix IDE.
Create a New File: Create a new file named AssertionExample.sol and paste the contract code into it.
Compile the Contract: Ensure the Solidity compiler version is set to 0.8.0 or later, then compile the contract.
Deploy the Contract: Deploy the contract to a local blockchain (like Ganache) or a testnet.
Call the divide Function: Interact with the deployed contract by calling the divide function with appropriate _dividend and _divisor values.


Authors
Armaan Chahal

