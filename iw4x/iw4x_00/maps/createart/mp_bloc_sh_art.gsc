//_createart generated.  modify at your own risk. Changing values should be fine.
main()
{

	level.tweakfile = true;

	
	//* Fog section * 

	setdvar( "scr_fog_disable", "0" );

	//setExpFog( start distance, halfway distance, red, green, blue, max opacity, transition time, sun red, sun green, sun blue,      sun max opacity,       sun direction, sun begin fade angle, sun end fade angle );
	setExpFog( 1000, 5000, 0.631961, 0.501961, 0.3098, 0.07, 0 );
	VisionSetNaked( "mp_bloc_sh", 0 );
}
