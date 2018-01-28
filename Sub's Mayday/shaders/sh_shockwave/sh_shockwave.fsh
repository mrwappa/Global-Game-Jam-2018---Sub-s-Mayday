varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 shockwavePosition;
uniform float lengthValue;
uniform vec2 resolution;

void main()
{
	float dis = distance(v_vTexcoord*resolution, shockwavePosition);
	
	vec4 c = vec4(0.0);//texture2D( gm_BaseTexture, v_vTexcoord );
	
	if(dis <= lengthValue && dis >= lengthValue - (20.0 - dis*0.25) )
	{
		vec2 dir = normalize((v_vTexcoord*resolution) - shockwavePosition);
		
		c = texture2D( gm_BaseTexture, v_vTexcoord - dir*0.05);
	}
	
    gl_FragColor = c;
}


