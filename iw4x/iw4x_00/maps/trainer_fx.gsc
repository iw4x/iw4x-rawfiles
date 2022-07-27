#include common_scripts\utility;
#include maps\_utility;

main()
{
	level._effect[ "dlight_red" ] 						= loadfx( "misc/aircraft_light_cockpit_red" );
	level._effect[ "redlight_fx" ]		        = loadfx( "misc/tower_light_red_steady" );
	level._effect[ "m16_muzzleflash" ]		        = loadfx( "muzzleflashes/m16_flash_wv" );
	
	level._effect[ "javelin_muzzle" ] 						= loadfx( "muzzleflashes/javelin_flash_wv" );
	
	//Hangar Welder
	level._effect[ "welding_runner" ]						= loadfx( "misc/welding_runner" );
	
	//humvees at end
	level._effect[ "humvee_radiator_steam" ]				= loadfx( "smoke/steam_vent_large_wind" );
	
	//basketball effects
	level._effect[ "ball_bounce_dust_runner" ]				= loadfx( "impacts/ball_bounce_dust_runner" );
	level._effect[ "footstep_dust" ]						= loadfx( "impacts/footstep_dust" );
		
	
	//ambient fx
	level._effect[ "sand_storm_distant_oriented" ] 			= LoadFX( "weather/sand_storm_distant_oriented_training" );
	level._effect[ "sand_storm_distant" ] 					= LoadFX( "weather/sand_storm_distant_training" );

	level._effect[ "dust_wind_fast" ]						= loadfx( "dust/dust_wind_fast_afcaves" );
	level._effect[ "sand_spiral_runner" ] 					= loadfx( "dust/sand_spiral_runner" );
	level._effect[ "trash_spiral_runner" ] 					= loadfx( "misc/trash_spiral_runner" );
	level._effect[ "sand_spray_detail_oriented_runner" ]	= loadfx( "dust/sand_spray_detail_oriented_runner" );

	level._effect[ "room_smoke_200" ] 						= loadfx( "smoke/room_smoke_200" );
	level._effect[ "room_smoke_400" ] 						= loadfx( "smoke/room_smoke_400" );
	level._effect[ "hallway_smoke_light" ] 					= loadfx( "smoke/hallway_smoke_light" );
	level._effect[ "ground_smoke_1200x1200" ]				= loadfx( "smoke/ground_smoke1200x1200" );

	level._effect[ "drips_slow" ]							= loadfx( "misc/drips_slow" );
	level._effect[ "drips_fast" ]							= loadfx( "misc/drips_fast" );
	
	maps\createfx\trainer_fx::main();	

}