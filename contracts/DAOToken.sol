// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/utils/Nonces.sol";


contract DAOToken is ERC20, ERC20Permit, ERC20Votes {
    uint256 public m_supply = 1_000_000 * 10 ** 18;

    constructor()
        ERC20("DAO Governance Token", "DAOT")
        ERC20Permit("DAO Governance Token")
    {
        _mint(msg.sender, m_supply); // Mint 1M tokens
    }
    
    function _update(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20, ERC20Votes) {
        super._update(from, to, amount);
    }

    function nonces(address owner) public view override(ERC20Permit, Nonces) returns (uint256) {
        return super.nonces(owner);
    }
}