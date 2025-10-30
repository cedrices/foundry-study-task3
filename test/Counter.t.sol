// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function test_SetNumber() public {
        counter.setNumber(3);
        assertEq(counter.number(), 3);
    }

    function test_Divide() public {
        counter.setNumber(10);
        uint256 result = counter.divide(2);
        assertEq(result, 5);
    }

    function test_Multiply() public {
        counter.setNumber(5);
        uint256 result = counter.multiply(2);
        assertEq(result, 10);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);

        assertEq(counter.number(), x);
    }
}
