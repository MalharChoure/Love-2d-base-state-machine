LevelSelectState = Class{__includes = BaseState}


function LevelSelectState:init()

end

function LevelSelectState:update()

end

function LevelSelectState:mouse_pressed(x,y)
  if(x>500 and x<700 and y>500 and y<550)then
    gStateMachine:change('play')
  end
  if(x>180 and x<390 and y>500 and y<550)then
    gStateMachine:change('title')
  end
end

function LevelSelectState:render()
  love.graphics.printf("LevelSelectState",180,10,500,"center")
  love.graphics.rectangle("line",500,500,200,50)
  love.graphics.rectangle("line",180,500,210,50)
  love.graphics.printf("PlayState",505,500,200,"left")
  love.graphics.printf("MainMenu",180,500,250,"left")
end
