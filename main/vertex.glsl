-- Vertex shader
vertex_shader = [[
    varying vec4 v_color;
    varying vec2 v_tex_coord;
    
    void main()
    {
        gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
        v_color = gl_Color;
        v_tex_coord = vec2(gl_MultiTexCoord0);
    }
    
    // Define a position function
    vec4 position(mat4 transform_projection, vec4 vertex_position)
    {
        return transform_projection * vertex_position;
    }
]]
