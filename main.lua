-- initializing all the variables that maybe needed in this game.
worldGravity = 0;

--player1Size = 80,80;
player1 = {}
player1.w = 350
player1.h = 100
--player2Size = 100

function love.load()
    wf = require "libraries/windfield"  
    
    world  = wf.newWorld(0, worldGravity) -- this second pararmeter is the gravity in the world

     player1 = world:newRectangleCollider(player1.w,player1.h,80, 80)
     
     ground = world:newRectangleCollider(50,600,600,100)
     ground:setType('static')

end

function love.update(dt)
    world:update(dt)
end

function love.draw()
    world:draw()
end

