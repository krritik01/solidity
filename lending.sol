// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LendingPlatform {
    mapping(address => uint256) public balances;
    mapping(address => uint256) public debt;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function borrow(uint256 amount) public {
        require(amount <= balances[msg.sender], "Insufficient balance");
        debt[msg.sender] += amount;
        balances[msg.sender] -= amount;
    }

    function repayLoan() public payable {
        require(msg.value <= debt[msg.sender], "Excessive repayment");
        debt[msg.sender] -= msg.value;
    }
}
