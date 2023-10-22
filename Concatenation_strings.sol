//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Strings {

 function concatenate(string memory string1, string memory string2) public pure returns (string memory) {
        bytes memory bytesString1 = bytes(string1);
        bytes memory bytesString2 = bytes(string2);
        bytes memory concatenated = new bytes(bytesString1.length + bytesString2.length);

        for (uint256 i = 0; i < bytesString1.length; i++) {
            concatenated[i] = bytesString1[i];
        }

        for (uint256 i = 0; i < bytesString2.length; i++) {
            concatenated[bytesString1.length + i] = bytesString2[i];
        }

        return string(concatenated);
    }

}
