//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract Enum{
    enum Button{ON,OFF} //By default ON=0 and OFF=1

    Button public x;

    function checkStatus() public view returns(Button){
        return x;
    }


    function returnButton() public view returns (string memory){
        if(x==Button.ON){
            return "Button is ON";
        }
        else{
            return "Button is OFF";
        }
    }

    function changeStatus(Button _x) public {
        x=_x;
    }

}
