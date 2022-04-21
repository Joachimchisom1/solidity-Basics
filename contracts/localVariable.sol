// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; 

contract localVariables {
    uint public age;

    function placeOfLocalVars() pure public returns(uint) {
        uint salary = 3000;
        return salary;
    }
}
