// _createart generated.  modify at your own risk. Changing values should be fine.
main()
{

	level.tweakfile = true;
 

	//* Fog section * 

	setdvar( "scr_fog_disable", "0" );

	//setExpFog( start distance, halfway distance, red, green, blue, max opacity, transition time, sun red, sun green, sun blue,      sun max opacity,       sun direction, sun begin fade angle, sun end fade angle );
	setExpFog(1674.792, 2740, 0.476471, 0.518235, 0.47451, 0.3, 0, 0.803922, 0.717647, 0.6, (-0.432962, -0.395847, 0.809845), 0, 61.0525, 5.68252);
	//setExpFog( 2315.28, 3009.05, 0.627317, 0.611552, 0.501961, 0.35, 0 );
	
	VisionSetNaked( "mp_cargoship_sh", 0 );

}
