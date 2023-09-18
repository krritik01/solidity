//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract modif{
     modifier isTrue{
         require(true==true,"True is not true");
         _;
     }

     function f1() public pure isTrue returns(uint){
         return 1;
     }
     
     function f2() public pure isTrue returns(uint){
         return 2;
     }

     function f3() public pure isTrue returns(uint){
         return 3;
     }


}
