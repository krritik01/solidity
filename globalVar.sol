// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract globalVariable{

    function getter() public view returns(uint gaslimit, uint blockNumber, uint blockTimestamp, address caller){
        return (block.gaslimit,block.timestamp,block.number,msg.sender);
    }
}
