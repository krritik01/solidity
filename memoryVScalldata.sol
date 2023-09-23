//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract demo{

    uint[5] public arr;

    function insert(uint[5] calldata _arr) public{
        arr=_arr;
    }

    function returnArr() public view returns(uint[5] memory){
        return arr;
    }
}
