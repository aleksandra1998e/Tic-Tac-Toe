local Board = {}
Board.__index = Board


-- Function to create a new playing field
function Board:new(size)

    local self = setmetatable({}, Board)
    self.size = size
    self.win_length = size
    self.grid = {}
    for i = 1, size do
        self.grid[i] = {}
        for j = 1, size do
            self.grid[i][j] = nil
        end
    end
    return self
end


-- Player turn function (mark the cell)
function Board:make_move(x, y, mark)
    self.grid[x][y] = mark
end


-- Function of checking for a winner
function Board:check_for_win()
    -- Check rows
    for i = 1, self.size do
        local count = 1
        local mark = self.grid[i][1]
        for j = 2, self.size do
            if self.grid[i][j] == mark then
                count = count + 1
                if count == self.win_length then
                    return mark
                end
            else
                mark = self.grid[i][j]
                count = 1
            end
        end
    end

    -- Check columns
    for j = 1, self.size do
        local count = 1
        local mark = self.grid[1][j]
        for i = 2, self.size do
            if self.grid[i][j] == mark then
                count = count + 1
                if count == self.win_length then
                    return mark
                end
            else
                mark = self.grid[i][j]
                count = 1
            end
        end
    end

    -- Check diagonals
    local count = 0
    local mark = self.grid[1][1]
    for i = 1, self.size do
        if self.grid[i][i] == mark then
            count = count + 1
            if count == self.win_length then
                return mark
            end
        end 
    end

    local count = 0
    local mark = self.grid[1][self.size]
    for i = 1, self.size do
        if self.grid[i][self.size + 1 - i] == mark then
            count = count + 1
            if count == self.win_length then
                return mark
            end
        end
    end
    return nil
end


-- Function of checking the filling of he playing field
function Board:is_full()
    for i=1, self.size do
        for j=1, self.size do
            if self.grid[i][j] == nil then
                return false
            end
        end
    end
    return true
end


-- The cell free check function
function Board:is_valid_move(x, y)
    if self.grid[x][y] == nil then
        return true
    end
    return false
end


function Board:print()
    for i = 1, self.size do
        local row = ""
        for j = 1, self.size do
            if self.grid[i][j] == nil then
                row = row .. "-"
            else
                row = row .. self.grid[i][j]
            end
        end
        print(row)
    end
    print()
end


return Board
