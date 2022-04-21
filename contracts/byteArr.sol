// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract byteArr {

    // // fixed sized byte array
    // bytes4 public myByteArr;

    // function setByteArr() public {
    //     myByteArr = "xyz";
    // }

    // dynamic sized byte array
    bytes public dynamicSizedByte;

    function push() public {
        dynamicSizedByte.push('a');
    }

    function getValue(uint value) public view returns(bytes1) {
        return dynamicSizedByte[value];
    }
}