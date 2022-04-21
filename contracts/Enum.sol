// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Enum {

    enum status {
        Pending,
        Accepted,
        Rejected
    }

    status public s1;

    function setter(status Status) public {
        s1 = Status;
    }

    function getter() public view returns(status) {
        return s1;
    }
}