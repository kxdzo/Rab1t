require("level")
require("game_over")

--sets window stuffs
love.window.setTitle("Tank-Rabbit")
love.graphics.setDefaultFilter("nearest","nearest")

game_state = 1 --0 for menu, 1 for game, 2 for game_over

function love.load()
    if game_state==1 then
        level_init()
    elseif game_state==2 then
        over_init()
    end
end

function love.update(dt)
    if game_state==1 then
        level_update(dt)
    else
        over_draw(dt)
    end
end

function love.draw()
    if game_state==1 then
        level_draw()
    elseif game_state==2 then
        over_draw()
    end
end