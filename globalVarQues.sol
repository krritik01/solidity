//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract GlobalVar {
   function returnBlockNumber() public view returns(uint blockNumber){
   return (block.number);
   }

   function returnBlockTimestamp( )  public view returns(uint blockTimestamp){
   return (block.timestamp);
   }
}
