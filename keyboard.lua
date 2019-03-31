local keyboard = {}

function keyboard.draw(dt)
    -- white_key options
    local white_key = {}
    white_key.width = 50
    white_key.height = 160
    white_key.offset = 10
    -- board options
    local board = {}
    board.start_x = 30
    board.start_y = 600
    -- draw white keys
    for i = 1, 7 do
        love.graphics.rectangle(
            "fill", 
            board.start_x + (white_key.width + white_key.offset) * i, 
            board.start_y, 
            white_key.width, 
            white_key.height)
    end

    -- PIERA: now you can draw black keys down here :)
    -- if you cycle inside key_pressed you can check if a key is pressed or not
    -- like this key_pressed.a or key_pressed[key] if you put in a loop

end

return keyboard