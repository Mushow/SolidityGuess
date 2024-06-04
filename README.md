# GuessingGame Smart Contract
## Introduction
This project is a simple guessing game smart contract implemented in Solidity. The game allows an owner to start a game with a secret number and a prize amount in ETH. Players can guess the number, and if they guess correctly, they win the prize. The contract is deployed on the Sepolia testnet.

The purpose of this project is to learn more about blockchain technology and Solidity programming. This project was inspired by a challenge for an internship at Ledger, and it uses the Sepolia test network for testing and development.

## Contract Overview
The `GuessingGame` contract includes the following functionalities:

- Owner: The creator of the contract, who can start and end the game.
- Start Game: The owner can start a game by setting a secret number and prize amount.
- Guess Number: Players can guess the secret number. If they guess correctly, they win the prize.
- End Game: The owner can end the game and withdraw the remaining funds.

## Getting Started
### Prerequisites
- MetaMask: A crypto wallet & gateway to blockchain apps.
- Remix IDE: An online IDE for Solidity development.

### Setting Up MetaMask
- Add Sepolia Network:
Open MetaMask and select "**Add Network**" and "**Sepolia**"

### Getting Sepolia Test ETH

- Sepolia Faucet: Obtain Sepolia test ETH from a faucet, eg. using Alchemy/Infura.
- Request ETH: Enter your MetaMask wallet address and request some test ETH.

## Deploying the Contract
Open Remix IDE:

- Create a new file named GuessingGame.sol. Copy the contract code into the file.

1. Click on the "Solidity Compiler" tab on the left.
2. Select the appropriate compiler version (e.g., 0.8.0 or above).
3. Click the "Compile GuessingGame.sol" button.

## Deploy the Contract:

1. Click on the "Deploy & Run Transactions" tab on the left.
2. Select "Injected Provider - MetaMask" as the environment, ensuring it's connected to the Sepolia network.
3. Click the "Deploy" button and confirm the transaction in MetaMask.

### Interacting with the Contract

- Starting the Game: Open Remix and find your deployed GuessingGame contract in the "Deployed Contracts" section.
- Enter the Secret Number: Enter the secret number (e.g., 42) in the _secretNumber field.
- Set the Prize Amount: Enter the prize amount in the "**VALUE**" field (e.g., **100000000000000000** for **0.1** ETH).
- Start the Game: Click the startGame button and confirm the transaction in MetaMask.

### Making a Guess

- Enter the Guess: Enter the guessed number in the `guessNumber` field.
- Submit the Guess: Click the guessNumber button and confirm the transaction in MetaMask.
- Check Results: If the guess is correct, the prize amount will be transferred to the guesser, and the game will end.

### Ending the Game
  
- End the Game: The contract owner can end the game by clicking the endGame button.
- Withdraw Funds: Confirm the transaction in MetaMask to withdraw any remaining funds to the owner's address.

## Tracking Events

Go on the EtherScan to track your contract, transactions and events:

<img width="1420" alt="image" src="https://github.com/Mushow/SolidityGuess/assets/105550256/e9848345-42c1-46c9-ae8f-82e2755e7e0c">
<img width="1420" alt="image" src="https://github.com/Mushow/SolidityGuess/assets/105550256/d80eef66-c8f3-4497-999c-4a2562ccced7">



### Conclusion

This project provided a hands-on experience with Solidity and blockchain development on the Sepolia test network. It served as a learning exercise following an internship challenge at Ledger, helping to deepen the understanding of smart contract development and Ethereum network interactions.
