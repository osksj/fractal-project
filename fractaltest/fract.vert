#version 150

in vec3 in_Position;
in vec2 inTexCoord;
in vec3 in_Normal;
out vec3 normal;
out vec2 TexCoord;
out vec3 position_to_frag;

uniform mat4 totalMatrix;
uniform mat4 transformation;
void main(void)
{
    gl_Position = totalMatrix*vec4(in_Position, 1.0);
	position_to_frag = vec3( transformation*vec4(in_Position, 1.0));
    TexCoord = inTexCoord;
	normal = vec3( transformation*vec4(in_Normal, 1.0));
}
