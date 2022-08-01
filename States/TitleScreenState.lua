TitleScreenState = Class{__includes = BaseState}



function TitleScreenState:mouse_pressed(x,y)
  if(x>300 and x<400 and y>200 and y<250)then
    gStateMachine:change('play')
  end
  if(x>225 and x<475 and y>400 and y<450)then
    gStateMachine:change('instruction')
  end
  if(x>300 and x<400 and y>600 and y<650)then
    love.event.quit()
  end
  if(x>200 and x<500 and y>500 and y<550)then
    gStateMachine:change('level select')
  end
end


function TitleScreenState:enter()

end

function TitleScreenState:init()

end

function TitleScreenState:update(dt)

end

function TitleScreenState:render()
    love.graphics.printf("TitileScreenState",100,10,500,"center")
    love.graphics.rectangle("line",300,200,100,50)
    love.graphics.printf("play",300,200,100,"center")
    love.graphics.rectangle("line",225,400,250,50)
    love.graphics.printf("instructions",225,400,250,"center")
    love.graphics.rectangle("line",200,500,300,50)
    love.graphics.printf("level select",200,500,300,"center")
    love.graphics.rectangle("line",300,600,100,50)
    love.graphics.printf("exit",300,600,100,"center")
end

function TitleScreenState:exit()

end
