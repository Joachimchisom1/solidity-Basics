// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// 1.  PUBLIC
// contract initialContract {

// // Public Visibility function
//      //1.  We can use it every where,
//     // 2.  Inside the contract,
//     // 3.  Deriving contract.
//     // 4.  Other contract.  
//     function publicFunction() public pure returns(string memory) {
//         return "public";
//     }

//     string public pub = publicFunction();
// }

// // 3.  Deriving contract.
// contract second is initialContract {

// }

//  // 4.  Other contract.  
//  contract second1 {
//      initialContract i = new initialContract();
//      string public call = i.publicFunction();
// 



// // 2. PRIVATE

// contract initialContract {
//     // 1. We only can use it inside the contract where it's placed.
//     // 2. Neither derived nor other contracts.

//     function privateFunction() private pure returns(string memory) {
//         return "private";
//     }

//     string public pri = privateFunction();
// }



// // 3. INTERNAL

// contract initialContract {
//     // 1. We  can use it inside the contract.
//     // 2. Also Deriving Contract.
//     // 3. Not in other contract

//     function internalFunction() internal pure returns(string memory) {
//         return "internal";
//     }

//     string public inter = internalFunction();
// }

// // // 2.  Deriving contract.
// contract second is initialContract {
//     string public call = internalFunction();
// }

// 4. EXTERNAL

contract initialContract {
    // 1. DerivED Contract.
    // 2. other contract
    // 3. bUT NOT INSIDE THE CONTRACT

    function externalFunction() external pure returns(string memory) {
        return "external";
    }

    // string public inter = externalFunction();
}

//  Deriving contract.
contract second {
     initialContract i = new initialContract();
     string public call = i.externalFunction();
}