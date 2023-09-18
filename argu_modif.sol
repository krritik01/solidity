//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract argumentPass{

     modifier isEven(uint a){
         require(a%2==0,"Number is not even");
         _;
     }

     function f1(uint a) public pure isEven(a) returns(bool){
       return true;
     }

}
