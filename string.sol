//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract strinG{
  string public str;

  function setter(string memory _str) public {
      str=_str;
  }

  function getter() public view returns (string memory){
      return str;
  }
}
