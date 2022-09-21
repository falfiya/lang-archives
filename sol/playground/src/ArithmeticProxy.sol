// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Arithmetic.sol";
import "./Proxy.sol";

contract ArithmeticProxy {
   Arithmetic a;
   Proxy p;

   constructor () {
      a = new Arithmetic();
      p = new Proxy();
   }

   function add(uint, uint) public returns (uint) {
      return abi.decode(p.callwithcalldata(address(a), msg.data), (uint));
   }
}
