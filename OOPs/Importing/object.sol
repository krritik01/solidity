// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0<0.9.0;

import "./book.sol";
contract Demo{
    Book obj=new Book();

    function getObject() public view returns (Book){
        return obj;
    }

    function writeDimension(uint _length, uint _breadth, uint _height) public {
        obj.setDimension(_length, _breadth, _height);
    }

    function readDimension() public view returns (uint,uint,uint){
        return obj.getDimension();
    }
}