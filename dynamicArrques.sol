//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract DynamicArray {
    uint256[] public id;

    function insert(uint256 num) public {
        id.push(num);
    }

    function get(uint256 num) public view returns (int256) {
        for (uint256 i = 0; i < id.length; i++) {
            if (num == id[i]) {
                return int256(i); // Return the index if found
            }
        }
        return -1; // Return -1 if not found
    }

    function getAll() public view returns (uint256[] memory) {
        return id;
    }

    function length() public view returns (uint256) {
        return id.length;
    }
}


