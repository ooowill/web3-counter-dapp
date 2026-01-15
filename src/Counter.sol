// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public counter;

    event CounterIncremented(address indexed caller, uint256 newValue);

    function increment() public {
        counter += 1;
        emit CounterIncremented(msg.sender, counter);
    }
}
