// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 
contract demo{

    bytes1 public arr1;
    bytes2 public arr2="ab";
    bytes3 public arr3="abc";

    function setter(bytes1 _value) public {
        arr1=_value;
    }

    function getter() public view returns(bytes1){
        return arr1;
    }
}
