// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function get() public view returns (uint256) {
        return number;
    }

    function divide(uint256 divisor) public view returns (uint256) {
        require(divisor != 0, "Cannot divide by zero");
        return number / divisor;
    }

    function multiply(uint256 multiplier) public view returns (uint256) {
        return number * multiplier;
    }
}
