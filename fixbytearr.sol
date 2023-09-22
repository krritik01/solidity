//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract demo{
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3;

    function setter() public{
        b1="a";
        b2="ab";
        b3="abc";
    }
}
