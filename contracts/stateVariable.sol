// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract state {
    // State Variable
    uint public salary;
    // 1. You can also initialize a varibable like this one by directly initialize value to it.
    // uint public salary = 5000;

    // 2. You can initialize a variable within a constructor of contract.
    // constructor() {
        // salary = 3000;
// }

// Or you can create a setter function to simply set the the value to the variable.
    function setSalary() public {
        salary = 6000;
    }
}


