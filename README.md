# eth-intermediate

# SimpleVoting Smart Contract

## Overview

The SimpleVoting smart contract is a basic voting system that demonstrates the use of require(),
assert(), and revert() statements in Solidity. The contract allows an owner to add eligible voters, 
enables those voters to cast their votes, and provides a mechanism for the owner to reset the votes.

## SPDX License Identifier

The contract is licensed under the GNU General Public License version 3.0, as indicated by the SPDX-License-Identifier: GPL-3.0 declaration.

## Features

1.Owner Management: Only the contract owner can add eligible voters and reset votes.

2.Voting System: Eligible voters can cast their votes, ensuring each voter votes only once.

3.Error Handling: Utilizes require(), assert(), and revert() to enforce rules and handle errors.

## Deployment

To deploy the SimpleVoting contract:

1.Use Remix or another Solidity-compatible development environment.

2.Compile the contract using Solidity version ^0.8.0.

3.Deploy the contract to your desired Ethereum network.

## Usage

1-Add Eligible Voters: The owner calls addEligibleVoter with the address of each eligible voter.

2-Vote: Eligible voters call vote to cast their votes.

3-Reset Votes: The owner calls resetVotes to reset the voting system for a new round of voting.

## Authors

Armaan Chahal

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

