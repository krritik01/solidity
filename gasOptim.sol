//Some gas saving techniques.

//Replacing memory with calldata
//Loading state variable to memory
//Replace for loop i++ with ++i
//Caching array elements
//Short circuit


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract GasGolf {

    uint public total;

    function sumIfEvenAndLessThan99(uint[] calldata nums) external {
        uint _total = total;
        uint len = nums.length;

        for (uint i = 0; i < len; ) {
            uint num = nums[i];
            if (num % 2 == 0 && num < 99) {
                _total += num;
            }
            unchecked {
                ++i;
            }
        }

        total = _total;
    }
}
