local mario = require("mario")
local keyboard = require("keyboard")

keys = {}

keys["a"] = "do"
keys["s"] = "re"
keys["d"] = "mi"
keys["f"] = "fa"        
keys["g"] = "sol"
keys["h"] = "la"
keys["j"] = "si"
keys["k"] = "doa"

color = { 0, 0, 0 }

resources = {}

speed = 50

success = love.window.setMode(800, 800, flags)

function love.load()
    resources.mario = love.graphics.newImage("mario.png")
end

function love.update(dt)
   mario.update(dt)
end

function play(note)
    source = love.audio.newSource(note..".mp3", "static")
    love.audio.play(source)
    --love.graphics.draw(resources.mario, math.random(0, 500), math.random(0, 500))
end

function love.draw(dt)
    love.graphics.setBackgroundColor(color)
    for key, note in pairs(keys) do
        if love.keyboard.isDown(key) then
            love.graphics.print(note, 100, 100)
            --love.graphics.rectangle("fill", 30, 200, 60, 120)
            play(note)     
        end
    end
    mario.draw()
    keyboard.draw()
end

function love.keypressed()
    color = { math.random(255) / 255, math.random(255) / 255, math.random(255) / 255 }
end

function love.keyreleased(key)
 end
