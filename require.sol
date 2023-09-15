// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract demo{
    function isZero(uint a) public pure returns(bool){
        require(a==0,"a is not equal to zero");
        return true;
    }

    function isZeroif(uint a ) public pure returns(bool){
        if(a==0){
            return true;
        }
        revert ("a is not equal to zero");
    }
}
