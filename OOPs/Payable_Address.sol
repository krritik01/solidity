// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Address {
    address payable user = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    function payEther() payable public {

    }

    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }

    function payEthertoAccount() public {
        user.transfer(5 ether);
    }
}
