// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/MBD.sol";

contract MBDTest is Test {
    MBD mbd;
    function setUp() public {
        mbd = MBD(address(this));
    }

    function testOwner() public {
        assertTrue(mbd.owner() == address(this));
    }
}
