// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.13;

import "./utils/NonTransferrableERC20.sol";
import "./utils/Ownable.sol";

contract MBD is NonTransferrableERC20, Ownable {
    uint256 public override totalSupply;
    mapping(address => uint256) private _balances;

    constructor(address owner_)
        NonTransferrableERC20("Metaverse Builders DAO", "MBD")
        Ownable(owner_)
    {
    }

    event Mint(address to, uint256 amount);
    event Burn(address from, uint256 amount);

    function balanceOf(address account) external override view returns(uint256) {
        return _balances[account];
    }

    /// @dev This is called by the multisig to increase voting rights from an address
    function mint(address to, uint256 amount) external onlyOwner {
        totalSupply += amount;
        _balances[to] += amount;

        emit Mint(to, amount);
    }

    /// @dev This is called by the multisig to remove voting rights from an address
    function burnFrom(address from, uint256 amount) external onlyOwner {
        totalSupply -= amount;
        _balances[from] -= amount;

        emit Burn(from, amount);
    }
}