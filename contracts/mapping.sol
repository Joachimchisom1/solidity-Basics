// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract mappingInSolidity {

    struct Employee {
        string name;
        string skills;
    }

    mapping(uint => Employee) public myData;


    function setter(uint key, string memory name, string memory skills) public {
        myData[key] = Employee(name, skills);
    }
}