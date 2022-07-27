#include common_scripts\utility;

main()
{
	//scripted FX
	level._effect[ "jumper_cables" ]					= loadfx( "misc/jumper_cable_sparks" );
	level._effect[ "blood" ]					 		= loadfx( "impacts/sniper_escape_blood" );
	level._effect[ "blood_dashboard_splatter" ]					= loadfx( "impacts/blood_dashboard_splatter" );
	level._effect[ "glass_exit" ]						= loadfx( "impacts/glass_exit_car" );
	level._effect[ "car_glass_interior" ]				= loadfx( "props/car_glass_interior_favela" );
	level._effect[ "plant_large_thrower" ]				= loadfx( "props/plant_large_thrower" );
	level._effect[ "plant_medium_thrower" ]				= loadfx( "props/plant_medium_thrower" );
	level._effect[ "plant_small_thrower" ]				= loadfx( "props/plant_small_thrower" );
	level._effect[ "falling_dust" ]						= loadfx( "dust/ceiling_dust_default" );
	level._effect[ "cash_trail" ]					 	= loadfx( "props/cash_trail" );
	level._effect[ "cash_drop" ]					 	= loadfx( "props/cash_drop" );

	//Ending
	level._effect[ "glass_dust_trail" ]					= loadfx( "dust/glass_dust_trail_emitter" );
	level._effect[ "car_crush_glass_med" ]				= loadfx( "props/car_glass_med" );
	level._effect[ "car_crush_glass_large" ]			= loadfx( "props/car_glass_large" );
	level._effect[ "car_crush_dust" ]					= loadfx( "dust/car_crush_dust" );

	
	//ambient fx
	level._effect[ "insects_carcass_runner" ]			= loadfx( "misc/insects_carcass_runner" );

	level._effect[ "firelp_med_pm" ]					= loadfx( "fire/firelp_med_pm" );
	level._effect[ "firelp_small_pm" ]				 	= loadfx( "fire/firelp_small_pm" );
	level._effect[ "firelp_small_pm_a" ]				= loadfx( "fire/firelp_small_pm_a" );
	level._effect[ "firelp_large_pm" ]					= loadfx( "fire/firelp_large_pm" );

	level._effect[ "dust_wind_fast" ]					= loadfx( "dust/dust_wind_fast" );
	level._effect[ "dust_wind_slow" ]					= loadfx( "dust/dust_wind_slow_yel_loop" );
	level._effect[ "trash_spiral_runner" ]				= loadfx( "misc/trash_spiral_runner" );
	level._effect[ "leaves_fall_gentlewind" ]		 	= loadfx( "misc/leaves_fall_gentlewind" );

	level._effect[ "hallway_smoke_light" ]				= loadfx( "smoke/hallway_smoke_light" );
	level._effect[ "battlefield_smokebank_S" ]			= loadfx( "smoke/battlefield_smokebank_S" );
	level._effect[ "thin_black_smoke_M" ]			 	= LoadFX( "smoke/thin_black_smoke_M" );
	level._effect[ "thin_black_smoke_L" ]			 	= LoadFX( "smoke/thin_black_smoke_L_nofog" );
	
	maps\createfx\favela_fx::main();
}