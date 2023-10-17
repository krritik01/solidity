// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Fibonacci {
function fib(uint n) public pure returns(uint){
 uint a=0;
 uint b= 1;

 for(uint i=0; i<n; i++){
 uint c = a+b;
 a=b;
 b=c;
}
return a;
}
}
