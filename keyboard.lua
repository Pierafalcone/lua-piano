local keyboard = {}

function keyboard.draw(dt)
    -- key options
    local key = {}
    key.width = 50
    key.height = 160
    key.offset = 10
    -- board options
    local board = {}
    board.start_x = 30
    board.start_y = 600
    -- draw keys
    for i = 1, 7 do
        love.graphics.rectangle(
            "fill", 
            board.start_x + (key.width + key.offset) * i, 
            board.start_y, 
            key.width, 
            key.height)
    end
end

return keyboard