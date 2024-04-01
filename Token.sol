//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 < 0.9.0; 
import "hardhat/console.sol";
contract Token{
    string public name="Hardhat Token";
    string public symbol="HHT";
    uint public totalSupply=10000;
    address public owner;

    mapping(address=>uint) balances; //This will tell which address hold how much token

    constructor(){
        balances[msg.sender]=totalSupply;
        owner=msg.sender;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender]>=amount,"Not enough token");
        balances[msg.sender]-=amount; //balances[msg.sender]=balances[msg.sender]-amount
        balances[to]+=amount;
         console.log("Transferring", amount, "tokens to", to);
    }

    function checkBalance(address account) external view returns(uint) {
        return balances[account];
    }
}
