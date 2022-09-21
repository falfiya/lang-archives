// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Test {
   function with(bytes memory bytecode) public {
      address hello;
      bytes memory res;
      assembly {
         mstore(0, bytecode)
         hello := create(0, 0xa0, calldatasize())
         res := staticcall(gas(), hello, 0, 0, 0, 0)
      }
   }
}
