

// pragma solidity >=0.8.2 <0.9.0;
// contract demo1{
//     uint public num=6; //state variable
// }

//Another method

// pragma solidity >=0.8.2 <0.9.0;
// contract demo{
//     uint public num;
    
//     constructor() {
//         num=8;
//     }
// }

//Another method
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract demo{
    uint public num;
    function setter() public {
        num=3;
    }
}
