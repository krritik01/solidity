// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Escrow {
    address public buyer;
    address public seller;
    address public arbiter;
    uint256 public amount;

    enum State { Created, Locked, Released, InDispute }

    State public state;

    modifier onlyBuyer() {
        require(msg.sender == buyer, "Not authorized");
        _;
    }

   
