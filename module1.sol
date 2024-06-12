// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalStore {
    struct Item {
        uint256 id;
        string name;
        uint256 price;
        uint256 quantity;
    }

    mapping(uint256 => Item) private items;
    uint256 private itemCount;
    address public owner;

    event ItemAdded(uint256 itemId, string name, uint256 price, uint256 quantity);

    constructor() {
        owner = 0xc9F915BDCcF5Ef9a06C61d544391BD81dc987862;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action.");
        _;
    }

    // Add a new item to the store
    function addItem(string memory name, uint256 price, uint256 quantity) public onlyOwner {
        require(bytes(name).length > 0, "Item name must be provided.");
        require(price > 0, "Item price must be greater than zero.");
        require(quantity > 0, "Item quantity must be greater than zero.");

        itemCount++;
        items[itemCount] = Item(itemCount, name, price, quantity);

        emit ItemAdded(itemCount, name, price, quantity);
    }



    // Check the store's balance (only owner can call this)
    function checkStoreBalance() public view onlyOwner returns (uint256) {
        return address(this).balance;
    }



    // Function to demonstrate the use of assert
    function checkInvariant() public view onlyOwner {
        uint256 totalBalance = address(this).balance;
        assert(totalBalance >= 0); // The balance should never be negative
    }

    // Function to demonstrate the use of revert
    function onlyOwnerCanDoThis() public view {
        if (msg.sender != owner) {
            revert("Only the owner can perform this action.");
        }
    }
}
