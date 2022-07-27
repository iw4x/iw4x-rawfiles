#include common_scripts\utility;

main()
{
	//!!!!! This is not actually called anywhere, but it needs to load immediately otherwise I get a precache error (?)
	level._effect[ "_attack_heli_spotlight_ending" ]	 = LoadFX( "misc/hunted_spotlight_model_dim" );
	//!!!!! This is not actually called anywhere, but it needs to load immediately otherwise I get a precache error (?)
	
	
	level._effect[ "vehicle_explosion_slamraam" ]	 = LoadFX( "explosions/vehicle_explosion_slamraam" );
	
	level._effect[ "_attack_heli_spotlight" ]	 = LoadFX( "misc/spotlight_large_dcburning" );
	
	//columns
	level._effect[ "large_column" ]			 = loadfx( "props/dcburning_pillars" );
	

	level._effect[ "turret_overheat_haze" ]				 = loadfx( "distortion/abrams_exhaust" );
	level._effect[ "turret_overheat_smoke" ]			 = loadfx( "distortion/armored_car_overheat" );

	//Magic Bullet Muzzleflashes
	level._effect[ "javelin_muzzle" ] 					= loadfx( "muzzleflashes/javelin_flash_wv" );

	level._effect[ "light_glow_white_bulb" ]			 = loadfx( "misc/light_glow_white_bulb" );
	
	level._effect[ "door_kick_dust" ]				 = loadfx( "dust/door_kick" );
	
	
	level._effect[ "dlight_laptop" ] 						= loadfx( "misc/dlight_laptop" );
	
	/*-----------------------
	CHEAP VEHICLE EXPLOSIONS
	-------------------------*/	
	level._effect[ "large_vehicle_explosion" ] 		 = loadfx( "explosions/large_vehicle_explosion" );
	level._effect[ "cheap_vehicle_explosion" ]		 = loadfx( "explosions/small_vehicle_explosion_low" );
	level._effect[ "cheap_mack_truck_explosion" ] 	 = loadfx( "explosions/tanker_explosion_dcburn" );
	level._effect[ "tanker_fire" ]					 = loadfx( "fire/firelp_large_pm" );
	
	/*-----------------------
	PLAYER BLACKHAWK  CRASH
	-------------------------*/	
	level._effect[ "smoke_trail_black_heli" ] 			= loadfx( "smoke/smoke_trail_black_heli" );
	level._effect[ "dlight_blue" ] 						= loadfx( "misc/dlight_blue" );
	level._effect[ "dlight_red" ] 						= loadfx( "misc/aircraft_light_cockpit_red" );
	level._effect[ "player_death_explosion" ]			= loadfx( "explosions/player_death_explosion" );
	level._effect[ "heat_shimmer_door" ]				= loadfx( "distortion/abrams_exhaust" );
	
	level._effect[ "firelp_large_pm_nolight" ]					= loadfx( "fire/firelp_large_pm_nolight" );
	level._effect[ "firelp_med_pm_nolight" ]					= loadfx( "fire/firelp_med_pm_nolight" );
	level._effect[ "firelp_small_pm_nolight" ]					= loadfx( "fire/firelp_small_pm_nolight" );
	
	/*-----------------------
	LITTLEBIRD CRASH
	-------------------------*/	
	level._effect[ "crash_main_01" ] 		= loadfx( "explosions/javelin_explosion_dcburn" );
	level._effect[ "crash_end_01" ] 	 	= loadfx( "explosions/helicopter_explosion_little_bird_dcburn" );
	
	level._effect[ "chopper_smoke_trail" ]		 = loadfx( "fire/fire_smoke_trail_L" );
	level._effect[ "chopper_explosion" ] 			 = loadfx( "explosions/aerial_explosion" );

	/*-----------------------
	Sniping
	-------------------------*/	
	level._effect[ "headshot" ]						 = loadfx( "impacts/flesh_hit_head_fatal_exit" );	// sprays on wall
	level._effect[ "headshot2" ]					 = loadfx( "impacts/flesh_hit_splat_large" );		// chunks
	level._effect[ "headshot3" ]					 = loadfx( "impacts/flesh_hit_body_fatal_exit" );	// big spray
	level._effect[ "headshot4" ]					 = loadfx( "impacts/sniper_escape_blood" );	// big spray
	level._effect[ "bodyshot" ]						 = loadfx( "impacts/flesh_hit" );

	level._effect[ "thermal_body_gib" ]				 = loadfx( "impacts/thermal_body_gib" );	// splatter
	
	level._effect[ "flare_ambient" ]		 = loadfx( "misc/flare_ambient" );

	level._effect[ "heat_shimmer_door" ]				 = loadfx( "distortion/abrams_exhaust" );
	level._effect[ "heli_dust_default" ] 				 = loadfx( "treadfx/heli_dust_airlift" );
	
	
	/*-----------------------
	FLARES
	-------------------------*/	
	level._effect[ "flare_runner_intro" ]				 = loadfx( "misc/flare_start" );
	level._effect[ "flare_runner" ]					 = loadfx( "misc/flare" );
	level._effect[ "flare_runner_fizzout" ]			 = loadfx( "misc/flare_end" );
	
	
	/*-----------------------
	PLANE AIRSTRIKES
	-------------------------*/	
	level.airstrikefx 	 = loadfx( "explosions/clusterbomb" );
	//level.airstrikefx 	 = loadfx( "explosions/tanker_explosion" );
	//level.scr_sound[ "airstrike" ][ "explosion" ]				 = "mortar_incoming";

	/*-----------------------
	AMBIENT FX
	-------------------------*/	
	level._effect["powerline_runner"]							= loadfx ("explosions/powerline_runner");	

	level._effect[ "antiair_runner" ]							= loadfx( "misc/antiair_runner_night" );
	level._effect[ "hallway_smoke_dark" ]						= loadfx( "smoke/hallway_smoke_dark" );
	level._effect[ "ground_smoke_dcburning1200x1200" ]			= loadfx( "smoke/ground_smoke1200x1200_dcburning" );
	level._effect[ "thin_black_smoke_L" ]						= loadfx( "smoke/thin_black_smoke_L" );
	level._effect[ "thick_white_smoke_giant" ]					= loadfx( "smoke/thick_white_smoke_giant_dcburning" );
	level._effect[ "thick_dark_smoke_giant" ]					= loadfx( "smoke/thick_dark_smoke_giant_dcburning" );

	level._effect[ "firelp_small_pm" ]							= LoadFX( "fire/firelp_small_pm" );
	level._effect[ "firelp_small_pm_a" ]						= LoadFX( "fire/firelp_small_pm_a" );
	level._effect[ "firelp_med_pm" ]							= LoadFX( "fire/firelp_med_pm" );
	level._effect[ "firelp_large_pm" ]							= LoadFX( "fire/firelp_large_pm" );
	level._effect[ "firelp_vhc_lrg_pm_farview" ]				= loadfx( "fire/firelp_vhc_lrg_pm_farview" );

	level._effect[ "drips_slow" ]								= loadfx( "misc/drips_slow" );
	level._effect[ "drips_fast" ]								= loadfx( "misc/drips_fast" );
	level._effect[ "powerline_runner_cheap" ] 					= loadfx( "explosions/powerline_runner_cheap" );
	level._effect[ "water_pipe_spray" ]	 						= loadfx( "water/water_pipe_spray" );
	level._effect[ "cgo_ship_puddle_small" ]	 				= loadfx( "distortion/cgo_ship_puddle_small" );
	level._effect[ "rock_falling_small_runner" ]	 			= loadfx( "misc/rock_falling_small_runner" );


	//Exploders
	level._effect[ "ceiling_dust_default" ]						= loadfx( "dust/ceiling_dust_default" );
	level._effect[ "commerce_window_shatter" ] 					= loadfx( "props/car_glass_large" );
	maps\createfx\dcburning_fx::main();	

}