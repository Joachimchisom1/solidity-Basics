// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract learnPayable {

    address payable owner = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    function deposit() public payable {}

    function getBal() public view returns(uint) {
        return address(this).balance;
    }

    // function to transfer 2 ether to 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2.
    function sendEther() public {
        owner.transfer(2 ether);
    }
}