local keyboard = {}

-- keys colors
local PRESSED_COLOR = { 1, 0, 0 }
local WHITE = { 1, 1, 1 }
local BLACK = { 0, 0, 0 }

function get_note_by_id(id)
    return keys[keys[id]].note
end

function check_pressed_by_id(id)
    return keys[keys[id]].pressed
end

function check_pressed_by_note(note)
    return keys[note].pressed
end

function set_color_based_on_key_pressed(id, default_color)
    if check_pressed_by_id(id) == false then
        love.graphics.setColor(default_color)
    else
        love.graphics.setColor(PRESSED_COLOR)
    end
end

function keyboard.draw(dt)
    -- white_key options
    local white_key = {}
    white_key.width = 50
    white_key.height = 300
    white_key.offset = 10
    -- board options
    local board = {}
    board.start_x = 0
    board.start_y = 450
    -- draw white keys
    for i = 1, 14 do
        love.graphics.rectangle(
            "fill", 
            board.start_x + (white_key.width) * i, 
            board.start_y, 
            white_key.width, 
            white_key.height)
        
        love.graphics.setColor(0, 0 ,0)
        love.graphics.rectangle(
            "line", 
            board.start_x + (white_key.width) * i, 
            board.start_y, 
            white_key.width, 
            white_key.height)
        love.graphics.setColor(1, 1 ,1, 1)
    end
    -- draw text over white keys
    white_key.text_x = 21 + (white_key.width * 4)
    white_key.text_y = 250
    for i = 1, 8 do
        love.graphics.setColor(0, 0, 0, 1)
        love.graphics.print(
            keys[i], 
            board.start_x + white_key.text_x + (white_key.width) * i, 
            board.start_y + white_key.text_y)
    end
    
    -- first three
    love.graphics.setColor(0, 0 ,0)
    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 75, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1) 
    
    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 133, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)

    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 190, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)

    --two
    set_color_based_on_key_pressed(9, BLACK)
    love.graphics.rectangle("fill", 275, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)
    love.graphics.print("w", 287, 550) 

    set_color_based_on_key_pressed(10, BLACK)
    love.graphics.rectangle("fill", 340, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)
    love.graphics.print("e", 354, 550)

    --three
    set_color_based_on_key_pressed(11, BLACK)
    love.graphics.rectangle("fill", 425, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)  
    love.graphics.print("t", 440, 550)
    
    set_color_based_on_key_pressed(12, BLACK)
    love.graphics.rectangle("fill", 483, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)
    love.graphics.print("y", 496, 550)

    set_color_based_on_key_pressed(13, BLACK)
    love.graphics.rectangle("fill", 540, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)
    love.graphics.print("u", 554, 550)

    --two
    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 625, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)

    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 690, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)
end

return keyboard