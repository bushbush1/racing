-- initializing all the variables that maybe needed in this game.
worldGravity = 0;

------------------------------------------------------------------------------Player initializing Starts Here ------------------------------------------------------------------------------------------------------------------------------------------------------
player1Moving = false
player2Moving = false

player1 = {}
player1X = 350
player1Y = 100

player2Moving = false

player2 = {}
player2X = 500
player2Y = 500
player2R = 40

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function love.load()
    wf = require "libraries/windfield"  
    
    world  = wf.newWorld(0, worldGravity) -- this second pararmeter is the gravity in the world

     player1 = world:newRectangleCollider(player1X,player1Y,80, 80) 

     player2 = world:newCircleCollider(player2X,player2Y,player2R)

     ground = world:newRectangleCollider(50,600,600,100)
     ground:setType('static')

end

function love.update(dt)
    
    -- basic player one mvoement
    if love.keyboard.isDown('left')then
        player1:applyForce(-5000,0)
    end
    if love.keyboard.isDown('right')then
        player1:applyForce(5000,0)
    end
    if love.keyboard.isDown('up')then
        player1:applyForce(0,-5000)
    end
    if love.keyboard.isDown('down')then
        player1:applyForce(0,5000)
    end

    -- basic player two movement
    if love.keyboard.isDown('w')then
        player2:applyForce(0,-5000)
    end
    if love.keyboard.isDown('s')then
        player2:applyForce(0,5000)
    end
    if love.keyboard.isDown('a')then
        player2:applyForce(-5000,0)
    end
    if love.keyboard.isDown('d')then
        player2:applyForce(5000,0)
    end



    world:update(dt)
end

function love.draw()
    world:draw()
end

