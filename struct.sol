//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;
contract demo{
  struct Student{
    string name;
    uint roll;
    bool pass;
  }
 Student public s1;

  function insert(string memory _name, uint _roll, bool _pass) public{
    s1=Student(_name,_roll,_pass);

    //Another method
    // s1.name=_name;
    // s1.roll=_roll;
    // s1.pass=_pass;
  }
  
  function getter() public view returns(Student memory){
   return s1;
  }

  function getNameonly() public view returns (string memory){
    return s1.name;
  }

  function getRollOnly() public view returns (uint){
    return s1.roll;
  }

  function getPassOnly() public view returns (bool){
    return s1.pass;
  }
  }
