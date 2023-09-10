// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract Loops{
    //while loop
    //for loop
    //do while

    function loop() public pure returns(uint){
        uint sum;
        uint count;
        // while(count<5){
        //     sum=sum+count;
        //     count++;
        // }


        // uint sum;
        // for(uint count=0;count<5;count++){
        //     sum=sum+1;
        // }
        

        
        do {
            sum = sum + count;
            count = count + 1;
        } 
        while (count < 5);
           return sum;
    }
}




