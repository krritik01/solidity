//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Escrow {
    address public payer;
    address public payee;
    address public thirdParty;
    uint256 public amount;

    constructor(address _payer, address _payee, uint256 _amount) {
        payer = _payer;
        payee = _payee;
        amount = _amount;
        thirdParty = msg.sender;
    }

    function deposit() public payable {
        require(msg.sender == payer, "Sender must be the payer");
        require(msg.value <= amount, "Cant send more than escrow amount");
    }

    function release() public {
        require(address(this).balance == amount, "cannot release funds before full amount is sent");
        require(msg.sender == thirdParty, "only thirdParty can release funds");

        // Transfer the amount to the payee
        (bool success, ) = payee.call{value: amount}("");
        require(success, "Failed to send funds to payee");
    }

    function balanceOf() public view returns (uint256) {
        return address(this).balance;
    }

}
