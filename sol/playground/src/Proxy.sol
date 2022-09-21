// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Proxy {
   // fallback (bytes calldata) external payable returns (bytes memory) {
      
   // }
   function callwithcalldata(address vertrag, bytes memory $calldata) public payable returns (bytes memory) {
      (bool success, bytes memory $return) = vertrag.delegatecall($calldata);
      assert(success);
      return $return;
   }
}
