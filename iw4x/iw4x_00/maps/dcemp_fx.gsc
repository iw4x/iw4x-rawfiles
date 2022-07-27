#include common_scripts\utility;

main()
{
	level._effect[ "vehicle_explosion_btr80" ]					= loadfx( "explosions/vehicle_explosion_btr80" );
	level._effect[ "handflare" ]								= loadfx( "misc/dcemp_handflare" );
	level._effect[ "groundflare" ]								= loadfx( "misc/dcemp_groundflare" );
	level._effect[ "killshot" ]									= loadfx( "impacts/flesh_hit_body_fatal_exit" );
	
	//manually precaching fx because of masking of destrucibles
	level._effect[ "nouse" ] 	= loadfx( "props/news_stand_paper_spill" );
	level._effect[ "nouse" ] 	= loadfx( "props/news_stand_explosion" );
	level._effect[ "nouse" ] 	= loadfx( "props/news_stand_paper_spill_shatter" );
	level._effect[ "nouse" ] 	= loadfx( "props/photocopier_sparks" );
	level._effect[ "nouse" ] 	= loadfx( "props/photocopier_exp" );
	level._effect[ "nouse" ] 	= loadfx( "props/photocopier_fire" );
	level._effect[ "nouse" ] 	= loadfx( "props/electricbox4_explode" );
	level._effect[ "nouse" ] 	= loadfx( "props/filecabinet_dam" );
	level._effect[ "nouse" ] 	= loadfx( "props/filecabinet_des" );
	level._effect[ "nouse" ] 	= loadfx( "misc/light_fluorescent_blowout_runner" );
	level._effect[ "nouse" ] 	= loadfx( "misc/light_blowout_swinging_runner" );
	level.breakables_fx[ "tv_explode" ] = LoadFX( "explosions/tv_explosion" );

	//ISS
	level._effect[ "dcemp_sun" ] 								= loadfx( "misc/dcemp_sun" );
	level._effect[ "dcemp_icbm_trail" ] 						= loadfx( "misc/dcemp_icbm_trail" );
	level._effect[ "space_nuke" ] 								= loadfx( "explosions/space_nuke" );
	level._effect[ "space_nuke_shockwave" ] 					= loadfx( "explosions/space_nuke_shockwave" );
	level._effect[ "space_emp" ] 								= loadfx( "explosions/space_emp" );
	level._effect[ "space_explosion" ] 							= loadfx( "explosions/space_explosion" );
	level._effect[ "space_explosion_small" ] 					= loadfx( "explosions/space_explosion_small" );
	level._effect[ "dcemp_water_nuke_glow" ]					= loadfx( "misc/dcemp_water_nuke_glow" );
	
	//DCBURNING FX
	level._effect[ "dlight_blue" ] 								= loadfx( "misc/dlight_blue" );
	level._effect[ "headshot3" ]					 			= loadfx( "impacts/flesh_hit_body_fatal_exit" );	// big spray
	level._effect[ "ground_smoke_dcburning1200x1200" ]			= loadfx( "smoke/ground_smoke1200x1200_dcburning" );
	
	//MinSpec Spotlight
	if ( getdvarint( "sm_enable" ) && getdvar( "r_zfeather" ) != "0" )
		level._effect[ "_attack_heli_spotlight" ]	 			= loadfx( "misc/hunted_spotlight_model_dim" );
	else
		level._effect[ "_attack_heli_spotlight" ]				= loadfx( "misc/spotlight_large" );
		
	level._effect[ "planecrash_spotlight" ]	 					= loadfx( "misc/dcemp_planecrash_spotlight_model" );	
	level._effect[ "dcemp_nuke_spotlight_fade" ]	 			= loadfx( "misc/dcemp_nuke_spotlight_fade" );	
	level._effect[ "spotlight_lightning" ]	 					= loadfx( "misc/spotlight_lightning" );	
	level._effect[ "space_helmet_spot_light" ]	 				= loadfx( "misc/space_helmet_spot_light" );	
	
	//EMP
	level._effect[ "transformer_spark_runner" ]					= loadfx( "explosions/transformer_spark_runner" );
	level._effect[ "dcemp_glass_74x44" ]						= loadfx( "props/dcemp_glass_74x44" );
	level._effect[ "bodyfall_dust_high" ]						= loadfx( "impacts/bodyfall_dust_high" );
	level._effect[ "helicopter_crash" ]							= loadfx( "explosions/helicopter_crash" );
	level._effect[ "helicopter_explosion_secondary_small" ]		= loadfx( "explosions/helicopter_explosion_secondary_small" );
	level._effect[ "powerline_runner_oneshot" ]					= loadfx( "explosions/powerline_runner_oneshot" );

	level._effect[ "space_emp_crashsite" ]						= loadfx( "explosions/space_emp_crashsite" );
	level._effect[ "space_nuke_crashsite" ]						= loadfx( "explosions/space_nuke_crashsite" );

	//STREET
	level._effect[ "helicopter_explosion" ]						= loadfx( "explosions/helicopter_explosion_dcemp" );
	level._effect[ "small_vehicle_explosion" ]					= loadfx( "explosions/small_vehicle_explosion" );
	
	
	//CRASH SCENE FX 
	level._effect[ "window_fire_large" ]						= loadfx( "fire/window_fire_large" );
	level._effect[ "firelp_large_pm" ]							= loadfx( "fire/firelp_large_pm" );
	level._effect[ "firelp_med_pm" ]							= loadfx( "fire/firelp_med_pm" );
	level._effect[ "firelp_small_pm" ]							= loadfx( "fire/firelp_small_pm" );
	
	level._effect[ "firelp_large_pm_nolight" ]					= loadfx( "fire/firelp_large_pm_nolight" );
	level._effect[ "firelp_med_pm_nolight" ]					= loadfx( "fire/firelp_med_pm_nolight" );
	level._effect[ "firelp_small_pm_nolight" ]					= loadfx( "fire/firelp_small_pm_nolight" );
	
	level._effect[ "firelp_small_streak_pm1_h" ]				= loadfx( "fire/firelp_small_streak_pm1_h" );
	level._effect[ "firelp_small_streak_pm_v" ]					= loadfx( "fire/firelp_small_streak_pm_v" );
	level._effect[ "firelp_small_streak_pm1_h_nolight" ]		= loadfx( "fire/firelp_small_streak_pm1_h_nolight" );
	level._effect[ "firelp_small_streak_pm_v_nolight" ]			= loadfx( "fire/firelp_small_streak_pm_v_nolight" );
	level._effect[ "fire_trail_60" ]							= loadfx( "fire/fire_trail_60" );
	
	level._effect[ "fire_streak_runner" ]						= loadfx( "fire/fire_streak_runner" );
		
	level._effect[ "fire_falling_runner_point" ]				= loadfx( "fire/fire_falling_runner_point_infrequent" );
	level._effect[ "fire_tree_embers" ]							= loadfx( "fire/fire_tree_embers" );


	//CRASH MOMENT FX
//	level._effect[ "suitcase_explosion" ]						= loadfx( "explosions/suitcase_explosion" );
	level._effect[ "jet_crash" ]								= loadfx( "explosions/jet_crash_dcemp" );
	
	
	//MEETUP
	level._effect[ "bird_pm" ]									= loadfx( "misc/bird_pm" );
	level._effect[ "leaves_a" ]									= loadfx( "misc/leaves_a" );
	level._effect[ "fire_embers_directional" ]					= loadfx( "fire/fire_embers_directional" );
	
	
	//OFFICE	
	level._effect[ "waterfall_drainage_short" ] 				= loadfx( "water/waterfall_drainage_short_physics_dcemp" );
	level._effect[ "waterfall_drainage_splash" ] 				= loadfx( "water/waterfall_drainage_splash_dcemp" );
	level._effect[ "falling_water_trickle" ]	 				= loadfx( "water/falling_water_trickle" );
	level._effect[ "rain_noise_splashes" ]						= loadfx( "weather/rain_noise_splashes" );
	level._effect[ "rain_noise_splashes_dark" ]						= loadfx( "weather/rain_noise_splashes_dark" );
	level._effect[ "rain_splash_lite" ]							= loadfx( "weather/rain_splash_lite" );
	level._effect[ "rain_splash_lite_runner_40x200" ]			= loadfx( "weather/rain_splash_lite_runner_40x200" );
	level._effect[ "rain_splash_lite_runner_40x600" ]			= loadfx( "weather/rain_splash_lite_runner_40x600" );
	level._effect[ "rain_noise_ud" ]				 			= loadfx( "weather/rain_noise_ud" );
	level._effect[ "rain_noise_ud_runner_0x400" ]				= loadfx( "weather/rain_noise_ud_runner_0x400" );
	level._effect[ "cgo_ship_puddle_small" ]		 			= loadfx( "distortion/cgo_ship_puddle_small" );
	level._effect[ "cgo_ship_puddle_large" ]		 			= loadfx( "distortion/cgo_ship_puddle_large" );
	
	level._effect[ "rain_splash_lite_4x64" ]					= loadfx( "weather/rain_splash_lite_4x64" );
	level._effect[ "rain_splash_lite_4x128" ]					= loadfx( "weather/rain_splash_lite_4x128" );
	level._effect[ "rain_splash_lite_8x64" ]					= loadfx( "weather/rain_splash_lite_8x64" );
	level._effect[ "rain_splash_lite_8x128" ]					= loadfx( "weather/rain_splash_lite_8x128" );
	level._effect[ "rain_splash_lite_64x64" ]					= loadfx( "weather/rain_splash_lite_64x64" );
	level._effect[ "rain_splash_lite_128x128" ]					= loadfx( "weather/rain_splash_lite_128x128" );

	//WHITEHOUSE
	level._effect[ "fire_tree_slow_longrange" ] 				= loadfx( "fire/fire_tree_slow_longrange" );
	level._effect[ "green_flare" ] 								= loadfx( "misc/flare_ambient_green" );
	level._effect[ "player_flare" ]								= loadfx( "impacts/small_metalhit" );
	level._effect[ "carpetbomb" ]								= loadfx( "explosions/helicopter_explosion" );

	//CHANDELIER
	level._effect[ "wire_spark" ]								= loadfx( "explosions/transformer_spark_runner" );


	//LIGHTING
	level._effect[ "lightning" ]				 				= loadfx( "weather/lightning" );
	level._effect[ "lightning_bolt" ]			 				= loadfx( "weather/lightning_bolt" );
	level._effect[ "lightning_bolt_lrg" ]						= loadfx( "weather/lightning_bolt_lrg" );
	
	// Rain
	level._effect[ "rain_10" ]	 							= loadfx( "weather/rain_heavy_mist" );
	level._effect[ "rain_9" ]		 						= loadfx( "weather/rain_9_lite" );
	level._effect[ "rain_8" ]		 						= loadfx( "weather/rain_8_lite" );
	level._effect[ "rain_7" ]		 						= loadfx( "weather/rain_7_lite" );
	level._effect[ "rain_6" ]		 						= loadfx( "weather/rain_6_lite" );
	level._effect[ "rain_5" ]		 						= loadfx( "weather/rain_5_lite" );
	level._effect[ "rain_4" ]		 						= loadfx( "weather/rain_4_lite" );
	level._effect[ "rain_3" ]		 						= loadfx( "weather/rain_3_lite" );
	level._effect[ "rain_2" ]		 						= loadfx( "weather/rain_2_lite" );
	level._effect[ "rain_1" ]		 						= loadfx( "weather/rain_1_lite" );
	level._effect[ "rain_0" ]		 						= loadfx( "misc/blank" );
}