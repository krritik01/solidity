// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CoffeeToken is ERC20, Ownable {
    address public minter;
    event Mint(address indexed to, uint256 amount);

    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        minter = msg.sender; // The contract deployer is initially set as the minter
    }

    function mint(address to, uint256 amount) external onlyMinter {
        _mint(to, amount);
        emit Mint(to, amount);
    }

    function transferMinter(address newMinter) external onlyOwner {
        require(newMinter != address(0), "New minter cannot be zero address");
        minter = newMinter;
    }

    modifier onlyMinter() {
        require(msg.sender == minter, "Caller is not the minter");
        _;
    }
}
