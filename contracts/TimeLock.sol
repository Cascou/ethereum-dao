// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    constructor(
        uint256 minDelay, // Delay before execution
        address[] memory proposers, // Who can propose
        address[] memory executors,
        address admin // Who can execute
    ) TimelockController(minDelay, proposers, executors, admin) {}
}