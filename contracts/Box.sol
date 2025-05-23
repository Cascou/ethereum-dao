// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    
    uint256 private value;
    event ValueChanged(uint256 newValue);

    constructor (address _owner) Ownable(_owner) {}
    
    function store(uint256 newValue) public {
        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrieve() public view returns (uint256) {
        return value;
    }
}
