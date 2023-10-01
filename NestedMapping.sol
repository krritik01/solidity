//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;
 contract nestedMapping{
    
    mapping(uint=>mapping(uint=>bool))public data;

    function insert(uint row, uint column, bool value) public{
        data[row][column]=value;
    }

    function returnValue(uint row, uint column) public view returns(bool){
        return data[row][column];
    }
 }
