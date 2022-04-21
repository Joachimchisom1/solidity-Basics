// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

struct Employee{
    string name;
    string skills;
    int salary;
}

contract structDatatype {

    Employee public emp;

    constructor(string memory name, string memory skills, int salary) {
        emp.name = name;
        emp.skills = skills;
        emp.salary = salary;
    }

    function changeEmployeeData(string memory name, string memory skills, int salary) public {
        Employee memory empl = Employee({
            name: name,
            skills: skills,
            salary: salary
        });
        emp = empl;
    }
}