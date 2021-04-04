main()
{
	//ambient fx
	level._effect[ "moth_runner" ]									 = loadfx( "misc/moth_runner" );
	level._effect[ "insect_trail_runner_icbm" ]						 = loadfx( "misc/insect_trail_runner_icbm" );
	level._effect[ "leaves_ground_gentlewind_codo" ]				 = loadfx( "misc/leaves_ground_gentlewind_codo" );
	level._effect[ "leaves_fall_gentlewind_codo" ]				     = loadfx( "misc/leaves_fall_gentlewind_codo" );

	level._effect[ "insects_carcass_runner" ]						= loadfx( "misc/insects_carcass_runner" );
	level._effect[ "waterfall_drainage_splash" ] 					= loadfx( "water/waterfall_drainage_splash_estate" );
	level._effect[ "waterfall_splash_large" ] 						= loadfx( "water/waterfall_splash_large_estate" );
	level._effect[ "waterfall_splash_large_drops" ]					= loadfx( "water/waterfall_splash_large_drops_estate" );
	level._effect[ "falling_water_trickle" ]	 					= loadfx( "water/falling_water_trickle" );

	level._effect[ "hallway_smoke_light" ]							= loadfx( "smoke/hallway_smoke_light" );

/#
	if ( getdvar( "clientSideEffects" ) != "1" )
		maps\createfx\mp_estate_tropical_fx::main();
#/

}