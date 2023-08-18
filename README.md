# FunctionandErrors


This repository contains a basic Solidity smart contract named `ERRORS`. This contract demonstrates the usage of `require`, `assert`, and `revert` statements to enforce conditions and handle errors within a smart contract.

## Contract Overview

The `SimpleSmartContract` is a basic contract with the following functionalities:

1. **Constructor**: Initializes the contract by setting the contract deployer's address as the owner and the initial value to 0.

2. **setValue**: Allows the owner to set a new value, but only if the new value is greater than the current value. It utilizes `require` statements to enforce the conditions.

3. **assertExample**: Illustrates the use of the `assert` statement to validate a condition and revert the transaction if the condition is false.

4. **revertExample**: Demonstrates how the `revert` statement can be used to revert a transaction with a custom error message.

## Usage

1. Deploy the `SimpleSmartContract` on an Ethereum network that supports Solidity version 0.8.0 or compatible versions.

2. Interact with the contract using the functions described above.

    - Use the `setValue` function to set a new value, ensuring that the sender is the owner and the new value is greater than the current value.
    
    - Call the `assertExample` function, passing two integers. The function will add the integers if they are not equal; otherwise, the transaction will revert.
    
    - Call the `revertExample` function to see how a transaction can be reverted with a custom error message.

3. Ensure that you have a suitable development environment set up, such as [Remix](https://remix.ethereum.org/) or [Truffle](https://www.trufflesuite.com/truffle), to compile, deploy, and interact with the smart contract.



## License

This project is licensed under the [MIT License](LICENSE).
