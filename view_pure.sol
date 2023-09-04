// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract d{

    uint public x;

    function setter(uint _x) public{
        x=_x;
    }
    function getter() public view returns(uint){
        return x;
    }

    function random() public pure returns(uint){
        uint y=7;
        return y;
    }
}
