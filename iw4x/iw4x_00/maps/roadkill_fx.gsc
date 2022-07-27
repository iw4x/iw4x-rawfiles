#include common_scripts\utility;

main()
{
	level._effect[ "thick_black_smoke_L" ]								= loadfx( "smoke/thick_black_smoke_L" );
	level._effect[ "minigun_burnout" ]									= loadfx( "smoke/minigun_burnout" );
	level._effect[ "rocket_explode" ]									= loadfx( "explosions/grenadeExp_dirt_1" );
	
	level._effect[ "bmp_explosion" ]									= loadfx( "explosions/vehicle_explosion_bmp" );
	
	level._effect[ "mortar_muzzle" ] 									= loadfx( "muzzleflashes/mortar_flash" );
	level._effect[ "rpg_trail" ] 										= loadfx( "smoke/smoke_geotrail_rpg" );
	level._effect[ "rpg_muzzle" ] 										= loadfx( "muzzleflashes/at4_flash" );
	level._effect[ "m203" ] 											= loadfx( "muzzleflashes/m203_flshview" );
	level._effect[ "car_dirt" ] 										= loadfx( "impacts/large_dirt_1" );
	level._effect[ "car_spark" ] 										= loadfx( "impacts/large_metalhit_1" );
	
	level._effect[ "headshot" ]											= loadfx( "impacts/flesh_hit_head_fatal_exit" );
	level._effect[ "bodyshot" ]											= loadfx( "impacts/flesh_hit" );
                                                        				
	level._effect[ "100ton_bomb" ]										= loadfx( "explosions/100ton_bomb" );
	level._effect[ "100ton_bomb_shockwave" ]							= loadfx( "explosions/100ton_bomb_shockwave" );
	level._effect[ "100ton_bomb_secondary" ]							= loadfx( "explosions/100ton_bomb_secondary" );
	level._effect[ "bomb_incoming" ]									= loadfx( "misc/bomb_incoming" );
	level._effect[ "shockwave_dust_linger" ]							= loadfx( "dust/shockwave_dust_linger" );
	level._effect[ "building_collapse_street_dust" ]					= loadfx( "dust/building_collapse_street_dust_roadkill" );
	level._effect[ "building_collapse_updraft" ]						= loadfx( "dust/building_collapse_updraft_roadkill" );
	level._effect[ "building_collapse_runner" ]							= loadfx( "dust/building_collapse_runner_roadkill" );
	level._effect[ "building_collapse_stree_dust_bg_roadkill" ]			= loadfx( "dust/building_collapse_stree_dust_bg_roadkill" );
	level._effect[ "falling_debris_small" ]								= loadfx( "misc/falling_debris_small" );
	level._effect[ "falling_debris_large" ]								= loadfx( "misc/falling_debris_large" );
	level._effect[ "falling_debris_runner" ]							= loadfx( "misc/falling_debris_runner" );
	level._effect[ "falling_debris_runner_400x400" ]					= loadfx( "misc/falling_debris_runner_400x400" );


	level._effect[ "firelp_med_pm" ]					= loadfx( "fire/firelp_med_pm" );
	level._effect[ "firelp_small_pm" ]				 	= loadfx( "fire/firelp_small_pm" );
	level._effect[ "firelp_small_pm_a" ]				= loadfx( "fire/firelp_small_pm_a" );
	level._effect[ "firelp_large_pm" ]					= loadfx( "fire/firelp_large_pm" );

	level._effect[ "dust_wind_fast" ]					= loadfx( "dust/dust_wind_fast" );
	level._effect[ "dust_wind_slow" ]					= loadfx( "dust/dust_wind_slow_yel_loop" );
	level._effect[ "trash_spiral_runner" ]				= loadfx( "misc/trash_spiral_runner" );
	level._effect[ "leaves_fall_gentlewind" ]		 	= loadfx( "misc/leaves_fall_gentlewind" );

	level._effect[ "car_damage_whitesmoke_loop" ]		= loadfx( "smoke/car_damage_whitesmoke_loop" );
	level._effect[ "drips_fast" ]	 					= loadfx( "misc/drips_fast" );

	level._effect[ "room_smoke_200" ]					= loadfx( "smoke/room_smoke_200" );
	level._effect[ "room_smoke_400" ]					= loadfx( "smoke/room_smoke_400" );
	level._effect[ "hallway_smoke_light" ]				= loadfx( "smoke/hallway_smoke_light" );
	level._effect[ "battlefield_smokebank_S" ]			= loadfx( "smoke/battlefield_smokebank_S" );
	level._effect[ "thin_black_smoke_M" ]			 	= LoadFX( "smoke/thin_black_smoke_M" );
	level._effect[ "thin_black_smoke_L" ]			 	= LoadFX( "smoke/thin_black_smoke_L_nofog" );
	level._effect[ "dust_wind_fast" ]					= loadfx( "dust/dust_wind_fast" );
	level._effect[ "dust_wind_fast_light" ] 			= LoadFX( "dust/dust_wind_fast_light" );
	level._effect[ "insects_carcass_runner" ] 			= LoadFX( "misc/insects_carcass_runner" );
	


	/*-----------------------
	MORTAR EFFECTS & SOUNDS
	-------------------------*/	
	level._effect[ "mortar_large" ] 					= loadfx( "explosions/artilleryExp_dirt_brown_2" );
	level._effect[ "mortar_water" ] 					= loadfx( "explosions/mortarExp_water" );
	level._effect[ "vehicle_scrape_sparks" ]			= loadfx( "misc/vehicle_scrape_sparks" );
	
	maps\createfx\roadkill_fx::main();	
}
