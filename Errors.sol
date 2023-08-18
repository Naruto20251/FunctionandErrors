// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Errors {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
        value = 0;
    }

    function setValue(uint256 _newValue) external {
        // The sender must be the owner of the contract
        require(msg.sender == owner, "Only the owner can set the value");

        // The new value must be greater than the current value
        require(_newValue > value, "New value must be greater than current value");

        value = _newValue;
    }

    function assertExample(uint256 _x, uint256 _y) external pure returns (uint256) {
        // Assert that the condition is true, otherwise the contract will revert
        assert(_x != _y);
        
        return _x + _y;
    }

    function revertExample() external pure {
        // Revert the transaction with a custom error message
        revert("This transaction is being reverted");
    }
}
