//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract demo{
    uint[] public arr;

    function insert(uint item) public {
        arr.push(item);
    }

    function removelast() public {
        arr.pop();
    }

    function lengthArr() public view returns(uint) {
        return arr.length;
    }

    function returnALLarray() public view returns(uint[] memory){
        return arr;
    }
}
