#version 330 core
in vec2 TexCoord;

out vec4 color;

// Texture samplers
uniform sampler2D ourTexture1;
uniform sampler2D ourTexture2;

uniform float oppacitySmiley;
uniform float oppacityContainer;

void main()
{
	// Linearly interpolate between both textures (second texture is only slightly combined)
	if( oppacityContainer >= 1.f)
		color = mix(texture(ourTexture1,vec2(TexCoord.x,TexCoord.y)), texture(ourTexture2, vec2(TexCoord.x, TexCoord.y)), oppacitySmiley);
	else
		color = mix(texture(ourTexture1,vec2(TexCoord.x,TexCoord.y)), texture(ourTexture2, vec2(1.0f - TexCoord.x, -TexCoord.y)), oppacitySmiley);
}
