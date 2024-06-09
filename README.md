# eth-intermediate

# AssertionExample Smart Contract

## Overview

The AssertionExample smart contract is a simple Solidity contract that demonstrates the use of require, assert, 
and revert statements to ensure safe and predictable execution of the contract's functions. This contract specifically
provides a function to perform division with several checks to handle potential errors or undesirable outcomes.

## Prerequisites

Solidity version 0.8.0 or later
An Ethereum development environment such as Hardhat, Truffle, or Remix IDE

## Contract Details

divide Function
The divide function takes two unsigned integers, _dividend and _divisor, and returns the quotient of their division, ensuring the following conditions:

The _divisor must not be zero.
The _dividend must be greater than or equal to the _divisor.
The resulting quotient must not exceed 10.

## Error Handling

The function employs different Solidity error handling mechanisms:

require: Ensures _divisor is not zero to prevent division by zero.
assert: Ensures _dividend is greater than or equal to _divisor to satisfy logical correctness within the function.
revert: Reverts the transaction if the quotient exceeds 10, indicating an invalid result for this function's context.

## SPDX License Identifier

The contract is licensed under the GNU General Public License version 3.0, as indicated by the SPDX-License-Identifier: GPL-3.0 declaration.

## Usage

1-Deploy the AssertionExample contract to an Ethereum network of your choice.

2-Call the divide() function, providing the dividend and divisor as parameters.

  -The require() statement ensures that the divisor is not zero. If it is, the transaction reverts with an error message.

  -The assert() statement verifies that the dividend is greater than or equal to the divisor. If it's not, the transaction reverts.

  -The revert() statement checks if the quotient is greater than 10. If it is, the transaction reverts with an error message.

3-The divide() function returns the quotient of the division..


## Authors

Armaan Chahal

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

