// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract learnConstructor {
    uint public personAge;

    constructor(uint generate_age) {
        personAge = generate_age;
    }
}