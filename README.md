# Tic Tac Toe Game

A simple Tic Tac Toe game with customizable settings and different game modes. 

## Requirements

- LuaJIT or Lua 5.x
- Lua modules: game, board, player and ai

## Getting Started

1. Download or clone the repository
2. Run the main.lua file by using the command `lua main.lua` or by double clicking on the file if your operating system is configured to open .lua files with lua interpreter

## Game settings
- You can choose the board size between 3x3 and 5x5
- You can choose the number of cells in a row necessary for winning depends on board size. (3x3 - 3 in a row; 5x5 - 5 in a row)
- You can choose between 3 game modes :
  - player against player
  - player against computer
  - computer against computer

## Troubleshooting
- Make sure that you have the right dependencies installed and loaded in the right order
- Check that all the files are in the right place and that the paths to the required files are correct
- Double check that you are running the script with a Lua interpreter

## Dependencies
This project is depend on the following Lua files, they should be located in the same directory or specified correctly in the require statement
- game.lua
- board.lua
- player.lua
- ai.lua
