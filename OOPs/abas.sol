// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


// To make a contract abstract we use "abstract" keyword
// Function without implementation must contain "virtual" keyword
// The abstract contract defines the structure of the contract, and any derived contract inherited from it should provide an implementation for the incomplete functions. And that function should contain the "override" keyword.
// And if the derived contract is also not implementing the incomplete functions then that derived contract will also be marked as abstract.
// Contract marked as abstract contract cannot be deployed.

abstract contract Model{

function sub(uint a,uint b) public pure returns(uint){ 
    return a-b; 
    } 
    function add(uint a,uint b) public pure virtual returns(uint); 
    }

contract developer is Model{ 
    function add(uint a,uint b) public pure override returns(uint){ 
    return a+b; 
    } 
}
