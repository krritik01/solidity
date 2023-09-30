// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract mapArr{

         mapping(address=>uint[]) public marks;

     function insertMarks(address _address,uint _marks) public { 
        marks[_address].push(_marks); 
          }
    
     function returnMarks(address _address) public view returns(uint[] memory){
         return marks[_address];
          }
           }
