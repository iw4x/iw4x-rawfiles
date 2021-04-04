// _createart generated.  modify at your own risk. Changing values should be fine.
main()
{

	level.tweakfile = true;
 

	//* Fog section * 

	setdvar( "scr_fog_disable", "0" );

	//setExpFog( 500, 2842, 0.642709, 0.626383, 0.5, 3.0, 0 );
	//setExpFog( start distance, halfway distance, red, green, blue, max opacity, transition time,
	setExpFog( 750, 2842, 0.642709, 0.666383, 0.5, 0.02, 100 );
	VisionSetNaked( "mp_shipment", 0 );

}