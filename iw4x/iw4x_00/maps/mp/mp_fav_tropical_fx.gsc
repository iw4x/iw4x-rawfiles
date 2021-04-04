main()
{
	//ambient fx
	level._effect[ "insects_carcass_runner" ]			= loadfx( "misc/insects_carcass_runner" );

	level._effect[ "firelp_med_pm" ]					= loadfx( "fire/firelp_med_pm" );
	level._effect[ "firelp_small_pm" ]				 	= loadfx( "fire/firelp_small_pm" );
	level._effect[ "firelp_small_pm_a" ]				= loadfx( "fire/firelp_small_pm_a" );

	level._effect[ "trash_spiral_runner" ]				= loadfx( "misc/trash_spiral_runner" );
	level._effect[ "leaves_fall_gentlewind" ]		 	= loadfx( "misc/leaves_fall_gentlewind" );

	level._effect[ "hallway_smoke_light" ]				= loadfx( "smoke/hallway_smoke_light" );
	level._effect[ "room_smoke_200" ]					= loadfx( "smoke/room_smoke_200" );
	

/#
	if ( getdvar( "clientSideEffects" ) != "1" )
		maps\createfx\mp_fav_tropical_fx::main();
#/

}
