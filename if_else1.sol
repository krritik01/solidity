pragma solidity >=0.5.0 <0.9.0;
// SPDX-License-Identifier: MIT

contract IfElse{

function checkEvenOdd(int number) public pure returns(string memory){
if(number<0){
return "Please enter a positive number";
}
else if(number%2==0){
return "Number is even";
}
else{
return "Number is odd";
}
}
}
