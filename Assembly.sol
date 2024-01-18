// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract InlineAssembly {
	function add(uint a) public view returns (uint b) {
		assembly {
			let c := add(a, 16)
			mstore(0x80, c){
				let d := add(sload(c), 12)
				b := d
			} 
			b := add(b, c)
		} 
	}
}
