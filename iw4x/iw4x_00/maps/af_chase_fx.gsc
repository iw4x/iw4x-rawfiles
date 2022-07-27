#include common_scripts\utility;

main()
{
	level._effect[ "explosions/large_vehicle_explosion" ] = loadfx( "explosions/large_vehicle_explosion" );

	//walking through water
	level._effect[ "water_stop" ]				 = LoadFX( "misc/parabolic_water_stand" );
	level._effect[ "water_movement" ]			 = LoadFX( "misc/parabolic_water_movement" );

	level._effect[ "rocket_hits_heli" ]			 = LoadFX( "explosions/grenadeExp_metal" );

/*-----------------------------------------------------------------------------------------------------*/

	//Zodiac Wake
	level._effect[ "zodiac_wake_geotrail" ]		 = LoadFX( "treadfx/zodiac_wake_geotrail_af_chase" );

	// only ever see the front of the players boat plays on tag_origin	
	level._effect[ "zodiac_leftground" ]		 = LoadFX( "misc/watersplash_large" );

	//Zodiac bigbump
	level._effect[ "player_zodiac_bumpbig" ]	 = LoadFX( "misc/watersplash_large" );
	level._effect[ "zodiac_bumpbig" ]			 = LoadFX( "misc/watersplash_large" );
	level._effect_tag[ "zodiac_bumpbig" ] 		 = "tag_guy2";// pushing this farther forward so the player sees it better.

	//Zodiac bump
	level._effect[ "player_zodiac_bump" ] 		 = LoadFX( "impacts/large_waterhit" );
	level._effect[ "zodiac_bump" ] 				 = LoadFX( "impacts/large_waterhit" );

	//zodiac collision
	level._effect[ "zodiac_collision" ] 		 = LoadFX( "misc/watersplash_large" );
	level._effect_tag[ "zodiac_collision" ] 	 = "TAG_DEATH_FX";// pushing this farther forward so the player sees it better.

/*-----------------------------------------------------------------------------------------------------*/

	//Zodiac Bounce Small Left
	level._effect[ "zodiac_bounce_small_left" ]  		 = LoadFX( "water/zodiac_splash_bounce_small" );
	level._effect_tag[ "zodiac_bounce_small_left" ] 	 = "TAG_FX_LF";

	//Zodiac Bounce Small Right
	level._effect[ "zodiac_bounce_small_right" ]  		 = LoadFX( "water/zodiac_splash_bounce_small" );
	level._effect_tag[ "zodiac_bounce_small_right" ] 	 = "TAG_FX_RF";

	//Zodiac Bounce Large Left
	level._effect[ "zodiac_bounce_large_left" ]  		 = LoadFX( "water/zodiac_splash_bounce_large" );
	level._effect_tag[ "zodiac_bounce_large_left" ] 	 = "TAG_FX_LF";

	//Zodiac Bounce Large Right
	level._effect[ "zodiac_bounce_large_right" ]  		 = LoadFX( "water/zodiac_splash_bounce_large" );
	level._effect_tag[ "zodiac_bounce_large_right" ] 	 = "TAG_FX_RF";

/*-----------------------------------------------------------------------------------------------------*/

	//Zodiac Turn Hard Left /Hit left
	level._effect[ "zodiac_sway_left" ] 		 = LoadFX( "water/zodiac_splash_turn_hard" );
	level._effect_tag[ "zodiac_sway_left" ] 	 = "TAG_FX_LF";

	//Zodiac Turn Hard Right /Hit right
	level._effect[ "zodiac_sway_right" ] 		 = LoadFX( "water/zodiac_splash_turn_hard" );
	level._effect_tag[ "zodiac_sway_right" ] 	 = "TAG_FX_RF";

	//Zodiac Turn Light Left 
	level._effect[ "zodiac_sway_left_light" ] 		 = LoadFX( "water/zodiac_splash_turn_light" );
	level._effect_tag[ "zodiac_sway_left_light" ] 	 = "TAG_FX_LF";

	//Zodiac Turn Light Right 
	level._effect[ "zodiac_sway_right_light" ] 		 = LoadFX( "water/zodiac_splash_turn_light" );
	level._effect_tag[ "zodiac_sway_right_light" ] 	 = "TAG_FX_RF";

/*-----------------------------------------------------------------------------------------------------*/

	//sound
	level.zodiac_fx_sound[ "zodiac_bump" ]		 = "water_boat_splash_small";
	level.zodiac_fx_sound[ "zodiac_bumpbig" ]	 = "water_boat_splash";

	level.zodiac_fx_sound[ "player_zodiac_bump" ]		 = "water_boat_splash_small_plr";
	level.zodiac_fx_sound[ "player_zodiac_bumpbig" ]	 = "water_boat_splash_plr";

	//two bumps small and big. change them at points in the level to allow more or less visibility. 
	level.water_sheating_time[ "bump_big_start" ] = 2;
	level.water_sheating_time[ "bump_small_start" ] = 1;

	// sheeting time smaller just so action can be more visible.  I'm just trying this I suppose
	level.water_sheating_time[ "bump_big_after_rapids" ] = 4;
	level.water_sheating_time[ "bump_small_after_rapids" ] = 2;

	// water sheating time when the player dies. meant to be really long to cover up some nasty.
	level.water_sheating_time[ "bump_big_player_dies" ] = 7;
	level.water_sheating_time[ "bump_small_player_dies" ] = 3;


	//player falls over waterfall, this shoots up just as they go over.
	level._effect[ "splash_over_waterfall"		 ] = LoadFX( "misc/watersplash_large" );

	//player falls over waterfall, this shoots up when they hit below
	level._effect[ "player_hits_water_after_waterfall"		 ] = LoadFX( "misc/watersplash_large" );


	level._effect[ "powerline_runner_cheap" ] 						 = loadfx( "explosions/powerline_runner_cheap" );
	level._effect[ "firelp_small_pm_a_nolight" ] 					 = LoadFX( "fire/firelp_small_pm_a_nolight" );
	level._effect[ "firelp_large_pm_nolight" ] 						 = LoadFX( "fire/firelp_large_pm_nolight" );
	level._effect[ "heli_crash_fire" ]								 = LoadFX( "fire/pavelow_crash_large" );
	level._effect[ "heli_crash_fire_short_smoke" ]					 = LoadFX( "fire/pavelow_crash_large_short_smoke" );
	level._effect[ "no_effect" ]					 				 = LoadFX( "misc/no_effect" );
	level._effect[ "player_stabbed" ]								 = LoadFX( "impacts/player_stabbed" );
	level._effect[ "player_knife_wound" ]							 = LoadFX( "impacts/player_knife_wound" );
	level._effect[ "player_knife_pull_1" ]							 = LoadFX( "impacts/player_knife_pull_1" );
	level._effect[ "player_knife_pull_2" ]							 = LoadFX( "impacts/player_knife_pull_2" );
	level._effect[ "blood_sheperd_eye" ]							 = LoadFX( "misc/blood_sheperd_eye" );
	level._effect[ "blood_sheperd_eye_geotrail" ]					 = LoadFX( "misc/blood_sheperd_eye_geotrail" );
	level._effect[ "revolver_bullets" ]								 = LoadFX( "shellejects/revolver_af_chase" );
	level._effect[ "crawl_dust_sandstorm_runner" ]				 	 = LoadFX( "impacts/crawl_dust_sandstorm_runner" );
	level._effect[ "footstep_dust_sandstorm_runner" ]				 = LoadFX( "impacts/footstep_dust_sandstorm_runner" );
	level._effect[ "footstep_dust_sandstorm_small_runner" ]			 = LoadFX( "impacts/footstep_dust_sandstorm_small_runner" );
	level._effect[ "bodyfall_dust_sandstorm_large_runner" ]			 = LoadFX( "impacts/bodyfall_dust_sandstorm_large_runner" );

	
	// need something cool here.
	level._effect[ "body_falls_from_ropes_splash"			 ] = LoadFX( "impacts/large_waterhit" );

	level._effect[ "sand_storm_distant" ]				 	 = LoadFX( "weather/sand_storm_distant" );
	level._effect[ "sand_storm_canyon_light" ]				 = LoadFX( "weather/sand_storm_canyon_light" );
	level._effect[ "sand_storm_player" ]					 = LoadFX( "weather/sand_storm_player" );
	level._effect[ "sand_storm_intro" ]						 = LoadFX( "weather/sand_storm_intro" );
	level._effect[ "sand_storm_light" ]						 = LoadFX( "weather/sand_storm_light" );
	level._effect[ "sand_storm_distant_oriented" ] 			 = LoadFX( "weather/sand_storm_distant_oriented" );
	level._effect[ "sand_spray_detail_runner0x400" ]	 	 = LoadFX( "dust/sand_spray_detail_runner_0x400" );
	level._effect[ "sand_spray_detail_runner400x400" ]	 	 = LoadFX( "dust/sand_spray_detail_afchase_runner_400x400" );
	level._effect[ "sand_spray_detail_oriented_runner" ]	 = LoadFX( "dust/sand_spray_detail_oriented_runner" );
	level._effect[ "sand_spray_detail_oriented_runner" ]	 = LoadFX( "dust/sand_spray_detail_oriented_runner" );
	level._effect[ "sand_spray_cliff_oriented_runner" ] 	 = LoadFX( "dust/sand_spray_cliff_oriented_runner" );

	level._effect[ "dust_wind_fast" ]						 = LoadFX( "dust/dust_wind_fast_afcaves" );
	level._effect[ "dust_wind_canyon" ]						 = LoadFX( "dust/dust_wind_canyon_far" );
	level._effect[ "steam_vent_large_wind" ]				 = LoadFX( "smoke/steam_vent_large_wind" );

	level._effect[ "ground_fog_afchase" ]	 				 = LoadFX( "smoke/ground_fog_afchase" );
	level._effect[ "light_shaft_ground_dust_small" ]	 	 = LoadFX( "dust/light_shaft_ground_dust_small" );
	level._effect[ "light_shaft_ground_dust_large" ]	 	 = LoadFX( "dust/light_shaft_ground_dust_large" );
	level._effect[ "light_shaft_ground_dust_small_yel" ]	 = LoadFX( "dust/light_shaft_ground_dust_small_yel" );
	level._effect[ "light_shaft_ground_dust_large_yel" ]	 = LoadFX( "dust/light_shaft_ground_dust_large_yel" );
	level._effect[ "light_shaft_motes_afchase" ]			 = LoadFX( "dust/light_shaft_motes_afchase" );
	
	if ( level.script == "ending" )
		level._effect[ "light_glow_white_bulb" ]			 	 = LoadFX( "dust/light_shaft_motes_afchase" );
	else
		level._effect[ "light_glow_white_bulb" ]			 	 = LoadFX( "misc/light_glow_white_bulb" );

	level._effect[ "splash_underwater_afchase" ]	 		 = loadfx( "water/splash_underwater_afchase" );
	level._effect[ "rapids_splash_0x1000" ] 				 = LoadFX( "water/rapids_splash_0x1000" );
	level._effect[ "rapids_splash_1000x1000" ] 				 = LoadFX( "water/rapids_splash_1000x1000" );
	level._effect[ "rapids_splash_large" ] 					 = LoadFX( "water/rapids_splash_large" );
	level._effect[ "rapids_splash_large_dark" ] 			 = LoadFX( "water/rapids_splash_large_dark" );
	level._effect[ "rapids_splash_large_far" ] 				 = LoadFX( "water/rapids_splash_large_far" );
	level._effect[ "waterfall_afchase" ]	 				 = LoadFX( "water/waterfall_afchase" );
	level._effect[ "waterfall_base_afchase" ]	 			 = LoadFX( "water/waterfall_base_afchase" );

	level._effect[ "heli_blinds_player" ]					 = LoadFX( "weather/sand_storm_player_blind" );
	level._effect[ "shepherd_anaconda" ]					 = LoadFX( "muzzleflashes/desert_eagle_flash_wv");
	// this overrides the blizzard snow fx.	
	
	//Zodiac Bounce Small Left
	level._effect[ "pavelow_minigunner_splash_add" ]  		 = LoadFX( "water/zodiac_splash_bounce_small" );

	level._effect[ "bloodpool_ending" ]	 	 = Loadfx( "impacts/deathfx_bloodpool_ending" );


	if ( GetDvarInt( "r_reflectionProbeGenerate" ) )
		return;

	maps\createfx\af_chase_fx::main();

}