//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Event {
  address public owner;
    event Deposit(address _from, uint256 _id);

    constructor() {
        owner = msg.sender;
    }

    function deposit(uint256 _id) public {
        emit Deposit(msg.sender, _id);
    }
}


}
