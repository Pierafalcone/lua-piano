
local mario = require("mario")
local keyboard = require("keyboard")

keys = { "a", "s", "d", "f", "g", "h", "j", "k", "w", "e", "t", "y", "u" }

for key, value in pairs(keys) do
    keys[value] = {}
    keys[value].pressed = false
    keys[value].play = false
end

keys.a.note = "do"
keys.s.note = "re"
keys.d.note = "mi"
keys.f.note = "fa"        
keys.g.note = "sol"
keys.h.note = "la"
keys.j.note = "si"
keys.k.note = "doa"
keys.w.note = "C#3"
keys.e.note = "D#3"
keys.t.note = "F#3"
keys.y.note = "G#3"
keys.u.note = "A#3"

key_pressed = {}

color = { 0, 1, 0 }

resources = {}

success = love.window.setMode(800, 800, flags)

function love.load()
    resources.mario = love.graphics.newImage("mario.png")
    love.keyboard.setKeyRepeat(false)
end

function play_key(note)   
    source = love.audio.newSource(note..".wav", "static")
    love.audio.play(source)
end

function love.keypressed(key)
    color = { math.random(255) / 255, math.random(255) / 255, math.random(255) / 255 }
    -- if key is valid
    if keys[key] ~= nil then
        keys[key].pressed = true
    end
end

function love.keyreleased(key)
    -- if key is valid
    if keys[key] ~= nil then
        keys[key].pressed = false
    end
end

 function love.update(dt)
    mario.update(dt)
    -- checks if a key is pressed and plays a note
    for key, note in pairs(keys) do
        if note.pressed == true and note.play == false then
            play_key(note.note)
            -- this avoids the keys repetition
            note.play = true
         end
         -- reset play state
         if note.pressed == false and note.play == true then
            note.play = false
         end
    end
end
 
 function love.draw(dt)
    love.graphics.setBackgroundColor(color)
    mario.draw()
    keyboard.draw()
end