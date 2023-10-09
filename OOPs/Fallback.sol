// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Fallback{

    function payEther() payable public {

    }

    function check_balance() public view returns(uint){
        return address(this).balance;
    }
    
    receive() external payable {
        // handle incoming ether and to don't get error
     }

    fallback() external payable {
        payable (msg.sender).transfer(msg.value);
    }
}
