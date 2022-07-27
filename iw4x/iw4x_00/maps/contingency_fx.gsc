#include common_scripts\utility;

main()
{
	level._effect[ "cold_breath" ]									 = loadfx( "misc/cold_breath" );
	
	//Vehcile DeathFX Overrides

	//	build_deathfx( "explosions/large_vehicle_explosion", undefined, "exp_armor_vehicle" );

	//scripted fx
	level._effect[ "smoke_geotrail_icbm" ]		 					= loadfx( "smoke/smoke_geotrail_icbm" );
	level._effect[ "icbm_launch" ]				 					= loadfx( "smoke/icbm_launch" );
	
	
	level._effect[ "tree_explosion" ]								= loadfx( "explosions/tree_trunk_explosion" );
	level._effect[ "tree_explosion_small" ]							= loadfx( "explosions/tree_trunk_explosion" );
	
	level._effect[ "thermal_missle_flash_inverted" ]				= loadfx( "muzzleflashes/thermal_missle_flash_inverted" );
	level._effect[ "missle_flash" ]									= loadfx( "muzzleflashes/missile_flash_wv" );
	level._effect[ "uav_explosion" ]								= loadfx( "explosions/aerial_explosion_predator" );
	
	level._effect[ "btr_explosion" ]								= loadfx( "explosions/vehicle_explosion_btr80_snow" );
	level._effect[ "btr_spotlight" ]								= loadfx( "misc/spotlight_btr80" );
	
	level._effect[ "flashlight" ]									= loadfx( "misc/flashlight" );

	level._effect[ "tear_gas_submarine" ]							= loadfx( "smoke/tear_gas_submarine" );
	
	
	level._effect[ "tree_snow_dump_fast" ]							= loadfx( "snow/tree_snow_dump_fast" );
	level._effect[ "tree_snow_dump_fast_small" ]					= loadfx( "snow/tree_snow_dump_fast_small" );
	
	level._effect[ "tree_snow_fallen_heavy" ]						= loadfx( "snow/tree_snow_fallen_heavy" );
	level._effect[ "tree_snow_fallen" ]								= loadfx( "snow/tree_snow_fallen" );
	level._effect[ "tree_snow_fallen_small" ]						= loadfx( "snow/tree_snow_fallen_small" );

	//Price Sliding fx
	level._effect[ "price_landing" ]								= loadfx( "snow/snow_price_landing" );
	level._effect[ "price_sliding" ]								= loadfx( "snow/snow_price_sliding" );

	//Ambient fx
	level._effect[ "tree_snow_dump_runner" ]						= loadfx( "snow/tree_snow_dump_runner" );
	level._effect[ "snow_spray_detail_contingency_runner_0x400" ]	= loadfx( "snow/snow_spray_detail_contingency_runner_0x400" );
	level._effect[ "snow_spray_detail_oriented_runner_0x400" ]		= loadfx( "snow/snow_spray_detail_oriented_runner_0x400" );
	level._effect[ "snow_spray_detail_oriented_runner_400x400" ]	= loadfx( "snow/snow_spray_detail_oriented_runner_400x400" );
	level._effect[ "snow_spray_detail_oriented_runner" ]			= loadfx( "snow/snow_spray_detail_oriented_runner" );
	level._effect[ "snow_spray_detail_oriented_runner_large" ]		= loadfx( "snow/snow_spray_detail_oriented_large_runner" );
	level._effect[ "snow_spray_large_oriented_runner" ]				= loadfx( "snow/snow_spray_large_oriented_runner" );
	level._effect[ "snow_vortex_runner_cheap" ]						= loadfx( "snow/snow_vortex_runner_cheap" );
	level._effect[ "room_smoke_200" ] 								= LoadFX( "smoke/room_smoke_200" );


	//Player Footstep fx
	level._effect[ "footstep_snow_small" ]							= loadfx( "impacts/footstep_snow_small" );
	level._effect[ "footstep_snow" ]								= loadfx( "impacts/footstep_snow" );

	//Player snow
	level._effect[ "snow_light" ]								 	= loadfx( "snow/snow_light_contingency" );
	
	maps\createfx\contingency_fx::main();

}