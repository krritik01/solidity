// SPDX-License-Identifier:MIT
pragma solidity ^0.7.4;


contract demo{
    uint number;

    function set(uint _number) public {
        number=_number;
    }

    function get() public view returns(uint){
        return number;
    }
}