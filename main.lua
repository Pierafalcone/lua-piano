
local mario = require("mario")
local keyboard = require("keyboard")

keys = {}
keys.a = "do"
keys.s = "re"
keys.d = "mi"
keys.f = "fa"        
keys.g = "sol"
keys.h = "la"
keys.j = "si"
keys.k = "doa"
keys.w = "C#3"
keys.e = "D#3"
keys.t = "F#3"
keys.y = "G#3"
keys.u = "A#3"

key_pressed = {}

color = { 0, 1, 0 }

resources = {}

speed = 50

success = love.window.setMode(800, 800, flags)

function love.load()
    resources.mario = love.graphics.newImage("mario.png")
    love.keyboard.setKeyRepeat(false)
    -- set default key state to false
    for key, value in pairs(keys) do
        key_pressed[key] = false
    end
end

function play_key(note)   
    source = love.audio.newSource(note..".wav", "static")
    love.audio.play(source)
end

function love.keypressed(key)
    color = { math.random(255) / 255, math.random(255) / 255, math.random(255) / 255 }
    key_pressed[key] = true
end

function love.keyreleased(key)
    key_pressed[key] = false
end

 function love.update(dt)
    mario.update(dt)
    -- checks if a key is pressed and plays a note
    for key, note in pairs(keys) do
        if key_pressed[key] == true then
            play_key(note)    
            -- this avoids the keys repetition
            key_pressed[key] = false 
         end
    end
end
 
 function love.draw(dt)
    love.graphics.setBackgroundColor(color)
    mario.draw()
    keyboard.draw()
end