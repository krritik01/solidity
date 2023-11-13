// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiplicationContract {

    // Function to multiply two numbers and return the result
    
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a * b;
        return result;
    }
}
