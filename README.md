# Tic-Tac-Toe Tech Test

<a href="https://codeclimate.com/github/Ben-893/tic-tac-toe/maintainability"><img src="https://api.codeclimate.com/v1/badges/e48960bcc81e41a6f756/maintainability" /></a>

## To setup
```
git clone https://github.com/Ben-893/tic-tac-toe.git && cd tic-tac-toe
bundle
```
Uncomment the following line to the bottom of ``tictactoe.rb``
```
TicTacToe.new.run
```
## To run
```
ruby './libtictactoe.rb'
```

## Requirements

- The goal is to write a program that lets two humans play Tic-Tac-Toe against each other.

- Implement a command line interface that lets the humans play the game by typing commands into the terminal.

- Players should be able to input their moves.

- The board should be shown after each move.

- The game should announce the result of the game when it's over.

## Rules of Tic-Tac-Toe
```
O X X
X X O
O X O
```
- There are two players in the game (X and O).

- The board is 9 positions in a 3x3 grid.

- Players take turns until the game is over.

- A player can claim a position if it is not already taken.

- A turn ends when a player claims a position.

- A player wins if they make a line by claiming 3 boxes in a row, 3 positions in a column, or 3 positions in a diagonal.

- If all positions are taken and neither player has a line, the game is a draw.