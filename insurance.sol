// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Insurance {
    mapping(address => uint256) public insuredAmount;

    function purchaseInsurance(uint256 amount) public payable {
        require(msg.value == amount, "Incorrect payment amount");
        insuredAmount[msg.sender] = amount;
    }

    function claimInsurance() public {
        require(block.timestamp < insuredAmount[msg.sender], "Insurance expired");
        payable(msg.sender).transfer(insuredAmount[msg.sender]);
        insuredAmount[msg.sender] = 0;
    }
}
