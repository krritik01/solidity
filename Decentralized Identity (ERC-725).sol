// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Identity {
    mapping(bytes32 => bytes32) public userData;

    function setData(bytes32 key, bytes32 value) public {
        userData[key] = value;
    }

    function getData(bytes32 key) public view returns (bytes32) {
        return userData[key];
    }
}
