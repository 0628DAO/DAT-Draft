// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/**
 * @title DAT — Provisional Draft
 * @notice OP Mainnet ERC-20 draft for a future DAT deployment.
 *
 * Confirmed DAT information and provisional policy:
 * - Token name: DAT
 * - Token symbol: DAT
 * - Fixed initial supply: 1,000,000,000 DAT
 * - Intended network: OP Mainnet (Optimism, Ethereum Layer 2)
 * - Decimals: 18 (OpenZeppelin ERC20 default)
 * - Transfer / buy / sell tax: 0%
 * - No rewards or reflection
 * - No later minting
 * - Holders may burn only their own tokens
 * - EIP-2612 Permit support
 * - No owner, administrator, pause, upgrade or proxy authority
 * - dApp-specific logic remains in separate protocol contracts
 *
 * USPTO application preparation is an off-chain project matter and is not
 * represented as an on-chain right, registration or guarantee in this code.
 *
 * Not audited. Not deployed.
 */
contract DAT_Draft is ERC20, ERC20Permit {
    uint256 public constant INITIAL_SUPPLY_UNITS = 1_000_000_000;
    uint256 public constant INITIAL_SUPPLY = INITIAL_SUPPLY_UNITS * 10 ** 18;

    error ZeroInitialRecipient();

    constructor(address initialRecipient)
        ERC20("DAT", "DAT")
        ERC20Permit("DAT")
    {
        if (initialRecipient == address(0)) revert ZeroInitialRecipient();

        // The fixed supply is created once at deployment. No minting route
        // exists after construction.
        _mint(initialRecipient, INITIAL_SUPPLY);
    }

    /**
     * @notice Permanently destroys DAT owned by the caller.
     * @dev No burnFrom function is provided, so nobody can burn another
     *      holder's DAT, including through an allowance.
     */
    function burn(uint256 amount) external {
        _burn(_msgSender(), amount);
    }
}
