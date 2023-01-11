local Game = {}
Game.__index = Game
local Board = require "board"
local Player = require "player"
local AI = require "ai"

function Game:new()
    local self = setmetatable({}, Game)
    print("Choose board size (3 or 5)")
    local size = io.read("*number")
    while size ~= 3 and size ~= 5 do
        print("Invalid choice. Please choose 3 or 5")
        size = io.read("*number")
    end
    self.board = Board:new(size)

    print("Choose game mode (1 for player vs player, 2 for player vs computer, 3 for computer vs computer)")
    local mode = io.read("*number")
    while mode ~= 1 and mode ~= 2 and mode ~= 3 do
        print("Invalid choice. Please choose 1, 2, or 3")
        mode = io.read("*number")
    end
    self.mode = mode
    if self.mode == 1 then
        self.player1 = Player:new('X')
        self.player2 = Player:new('O')
    elseif self.mode == 2 then
        self.player1 = Player:new('X')
        self.player2 = AI:new('O')
    elseif self.mode == 3 then
        self.player1 = AI:new('X')
        self.player2 = AI:new('O')
    end
    return self

end


function Game:start()

    local currentPlayer = self.player1
    while true do
        self.board:print() -- print the current state of the board
        local x, y
        if currentPlayer == self.player1 then
            x, y = self.player1:get_move(self.board)
        else
            x, y = self.player2:get_move(self.board)
        end

        self.board:make_move(x, y, currentPlayer.mark)

        local winner = self.board:check_for_win()
        if winner ~= nil then
            self.board:print()
            print("The winner is " .. winner)
            break
        elseif self.board:is_full() then
            self.board:print()
            print("It's a draw!")
            break
        end
        if currentPlayer == self.player1 then
            currentPlayer = self.player2
        else
            currentPlayer = self.player1
        end
    end
end


return Game