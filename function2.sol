// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract FunctionArgument{
 uint x;

 function set(uint _x) public {
 x=_x;
 }

 function get() public view returns(uint){
 return x;
 }
}
