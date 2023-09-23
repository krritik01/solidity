// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Bool {
function check (bool _value) public pure returns(string memory){
    if(_value){
       return "The value is true";
    }else{
       return "The value is false";
    }
 }

}



