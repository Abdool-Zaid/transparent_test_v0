-- Fragment shader
fragment_shader = [[
    uniform float transparency; -- Uniform variable for transparency

    vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords)
    {
        vec4 pixel = Texel(texture, texture_coords);
        return vec4(pixel.r, pixel.g, pixel.b, pixel.a * transparency); -- Apply transparency
    }
]]
