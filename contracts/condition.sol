// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract learnCondtions {

    uint public totalMarks = 1100;
    uint public passingMarks = 500;

    function checkCondition(uint obtainedMarks) public view returns(string memory) {
        string memory result;
        if (obtainedMarks > passingMarks) {
            return result = "Congrates! You've passed the exam";
        } else {
            return result = "You Failed! Go and meet your father at home";
        }
    }
}