#include common_scripts\utility;

main()
{
	level._effect[ "littlebird_fire_trail" ]					= loadfx( "fire/fire_smoke_trail_L" );
	
	level._effect[ "bhd_dirt" ]											 = LoadFX( "impacts/bhd_dirt" );
	
	//shadow company dazed xombies on fire/smoking (wip)
	level._effect[ "body_smoke_01" ]					= loadfx( "smoke/grenade_smoke" );
	level._effect[ "body_smoke_02" ]					= loadfx( "smoke/steam_manhole" );
	level._effect[ "body_smoke_03" ]					= loadfx( "smoke/cargo_steam" );
	level._effect[ "body_fire_01" ]						= loadfx( "fire/burninng_soldier_torso" );
	
	//destruction of airstrip area....called via exploder 100
	level._effect[ "firelp_small_pm_nolight" ]					= loadfx( "fire/firelp_small_pm_nolight" );
	level._effect[ "firelp_large_pm" ]							= loadfx( "fire/firelp_large_pm" );
	level._effect[ "firelp_med_pm" ]							= loadfx( "fire/firelp_med_pm" );
	level._effect[ "firelp_small_pm" ]							= loadfx( "fire/firelp_small_pm" );
	level._effect[ "firelp_large_pm_nolight" ]					= loadfx( "fire/firelp_large_pm_nolight" );
	level._effect[ "firelp_med_pm_nolight" ]					= loadfx( "fire/firelp_med_pm_nolight" );
	level._effect[ "firelp_small_pm_nolight" ]					= loadfx( "fire/firelp_small_pm_nolight" );
	level._effect[ "thick_black_smoke_L" ]						= loadfx( "smoke/thick_black_smoke_L" );
	level._effect[ "thin_black_smoke_M" ]			 			= loadfx( "smoke/thin_black_smoke_M" );
	level._effect[ "thin_black_smoke_L" ]						= loadfx( "smoke/thin_black_smoke_L" );
	level._effect[ "tower_explosion" ]							= loadfx( "explosions/tower_explosion_af_caves" );
	level._effect[ "helicopter_explosion" ]						= loadfx( "explosions/helicopter_explosion_little_bird_af_caves" );
	
	//cave self-destruct
	level._effect[ "player_death_explosion" ]				= loadfx( "explosions/player_death_explosion" );
	level._effect[ "player_cave_escape" ]					= loadfx( "explosions/player_cave_escape" );
	level._effect[ "control_room_explosion" ]				= loadfx( "explosions/control_room_explosion" );
	level._effect[ "fireball" ]								= loadfx( "fire/fireball_af_caves" );
	
	// steamroom red light next to door
	level._effect[ "dlight_red" ] = LoadFX( "misc/dlight_red" );
	level._effect[ "redlight_glow" ] = LoadFX( "misc/tower_light_red_steady_sort" );
	level._effect[ "light_glow_white_bulb" ] = LoadFX( "misc/light_glow_white_bulb" );
	
	level._effect[ "knife_stab" ] = LoadFX( "impacts/flesh_hit_knife" );
	
	//smoke firefight
	level._effect[ "smokescreen" ]	 = loadfx( "smoke/smoke_screen" );

	//Zodiacs
	level._effect[ "zodiac_wake_geotrail_oilrig" ]		= loadfx( "treadfx/zodiac_wake_geotrail_oilrig" );
	
	//control room breach
	level._effect[ "light_c4_blink_nodlight" ] 			= loadfx( "misc/light_c4_blink_nodlight" );
	level._effect[ "c4_light_blink_dlight" ] = loadfx( "misc/light_c4_blink" );
	
	//ambient fx	
	level._effect[ "sand_storm_intro" ]						= loadfx( "weather/sand_storm_intro" );
	level._effect[ "sand_storm_light" ]						= loadfx( "weather/sand_storm_light" );
	level._effect[ "sand_storm_distant_oriented" ] 			= LoadFX( "weather/sand_storm_distant_oriented" );
	level._effect[ "sand_spray_detail_runner0x400" ]	 	= loadfx( "dust/sand_spray_detail_runner_0x400" );
	level._effect[ "sand_spray_detail_runner400x400" ]	 	= loadfx( "dust/sand_spray_detail_runner_400x400" );
	level._effect[ "sand_spray_detail_oriented_runner" ]	= loadfx( "dust/sand_spray_detail_oriented_runner" );
	level._effect[ "sand_spray_cliff_oriented_runner" ] 	= LoadFX( "dust/sand_spray_cliff_oriented_runner" );

	level._effect[ "dust_wind_fast" ]						= loadfx( "dust/dust_wind_fast_afcaves" );
	level._effect[ "dust_wind_canyon" ]						= loadfx( "dust/dust_wind_canyon" );
	level._effect[ "steam_vent_large_wind" ]				= loadfx( "smoke/steam_vent_large_wind" );
	level._effect[ "thermal_draft_afcaves" ]				= loadfx( "smoke/thermal_draft_afcaves" );

	level._effect[ "waterfall_drainage_splash" ] 			= loadfx( "water/waterfall_drainage_splash" );
	level._effect[ "waterfall_splash_large_drops" ]			= loadfx( "water/waterfall_splash_large_drops" );

	level._effect[ "light_shaft_ground_dust_small" ]	 	= loadfx( "dust/light_shaft_ground_dust_small" );
	level._effect[ "light_shaft_ground_dust_large" ]	 	= loadfx( "dust/light_shaft_ground_dust_large" );
	level._effect[ "light_shaft_ground_dust_small_yel" ]	= loadfx( "dust/light_shaft_ground_dust_small_yel" );
	level._effect[ "light_shaft_ground_dust_large_yel" ]	= loadfx( "dust/light_shaft_ground_dust_large_yel" );
	level._effect[ "light_shaft_motes_afcaves" ]			= loadfx( "dust/light_shaft_motes_afcaves" );

	//Scripted fx
	level._effect[ "flashlight" ]							= loadfx( "misc/flashlight" );
	level._effect[ "pistol_muzzleflash" ]					= loadfx( "muzzleflashes/pistolflash" );
	level._effect[ "player_death_explosion" ]				= loadfx( "explosions/player_death_explosion" );
	level._effect[ "cave_explosion" ]						= loadfx( "explosions/cave_explosion" );
	level._effect[ "cave_explosion_exit" ]					= loadfx( "explosions/cave_explosion_exit" );

	level._effect[ "mortar" ][ "bunker_ceiling" ]			= loadfx( "dust/ceiling_dust_default" );
	level._effect[ "ceiling_collapse_dirt1" ] 				= loadfx( "dust/ceiling_collapse_dirt1" );
	level._effect[ "ceiling_rock_break" ] 					= loadfx( "misc/ceiling_rock_break" );
	level._effect[ "hallway_collapsing_big" ] 				= loadfx( "misc/hallway_collapsing_big" );
	level._effect[ "hallway_collapsing_huge" ] 				= loadfx( "misc/hallway_collapsing_huge" );
	level._effect[ "hallway_collapse_ceiling_smoke" ] 		= loadfx( "smoke/hallway_collapse_ceiling_smoke" );
	level._effect[ "hallway_collapsing_chase" ] 			= loadfx( "misc/hallway_collapsing_chase" );
	level._effect[ "hallway_collapsing_cavein" ] 			= loadfx( "misc/hallway_collapsing_cavein" );
	level._effect[ "hallway_collapsing_cavein_short" ]		= loadfx( "misc/hallway_collapsing_cavein_short" );
	
	level._effect[ "hallway_collapsing_burst" ] 			= loadfx( "misc/hallway_collapsing_burst" );
	level._effect[ "hallway_collapsing_burst_no_linger" ] 	= loadfx( "misc/hallway_collapsing_burst_no_linger" );
	level._effect[ "hallway_collapsing_major" ] 			= loadfx( "misc/hallway_collapsing_major" );
	level._effect[ "hallway_collapsing_major_norocks" ] 	= loadfx( "misc/hallway_collapsing_major_norocks" );
	
	level._effect[ "building_explosion_metal" ]				= loadfx( "explosions/building_explosion_metal_gulag" );
	level._effect[ "tanker_explosion" ]						= loadfx( "explosions/tanker_explosion" );
	level._effect[ "airstrip_explosion" ]					= loadfx( "explosions/airstrip_explosion" );
	level._effect[ "bunker_ceiling" ]		 				= loadfx( "dust/ceiling_dust_default" );
	
	level._effect[ "heli_impacts" ] 						= loadfx( "impacts/large_dirt_1" );
	level._effect[ "welding_small_extended" ] 				= loadfx( "misc/welding_small_extended" );
	level._effect[ "fire_falling_runner_point" ]			= loadfx( "fire/fire_falling_runner_point" );
	
	level._effect[ "gulag_cafe_spotlight" ] 				= loadfx( "misc/gulag_cafe_spotlight" );
	
	level._effect[ "heli_aerial_explosion" ]			 	= loadfx( "explosions/aerial_explosion" );
	level._effect[ "heli_aerial_explosion_large" ]		 	= loadfx( "explosions/aerial_explosion_large" );
	
	// steam room
	level._effect[ "steam_room_100" ]						= LoadFX( "smoke/steam_room_100" );
	level._effect[ "steam_room_100_nocull" ]				= LoadFX( "smoke/steam_room_100_nocull" );
	level._effect[ "steam_room_100_nocull_red" ]			= LoadFX( "smoke/steam_room_100_nocull_red" );
	level._effect[ "steam_room_ceiling" ]					= LoadFX( "smoke/steam_room_ceiling" );
	level._effect[ "steam_room_floor" ]						= LoadFX( "smoke/steam_room_floor" );
	level._effect[ "steam_room_fill" ]						= LoadFX( "smoke/steam_room_fill" );
	level._effect[ "steam_room_add_large" ]					= LoadFX( "smoke/steam_room_add_large" );
	level._effect[ "steam_room_add_small" ]					= LoadFX( "smoke/steam_room_add_small" );
	level._effect[ "pipe_steam_looping" ]					= LoadFX( "impacts/pipe_steam_looping" );
	
	// steam room
	level._effect[ "steam_room_100_dark" ]						= LoadFX( "smoke/steam_room_100_dark" );
	level._effect[ "steam_room_100_nocull_dark" ]				= LoadFX( "smoke/steam_room_100_nocull_dark" );
	level._effect[ "steam_room_ceiling_dark" ]					= LoadFX( "smoke/steam_room_ceiling_dark" );
	level._effect[ "steam_room_floor_dark" ]					= LoadFX( "smoke/steam_room_floor_dark" );
	level._effect[ "steam_room_fill_dark" ]						= LoadFX( "smoke/steam_room_fill_dark" );
	level._effect[ "steam_room_add_large_dark" ]				= LoadFX( "smoke/steam_room_add_large_dark" );
	level._effect[ "steam_room_add_small_dark" ]				= LoadFX( "smoke/steam_room_add_small_dark" );
	level._effect[ "pipe_steam_dark_looping" ]					= LoadFX( "impacts/pipe_steam_dark_looping" );
	level._effect[ "steam_vent_large_wind_dark" ]				= LoadFX( "smoke/steam_vent_large_wind_dark" );
	
	level._effect[ "drips_slow" ]								 = LoadFX( "misc/drips_slow" );
	level._effect[ "drips_slow_infrequent" ]					 = LoadFX( "misc/drips_slow_infrequent" );
	
	level._effect[ "pipe_steam_dark" ]							= LoadFX( "impacts/pipe_steam_dark" );

	maps\createfx\af_caves_fx::main();
}