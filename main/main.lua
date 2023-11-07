local Str = require("./test/temp")

function love.load()
    Bg_A1 = love.graphics.newImage("assets/alfa1.png")
    Bg_A0 = love.graphics.newImage("assets/alfa0.png")

    -- Load the fragment shader
    local fragmentShaderCode = love.filesystem.read("fragment.glsl")

    -- Create a shader object
    shader = love.graphics.newShader(fragmentShaderCode)

    -- Set the transparency value (0.0 for fully transparent, 1.0 for fully opaque)
    shader:send("transparency", 0.0)
end

function love.draw()
    love.graphics.setShader(shader)
    -- Draw the background or other objects affected by the shader here

    -- Reset the shader to draw other objects without the shader
    love.graphics.setShader()
end
