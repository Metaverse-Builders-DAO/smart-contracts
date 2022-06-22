// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "../interfaces/IERC20.sol";

abstract contract NonTransferrableERC20 is IERC20 {
    string public name;
    string public symbol;
    uint8 public constant decimals = 18;

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    error NotSupported();

    function transferFrom(
        address,
        address,
        uint256
    ) public override pure returns (bool) {
        revert NotSupported();
    }

    function transfer(address, uint256) public override pure returns (bool) {
        revert NotSupported();
    }

    function approve(address, uint256) public override pure returns (bool) {
        revert NotSupported();
    }

    function allowance(address, address) public override pure returns (uint256) {
        return 0;
    }
}