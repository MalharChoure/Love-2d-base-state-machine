WINDOW_WIDTH = 800
WINDOW_HEIGHT = 800
here=0

-- Require Files --
Class = require 'class'
require 'States/BaseState'
require 'StateMachine'
require 'States/TitleScreenState'
require 'States/VictoryState'
require 'States/InstructionState'
require 'States/PlayState'
require 'States/LevelSelectState'
push = require "push"

--------------------------------------------------------------------------------requiring necessary libraries
wf= require 'libraries/windfield/windfield'
anim8=require 'libraries/anim8/anim8'
sti= require 'libraries/Simple-Tiled-Implementation/sti'
--------------------------------------------------------------------------------



function love.load()
  wind_x,wind_y=love.window.getMode()
  love.window.setTitle("States Exosceleton")
  push:setupScreen(WINDOW_WIDTH, WINDOW_HEIGHT,wind_x,wind_y,{
      vsync = true,
      fullscreen = true,
      resizable = true,
      pixelperfect=false, highdpi = true ,stretched = false
  })
  love.graphics.setFont(love.graphics.newFont(40))
  gStateMachine=StateMachine
 {
   ['title']= function() return TitleScreenState() end,
   ['play']= function() return PlayState() end,
   ['instruction']= function() return InstructionState() end,
   ['victory']= function() return VictoryState() end,
   ['level select']= function() return LevelSelectState() end

 }
 gStateMachine:change('title')
love.mouse.buttonsPressed = {}
keyboard_check={}

end

function love.resize(w,h)
  push:resize(w,h)
end

function love.update(dt)
  gStateMachine:update(dt)
  love.mouse.buttonsPressed = {}
  keyboard_check={}
end


function love.mousepressed(x, y, button, isTouch)
  love.mouse.buttonsPressed[button] = true
  x1,y1=push:toGame(x,y)

  if x1~=nil and y1~=nil then
     gStateMachine:mouse_pressed(x1,y1)
  end
end

function love.keypressed(key, scancode, isrepeat)
  keyboard_check[key]=true
  -- if key == 'escape' then
  --   love.event.quit()
  -- end
  gStateMachine:key_pressed(key)
end

function Keyboard_was_Pressed(key)
  if keyboard_check[key] then
    return true
  else
    return false
  end
end

function love.mouse.wasPressed(button)
    if love.mouse.buttonsPressed[button] then
      return true
    else
      return false
    end
end

function love.keyreleased(key)
  gStateMachine:key_released(key)
end


function love.draw()
   push:start()
   gStateMachine:render()
   --love.graphics.print(here)
   push:finish()
end
