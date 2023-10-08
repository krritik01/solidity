// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

interface ISwitch {
function switchOn() external  returns(uint256);

function switchOff() external pure returns(uint256);
  }

//create Bulb contract here
contract Bulb is ISwitch {
    function switchOn() public pure override returns (uint256) {
        return 1;
    }

    function switchOff() public pure override returns (uint256) {
        return 0;
    }
}
