// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Parent {
   int256 public a;

    function increment() public {
        a = a + 1;
    }
}

contract Child is Parent {
    function decrement() public {
        a = a - 1;
}
}
