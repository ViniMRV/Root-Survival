chest = {img = love.graphics.newImage("assets/chest/teste.jpg")}

chest.__index = chest

require("items")
player = require("player")

active_chests = {}

function chest.create(x,y,content)

    new_chest = {
       x = x,
       y = y,
       content = content,
       state = "closed"
    }

    new_chest.body = love.physics.newBody(world,new_chest.x,new_chest.y,'static')
    new_chest.shape = love.physics.newCircleShape(radius)
    new_chest.fixture = love.physics.newFixture(new_chest.body,new_chest.shape,1)
    new_chest.fixture:setFriction(0)
    new_chest.fixture:setUserData("chest")
    new_chest.body:setFixedRotation(true)

    table.insert(active_chests,new_chest)
end


function chest.draw()
    for i,chest in ipairs(active_chests) do
        local x,y = chest.body:getPosition()
        love.graphics.circle("fill",x,y,30)
    end
end

function chest:open()
    self.state = "opened"
end

function beginContact(a, b, coll)
	
end

function endContact(a, b, coll)
	
end

function chest.load()
    chest.create(400,400,{type = "buff"})
end

return chest