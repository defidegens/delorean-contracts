pragma solidity 0.5.17;

import "../lib/SafeMath.sol";

// Storage for a DMC token
contract DMCTokenStorage {

    using SafeMath for uint256;

    /**
     * @dev Guard variable for re-entrancy checks. Not currently used
     */
    bool internal _notEntered;

    /**
     * @notice EIP-20 token name for this token
     */
    string public name;

    /**
     * @notice EIP-20 token symbol for this token
     */
    string public symbol;

    /**
     * @notice EIP-20 token decimals for this token
     */
    uint8 public decimals;

    /**
     * @notice Governor for this contract
     */
    address public gov;

    /**
     * @notice Pending governance for this contract
     */
    address public pendingGov;

    /**
     * @notice Total supply of DMCs
     */
    uint256 public totalSupply;

    mapping (address => uint256) internal _DMCBalances;

    mapping (address => mapping (address => uint256)) internal _allowedFragments;
}
