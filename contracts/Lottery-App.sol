// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Lottery {

    address public owner;
    address payable[] public players;

    constructor() {
        owner = msg.sender;
    }

    // function to receive the  payment from the players
    receive() external payable {
         require(msg.value >= 500 wei, "You cannot participate with low balance");
        players.push(payable(msg.sender));
    }

    // function to get balance of the contract
    function getBalance() public view returns(uint) {
        require(msg.sender == owner, "You are not the owner of the Lottery");
        return address(this).balance;
    }

    // generate random numbers
    function random() public view returns(uint) {
       return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp, players.length)));
    }

    function announceWinner() public {
         require(msg.sender == owner, "You are not the owner of the Lottery");
         require(players.length >= 3, "Players must be at least 3 or greater");
         address payable winner;
         uint callRandom = random();
         uint index = callRandom % players.length;
         winner = players[index];
         winner.transfer(getBalance());
        //  resets the lottery after announcing the Winner
         players = new address payable[](0);
    }

}