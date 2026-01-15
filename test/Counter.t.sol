// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp() public {
        counter = new Counter();
    }

    function testInitialCounterIsZero() public {
        assertEq(counter.counter(), 0);
    }

    function testIncrementIncreasesCounter() public {
        counter.increment();
        assertEq(counter.counter(), 1);
    }
}

