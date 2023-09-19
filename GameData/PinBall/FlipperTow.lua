FlippersTow = {}

local Height = 20
local Width = 100

local x = (love.graphics.getWidth() / 2) + (Width / 2) - 30
local y = love.graphics.getHeight() - 50

local angle = -0.3

function FlippersTow:update(dt)
    FlipperTowMove(dt)
end

function FlipperTowMove(dt)
    if love.keyboard.isDown("right") then
        angle = 0.5
    else
        angle = -0.3
    end
end

function FlippersTow:draw()
    love.graphics.setColor(ColorSelectedForPlayerTow)

    love.graphics.push() -- Push the current transformation matrix
    love.graphics.translate(x + Width / 2, y + Height / 2) -- Translate to the center of the rectangle
    love.graphics.rotate(angle) -- Rotate around the center
    love.graphics.rectangle("fill", -Width / 2, -Height / 2, Width, Height, 10) -- Draw the rotated rectangle
    love.graphics.pop() -- Restore the previous transformation matrix
end
