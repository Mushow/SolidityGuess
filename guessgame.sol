// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GuessingGame {
    address public owner;
    uint256 private secretNumber;
    uint256 public prizeAmount;
    bool public gameActive;

    event GameStarted(uint256 prizeAmount);
    event GameEnded(address winner, uint256 prizeAmount);
    event GuessMade(address player, uint256 guessedNumber);

    constructor() {
        owner = msg.sender;
        gameActive = false;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function startGame(uint256 _secretNumber) public payable onlyOwner {
        require(!gameActive, "Game is already active");
        require(msg.value > 0, "Prize amount must be greater than zero");

        secretNumber = _secretNumber;
        prizeAmount = msg.value;
        gameActive = true;

        emit GameStarted(prizeAmount);
    }

    function guessNumber(uint256 guessedNumber) public {
        require(gameActive, "Game is not active");
        require(prizeAmount > 0, "No prize amount set");

        emit GuessMade(msg.sender, guessedNumber);

        if (guessedNumber == secretNumber) {
            payable(msg.sender).transfer(prizeAmount);
            gameActive = false;
            emit GameEnded(msg.sender, prizeAmount);
        }
    }

    function endGame() public onlyOwner {
        require(gameActive, "Game is not active");
        gameActive = false;
        emit GameEnded(address(0), prizeAmount);
        payable(owner).transfer(address(this).balance);
    }

    receive() external payable {}
}
