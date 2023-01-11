---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by aleksandra.
--- DateTime: 10/01/2023 23:41
---

local Player = {}
Player.__index = Player


-- Function to create a new player
function Player:new(mark)
    local self = setmetatable({}, Player)
    self.mark = mark
    return self
end


-- Player turn function
function Player:get_move(board)
    -- Get input from the player for their next move
    print("Your turn. Write the row and column number")
    local x = io.read("*number")
    local y = io.read("*number")
    -- Check if the move is valid
    while not board:is_valid_move(x, y) do
        print("Invalid move. Please try again.")
        x = io.read("*number")
        y = io.read("*number")
    end
    return x, y
end

return Player