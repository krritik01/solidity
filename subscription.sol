// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SubscriptionPayment {
    address public subscriber;
    uint256 public nextPaymentDue;

    constructor() {
        subscriber = msg.sender;
        nextPaymentDue = block.timestamp + 30 days; // Monthly subscription
    }

    function makePayment() public payable {
        require(msg.sender == subscriber, "Not authorized");
        require(msg.value >= 1 ether, "Insufficient payment");
        nextPaymentDue = block.timestamp + 30 days;
    }
}
