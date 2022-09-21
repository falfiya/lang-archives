// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/ArithmeticProxy.sol";

contract ProxyTest is Test {
   Arithmetic a;
   ArithmeticProxy ap;
   function setUp() public {
      a = new Arithmetic();
      ap = new ArithmeticProxy();
   }

   function test_add() public {
      assertEq(a.add(1, 3), 4);
   }

   function test_add_proxy() public {
      assertEq(ap.add(1, 3), 4);
   }
}
