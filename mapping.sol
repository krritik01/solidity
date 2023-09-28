// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Mapping{

    mapping(uint=>string) public data;

    function insert(uint _roll,string memory _name) public{
        data[_roll]=_name;
    }

    function getter(uint _roll) public view returns(string memory){
        return data[_roll];
    }
}
