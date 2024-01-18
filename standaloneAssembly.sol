//SPDX-License-Identifier:MIT
pragma solidity ^0.8.23;

contract StandaloneAssembly {
function add(uint a) public pure returns (uint b) {
	b = 10;
	for (uint n = 0; n < a; n++)
	b = b + a;
}
}
