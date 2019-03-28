keys = {}

keys["a"] = "do"
keys["s"] = "re"
keys["d"] = "mi"
keys["f"] = "fa"        
keys["g"] = "sol"
keys["h"] = "la"
keys["j"] = "si"
keys["k"] = "doa"

color = { 1, 1, 1 }

function love.update(dt)
end

function play(note)
    source = love.audio.newSource(note..".mp3", "static")
    love.audio.play(source)
end

function love.draw(dt)
    love.graphics.setBackgroundColor(color)
    for key, note in pairs(keys) do
        if love.keyboard.isDown(key) then
            love.graphics.print(note, 100, 100)
            play(note)
        end
    end
    -- love.graphics.rectangle("fill", 30, 200, 60, 120) 
end

function love.keypressed()
    color = { math.random(255) / 255, math.random(255) / 255, math.random(255) / 255 }
end