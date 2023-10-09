// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Event{
       string public str;
    event register(address manager, string char);

    function setter(string memory _str) public {
        str=_str;
    emit register(msg.sender, str);
    }
}
