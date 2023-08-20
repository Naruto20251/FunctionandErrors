# VotingSystem Smart Contract

The VotingSystem smart contract is a simple Ethereum-based voting system that allows users to vote for a candidate while enforcing various rules using `require`, `assert`, and `revert` for error handling and control flow.

## Contract Overview

- **Admin**: The contract creator is the admin, responsible for managing the voting process.
- **Voters**: Each Ethereum address represents a voter. Once a voter casts a vote, they cannot vote again.
- **Total Votes**: The contract keeps track of the total number of votes cast.
- **Maximum Total Votes**: There is a predefined maximum limit of total votes that can be cast.

## Functions

### `vote()`

- Voters can call this function to cast their votes.
- Requirements:
    - The sender has not voted before.
    - The sender's address is valid.
    - The total votes have not exceeded the maximum limit.
- Effects:
    - The sender's vote is recorded.
    - The total votes count is increased.

### `closeVoting()`

- Only the admin can call this function to close the voting process.
- Requirements:
    - The admin can only close the voting once.
- Effects:
    - The admin address is set to `address(0)`, indicating that voting is closed.
    - A `revert` is triggered to indicate the closure of voting.

## Usage

1. Deploy the contract to the Ethereum network.
2. The admin allocates voting tokens to voters using the `vote()` function.
3. Voters call the `vote()` function to cast their votes.
4. The admin can close the voting process using the `closeVoting()` function.

## Error Handling

The contract uses `require` to enforce various conditions, such as preventing double voting and checking if the sender's address is valid. `assert` is used to ensure that the total votes do not overflow. `revert` is used to indicate the closure of voting by the admin.

## License

This contract is released under the MIT License. See the [LICENSE](LICENSE) file for more details.

