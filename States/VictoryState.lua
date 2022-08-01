VictoryState = Class{__includes = BaseState}


function VictoryState:enter()

end

function VictoryState:mouse_pressed(x, y)
    if x > 300 and x < 400 and y > 300 and y < 350 then
        gStateMachine:change('title')
    end
    if x > 225 and x < 475 and y > 400 and y < 450 then
        gStateMachine:change('level select')
    end
    if x > 300 and x < 400 and y > 500 and y < 550 then
        love.event.quit()
    end

end


function VictoryState:init()

end


function VictoryState:update(dt)

end

function VictoryState:render()
    love.graphics.printf("Victory State", 100, 10, 500, "center")
    love.graphics.rectangle("line", 225, 300, 300, 50)
    love.graphics.printf("main menu", 225, 300, 300, "center")
    love.graphics.rectangle("line", 225, 400, 250, 50)
    love.graphics.printf("Level Select", 225, 400, 250, "center")
    love.graphics.rectangle("line", 300, 500, 100, 50)
    love.graphics.printf("exit", 300, 500, 100, "center")

end

function VictoryState:exit()

end
