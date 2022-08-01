PlayState = Class{__includes = BaseState}



function PlayState:init()
end

function PlayState:enter()

end


function PlayState:update(dt)

end

function PlayState:render()
    love.graphics.printf("PlayState", 175, 10, 500, "center")
    love.graphics.rectangle("line", 225, 300, 300, 50)
    love.graphics.printf("Victory State", 225, 300, 300, "center")
end
--------------------------------------------------------------------------------
function PlayState:key_released(key)

end
--------------------------------------------------------------------------------

function PlayState:mouse_pressed(x,y)
    if x > 300 and x < 550 and y > 300 and y < 350 then
        gStateMachine:change("victory")
    end
end

function PlayState:key_pressed(key)

end

function PlayState:exit()

end
