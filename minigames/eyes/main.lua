function love.draw()
    function drawEye(eyeX, eyeY)
        local distanceX = love.mouse.getX() - eyeX
        local distanceY = love.mouse.getY() - eyeY
        local distance = math.min(math.sqrt(distanceX^2 + distanceY^2), 30)
        local angle = math.atan2(distanceY, distanceX)

        local pupilX = eyeX + (math.cos(angle) * distance)
        local pupilY = eyeY + (math.sin(angle) * distance)

        love.graphics.setColor(1, 1, 1)
        love.graphics.circle('fill', eyeX, eyeY, 50)

        love.graphics.setColor(0, 25, 100)
        love.graphics.circle('fill', pupilX, pupilY, 15)
    end

    drawEye(200, 200)
    drawEye(330, 200)
end