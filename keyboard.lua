local keyboard = {}

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
    
    -- first three
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
    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 275, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)

    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 340, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)

    --three
    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 425, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)  
    
    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 483, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)

    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 540, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)

    --two
    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 625, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)

    love.graphics.setColor(0, 0 ,0)
    love.graphics.rectangle("fill", 690, 450, 35, 200)
    love.graphics.setColor(1, 1 ,1, 1)


    -- PIERA: now you can draw black keys down here :)
    -- if you cycle inside key_pressed you can check if a key is pressed or not
    -- like this key_pressed.a or key_pressed[key] if you put in a loop

end

return keyboard