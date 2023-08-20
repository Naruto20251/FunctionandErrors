// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    address public admin;
    mapping(address => bool) public hasVoted;
    uint256 public totalVotes;
    uint256 public maxTotalVotes = 1000; // Maximum allowed total votes

    constructor() {
        admin = msg.sender;
        totalVotes = 0;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only the admin can call this function");
        _;
    }

    function vote() public {
        // Check if the sender has already voted
        require(!hasVoted[msg.sender], "You have already voted");
        
        // Check if the sender's address is valid
        require(msg.sender != address(0), "Invalid sender address");

        // Ensure that the totalVotes does not exceed the maximum limit
        require(totalVotes < maxTotalVotes, "Maximum total votes reached");

        hasVoted[msg.sender] = true;
        totalVotes += 1;
        
        // Use assert to check that totalVotes does not overflow
        assert(totalVotes <= maxTotalVotes);
    }

    function closeVoting() public onlyAdmin {
        // Ensure that the admin can only close the voting once
        require(admin != address(0), "Voting is already closed");
        admin = address(0);
        
        // Use revert to indicate the closing of voting
        revert("Voting is closed");
    }
}
