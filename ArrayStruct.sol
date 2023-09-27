//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0;

contract ArrayStruct{
    struct Student{
        string name;
        uint roll;
        bool pass;
    }

    Student[4] public s;

    function insertStudent(uint index, string memory _name, uint _roll, bool _pass) public {
        s[index]=Student(_name,_roll,_pass);
    }

    function returnStudent(uint index) public view returns(Student memory){
        return s[index];
    }
}
//The above code is for fixed sized Array

//The below code is for dynamic Array

// pragma solidity >=0.5.0 < 0.9.0;

// contract ArrayStruct{
//     struct Student{
//         string name;
//         uint roll;
//         bool pass;
//     }

//     Student[] public s;

//     function insertStudent(string memory _name, uint _roll, bool _pass) public {
//         s.push(Student(_name,_roll,_pass));
//     }

//     function returnStudent(uint index) public view returns(Student memory){
//         return s[index];
//     }
// }
