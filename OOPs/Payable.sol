// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Demo{ //transer ether to my contract 
          function sendEtherToContract() public payable {

                }

          function balanceOfContract() public view returns(uint){
             return address(this).balance; 
             }
        }
