The `main.lua` script is the entry point of the application. It sets up and starts the game loop, where the game interacts with the user and handles the game logic.

The script starts by using the require function to load the game.lua module.
Next, it creates a new instance of the Game class by calling the Game:new() function.
Finally, the script starts the game by calling the game:start() function. This function should start the game loop, where the game interacts with the user and handles the game logic.

Dependencies

The main.lua script has a dependency on the game.lua script, which must be located in the same directory as the main.lua script, or the path to the game.lua file must be specified correctly in the require statement.

How to run

To run the main.lua script, you will need a Lua interpreter installed on your system, such as LuaJIT or Lua 5.x. You can then run the script by navigating to the directory where the script is located and running the command lua main.lua in a terminal or command prompt.

If you are using windows, you can use pre-built executable with lua interpreter included, that way you will not need to install lua runtime.

Troubleshooting

Make sure that you have the right dependencies installed and loaded in the right order
Check that all the files are in the right place and that the paths to the required files are correct
Double check that you are running the script with a Lua interpreter

