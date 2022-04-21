// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract pureAndview {

    // state Var
    uint age = 30;

    function getViewFunction() public view returns(string memory) {
        // return age;
        string memory person = "Joachim";
        return person;

    }

    function getPureFuncton() public pure returns(uint sum) {
        uint number1 = 1000;
        uint number2 = 3000;
        sum = number1 + number2;
        return sum;
    }
}