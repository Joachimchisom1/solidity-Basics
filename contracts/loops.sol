// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract learnLoops {

    uint[4] public myArray;
    uint public range;

//    function runLoop() public {
//         // while loop
//         while(range < myArray.length) {
//             myArray[range] = range;
//             range++;
//         }
//    }

   function runLoop() public {
        // do loop
        do {
            myArray[range] = range;
            range++;
        } while (range < myArray.length);
   }

// function runForLoop() public {
//     for(uint i = range; range < myArray.length; i++) {
//         myArray[range] = range;
//         range++;
//     }
// }
}