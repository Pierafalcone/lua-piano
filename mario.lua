local mario = {}

mario.x = 100
mario.y = 100
function love.load()
	mario = love.graphics.newImage("mario.png")
	
end

function mario.update(dt)
    if love.keyboard.isDown("d") then
        mario.x = mario.x + (speed * dt)
    end
    if love.keyboard.isDown("a") then
        mario.x = mario.x - (speed * dt)
    end
    if love.keyboard.isDown("w") then
        mario.y = mario.y - (speed * dt)
    end
    if love.keyboard.isDown("s") then
        mario.y = mario.y + (speed * dt)
    end
end

function mario.draw(dt)
    love.graphics.draw(resources.mario, mario.x, mario.y)
end

return mario