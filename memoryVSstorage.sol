//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract solodity{

    uint[3] public arr=[10,20,30];

    function fmemory() public view{
        uint[3] memory arr1=arr;
        arr1[0]=60;
    }

    function fstorage() public {
        uint[3] storage arr2=arr;
        arr2[0]=60;
    }
}
