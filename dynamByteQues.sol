//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract DynamicArray {
    uint256[] public numbers;

    function insertElement(uint256 items) public{
    numbers.push(items);
    }

    function getElement(uint256 i) public view returns(uint256){
    if(i < numbers.length){
    return numbers[i];
    }
    return 0;
}
}
