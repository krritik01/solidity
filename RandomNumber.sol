// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RandomNumberGenerator {

    // Function to generate a pseudo-random number
    
    function generateRandomNumber() public view returns (uint256) {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 currentTime = block.timestamp;
        uint256 randomSeed = blockValue ^ currentTime;

        // Use modulo to limit the range of the random number (e.g., 0 to 99)
        uint256 randomNumber = randomSeed % 100;

        return randomNumber;
    }
}
