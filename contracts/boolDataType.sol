// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract boolDataTypes {

    bool public checker;

    function isBuild(uint heat) public returns(bool) {
        if (heat > 100) {
            checker = false;
            return checker;
        } else {
             checker = true;
            return checker;
        }
    }
}