InstructionState = Class{__includes = BaseState}

function InstructionState:init()

end

function InstructionState:mouse_pressed(x,y)
  if(x>300 and x<510 and y>500 and y<560)then
    gStateMachine:change('title')
  end
end

function InstructionState:render()
    love.graphics.rectangle("line",300,500,210,50)
    love.graphics.printf("InstructionState",180,10,500,"center")
    love.graphics.printf("Home",300,500,200,"center")
end
