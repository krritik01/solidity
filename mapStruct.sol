// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract mapStruct{

    struct Student{
        string name;
        uint roll;
        bool pass;
    }

    mapping(uint=>Student) public data;

    function insert(uint index, string memory _name, uint _roll, bool _pass) public{
        data[index]=Student(_name, _roll,_pass);
    }
    
    function returnValue(uint index) public view returns (Student memory){
        return data[index];
    }
}
