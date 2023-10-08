
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface car{
     function gear() external pure returns(uint); 
     }

contract superCar is car{ 
    function gear() external pure returns(uint){
         return 4;
        } 
    }
