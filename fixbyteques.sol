//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract FixedSizeArray {
  bytes1 public b1="a";
  
   function setBytesArray(bytes1 _a) public {
   b1=_a;
   }
   function getByteValue() public view returns(bytes1){
   return b1;
   }
}
