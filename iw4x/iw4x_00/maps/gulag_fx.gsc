#include common_scripts\utility;
#include maps\_utility;

main()
{
	level._effect[ "breach_price" ]										 = LoadFX( "explosions/gulag_price_breach" );
	level._effect[ "water_stop" ]						 				 = LoadFX( "misc/parabolic_water_stand" );
	level._effect[ "water_movement" ]					 				 = LoadFX( "misc/parabolic_water_movement" );

	//Underground Exploders
	level._effect[ "sparks_e_sound" ] 									 = LoadFX( "explosions/sparks_e_sound" );
	level._effect[ "welding_small_extended" ] 							 = LoadFX( "misc/welding_small_extended" );
	level._effect[ "grenade_wood" ] 									 = LoadFX( "explosions/grenadeExp_wood" );
	level._effect[ "headshot" ]											 = LoadFX( "impacts/flesh_hit_head_fatal_exit" );



	level._effect[ "hallway_collapsing" ]								 = LoadFX( "misc/hallway_collapsing" );
	level._effect[ "hallway_collapsing_big" ] 							 = LoadFX( "misc/hallway_collapsing_big" );
	level._effect[ "hallway_collapsing_huge" ] 							 = LoadFX( "misc/hallway_collapsing_huge" );
	level._effect[ "hallway_collapsing_chase" ] 						 = LoadFX( "misc/hallway_collapsing_chase" );
	level._effect[ "hallway_collapsing_cavein" ] 						 = LoadFX( "misc/hallway_collapsing_cavein" );
	level._effect[ "hallway_collapsing_cavein_short" ]					 = LoadFX( "misc/hallway_collapsing_cavein_short" );

	level._effect[ "hallway_collapsing_burst" ] 						 = LoadFX( "misc/hallway_collapsing_burst" );
	level._effect[ "hallway_collapsing_burst_no_linger" ] 				 = LoadFX( "misc/hallway_collapsing_burst_no_linger" );
	level._effect[ "hallway_collapsing_major" ] 						 = LoadFX( "misc/hallway_collapsing_major" );
	level._effect[ "hallway_collapsing_major_norocks" ] 				 = LoadFX( "misc/hallway_collapsing_major_norocks" );

	level._effect[ "hallway_collapse_smoke_runner" ] 					 = LoadFX( "smoke/hallway_collapse_smoke_runner" );
	level._effect[ "hallway_collapse_smoke_runner_short" ] 				 = LoadFX( "smoke/hallway_collapse_smoke_runner_short" );
	level._effect[ "hallway_cavein_smoke_runner_no_linger" ]			 = LoadFX( "smoke/hallway_cavein_smoke_runner_no_linger" );
	level._effect[ "hallway_collapse_smoke_swirl_runner" ] 				 = LoadFX( "smoke/hallway_collapse_smoke_swirl_runner" );
	level._effect[ "hallway_collapse_ceiling_smoke" ] 					 = LoadFX( "smoke/hallway_collapse_ceiling_smoke" );

	level._effect[ "hallway_cavein_smoke_runner" ] 						 = LoadFX( "smoke/hallway_cavein_smoke_runner" );

	//Player Footstep fx
	level._effect[ "footstep_snow_small" ]								 = LoadFX( "impacts/footstep_snow_small" );
	level._effect[ "footstep_snow" ]									 = LoadFX( "impacts/footstep_snow" );

//	

	level._effect[ "ceiling_collapse_dirt1" ] 							 = LoadFX( "dust/ceiling_collapse_dirt1" );
	level._effect[ "ceiling_collapse_dirt1_decal" ] 					 = LoadFX( "dust/ceiling_collapse_dirt1_decal" );
	level._effect[ "ceiling_rock_break" ] 								 = LoadFX( "misc/ceiling_rock_break" );
	level._effect[ "ceiling_rock_break_decal" ] 						 = LoadFX( "misc/ceiling_rock_break_decal" );
	level._effect[ "ceiling_rock_break_grow" ] 							 = LoadFX( "misc/ceiling_rock_break_grow" );
	level._effect[ "rock_falling_large" ] 								 = LoadFX( "misc/rock_falling_large" );
	level._effect[ "glass_falling" ] 									 = LoadFX( "misc/glass_falling" );

	//Center Lightshaft
	level._effect[ "falling_debris_ring" ] 								 = LoadFX( "misc/falling_debris_ring" );
	level._effect[ "trash_paper_dropping" ] 							 = LoadFX( "misc/trash_paper_dropping" );

	//Waterfall
	level._effect[ "waterfall_drainage" ] 								 = LoadFX( "water/waterfall_drainage" );
	level._effect[ "waterfall_drainage_short" ] 						 = LoadFX( "water/waterfall_drainage_short" );
	level._effect[ "waterfall_drainage_distortion" ] 					 = LoadFX( "water/waterfall_drainage_distortion" );
	level._effect[ "waterfall_drainage_splash" ] 						 = LoadFX( "water/waterfall_drainage_splash" );
	level._effect[ "waterfall_drainage_splash_falling" ] 				 = LoadFX( "water/waterfall_drainage_splash_falling" );

	level._effect[ "gulag_cafe_spotlight" ] 							 = LoadFX( "misc/gulag_cafe_spotlight" );


	level._effect[ "firelp_large_pm" ] 									 = LoadFX( "fire/firelp_large_pm" );
	level._effect[ "firelp_med_pm" ] 									 = LoadFX( "fire/firelp_med_pm" );
	level._effect[ "flare_start_gulag" ]	 							 = LoadFX( "misc/flare_start_gulag" );
	level._effect[ "flare_gulag" ]	 									 = LoadFX( "misc/flare_gulag" );

	level._effect[ "water_slide" ]	 									 = LoadFX( "water/water_slide" );
	level._effect[ "water_slide_splash" ]	 							 = LoadFX( "water/water_slide_splash" );
	level._effect[ "water_slide_start" ]	 							 = LoadFX( "water/water_slide_start" );

	//Final Room
	level._effect[ "falling_water_trickle" ]	 						 = LoadFX( "water/falling_water_trickle" );
	level._effect[ "wall_explosion_2" ]	 								 = LoadFX( "explosions/wall_explosion_2" );
	level._effect[ "wall_explosion_2_short" ]	 						 = LoadFX( "explosions/wall_explosion_2_short" );
	level._effect[ "wall_explosion_2_short_nosmoke" ]	 				 = LoadFX( "explosions/wall_explosion_2_short_nosmoke" );
	level._effect[ "building_explosion_mega_gulag" ]	 				 = LoadFX( "explosions/building_explosion_mega_gulag" );
	level._effect[ "fireball_gulag" ]	 								 = LoadFX( "explosions/fireball_gulag" );
	level._effect[ "player_cavein" ]	 								 = LoadFX( "smoke/player_cavein" );
	level._effect[ "debri_explosion" ]	 								 = LoadFX( "explosions/debri_explosion" );
	level._effect[ "falling_debrigulag_evac" ]	 						 = LoadFX( "misc/falling_debris_gulag_evac" );

	//Scripted Lights & Stuff
	level._effect[ "dlight_blue" ] 										 = LoadFX( "misc/dlight_blue" );
	level._effect[ "dlight_blue_flicker" ] 								 = LoadFX( "misc/dlight_blue_flicker" );
	level._effect[ "dlight_red" ] 										 = LoadFX( "misc/dlight_red" );
	level._effect[ "flesh_hit" ] 										 = LoadFX( "impacts/flesh_hit_body_fatal_exit" );

	//Intro Fx

	level._effect[ "minigun_shell_eject" ] 								 = LoadFX( "shellejects/20mm_mp" );
	level._effect[ "f15_missile" ] 										 = LoadFX( "smoke/smoke_geotrail_sidewinder" );



	level._effect[ "missile_brackets" ] 								 = LoadFX( "misc/missile_brackets" );
	level._effect[ "javelin_ignition" ] 								 = LoadFX( "misc/javelin_ignition_gulag" );
	level._effect[ "jet_afterburner_ignite" ] 							 = LoadFX( "fire/jet_afterburner_ignite" );
	level._effect[ "javelin_trail" ] 									 = LoadFX( "smoke/smoke_geotrail_javelin_gulag_flyin" );
	level._effect[ "tracer_incoming" ] 									 = LoadFX( "misc/tracer_incoming" );
	level._effect[ "smoke_swirl_runner_dual" ] 							 = LoadFX( "smoke/smoke_swirl_runner_dual" );

	level._effect[ "missile_explosion" ]								 = LoadFX( "explosions/vehicle_explosion_bmp" );
	level._effect[ "f15_smoke" ]										 = LoadFX( "smoke/smoke_trail_black_jet" );

	level._effect[ "building_explosion_gulag" ]							 = LoadFX( "explosions/building_explosion_gulag" );
	level._effect[ "building_explosion_gulag_blowback" ]				 = LoadFX( "explosions/building_explosion_gulag_blowback" );
	level._effect[ "building_explosion_huge_gulag" ]					 = LoadFX( "explosions/building_explosion_huge_gulag" );
	level._effect[ "building_explosion_metal_gulag" ]					 = LoadFX( "explosions/building_explosion_metal_gulag" );
	level._effect[ "bhd_dirt" ]											 = LoadFX( "impacts/bhd_dirt" );
	level._effect[ "smoke_pushed" ]										 = LoadFX( "smoke/smoke_pushed" );

	level._effect[ "jet_crash" ]										 = LoadFX( "explosions/jet_crash" );
	level._effect[ "jet_crash_bounce" ]									 = LoadFX( "explosions/jet_crash_bounce" );
	level._effect[ "jet_crash_smoke_blow_1" ]							 = LoadFX( "explosions/jet_crash_smoke_blow_1" );
	level._effect[ "jet_crash_smoke_blow_2" ]							 = LoadFX( "explosions/jet_crash_smoke_blow_2" );
	level._effect[ "jet_crash_smoke_fill" ]								 = LoadFX( "explosions/jet_crash_smoke_fill" );
	level._effect[ "thin_black_smoke_L" ]								 = LoadFX( "smoke/thin_black_smoke_L" );
	level._effect[ "thick_black_smoke_L" ]								 = LoadFX( "smoke/thick_black_smoke_L" );

	level._effect[ "missile_trail" ]									 = LoadFX( "smoke/gulag_missile_trail" );
	add_earthquake( "boat_artillery", 0.35, 0.75, 4500 );
	add_earthquake( "ceiling_collapse", 0.4, 4, 4500 );


	//Ambient FX	

	level._effect[ "powerline_runner_10sec_line" ]						 = LoadFX( "explosions/powerline_runner_10sec_line" );
	level._effect[ "amb_ash" ]											 = LoadFX( "smoke/amb_ash" );
	level._effect[ "amb_smoke_blend" ]									 = LoadFX( "smoke/amb_smoke_blend" );
	level._effect[ "battlefield_smokebank_bog_a" ]						 = LoadFX( "smoke/battlefield_smokebank_bog_a" );
	level._effect[ "amb_smoke_add" ]									 = LoadFX( "smoke/amb_smoke_add" );
	level._effect[ "battlefield_smokebank_S" ]							 = LoadFX( "smoke/battlefield_smokebank_S" );
	level._effect[ "insect_trail_runner" ]								 = LoadFX( "misc/insect_trail_runner" );
	level._effect[ "moth_runner" ]										 = LoadFX( "misc/moth_runner" );
	level._effect[ "dust_wind_slow_broadcast" ]							 = LoadFX( "dust/dust_wind_slow_broadcast" );
	level._effect[ "fog_bog_a" ]										 = LoadFX( "weather/fog_bog_a" );
	level._effect[ "dust_ceiling_ash_small" ]			 				 = LoadFX( "dust/dust_ceiling_ash_small" );
	level._effect[ "hallway_smoke_light" ]								 = LoadFX( "smoke/hallway_smoke_light" );
	level._effect[ "hawk" ]												 = LoadFX( "weather/hawk" );
	level._effect[ "dust_wind_slow_loop_gulag" ]						 = LoadFX( "dust/dust_wind_slow_loop_gulag" );
	level._effect[ "firelp_med_pm" ]									 = LoadFX( "fire/firelp_med_pm" );
	level._effect[ "firelp_small_pm" ]									 = LoadFX( "fire/firelp_small_pm" );
	level._effect[ "drips_slow" ]										 = LoadFX( "misc/drips_slow" );
	level._effect[ "drips_slow_infrequent" ]							 = LoadFX( "misc/drips_slow_infrequent" );
	level._effect[ "fire_falling_runner_point" ]						 = LoadFX( "fire/fire_falling_runner_point" );

	// Cloud FX
	level._effect[ "cloud_bank_far_gulag" ]								 = LoadFX( "weather/cloud_bank_far_gulag" );
	level._effect[ "cloud_bank_gulag" ]									 = LoadFX( "weather/cloud_bank_gulag" );
	level._effect[ "cloud_bank_gulag_z_feather" ]						 = LoadFX( "weather/cloud_bank_gulag_z_feather" );
	level._effect[ "cloud_bank_thick_gulag" ]							 = LoadFX( "weather/cloud_bank_thick_gulag" );
	level._effect[ "cloud_bank_opaque_1_gulag" ]						 = LoadFX( "weather/cloud_bank_opaque_1_gulag" );
	level._effect[ "cloud_bank_opaque_2_gulag" ]						 = LoadFX( "weather/cloud_bank_opaque_2_gulag" );
	level._effect[ "cloud_bank_opaque_oriented_gulag" ]					 = LoadFX( "weather/cloud_bank_opaque_oriented_gulag" );
	level._effect[ "cloud_bank_cloud_filler_gulag" ]					 = LoadFX( "weather/cloud_bank_cloud_filler_gulag" );
	level._effect[ "cloud_bank_cloud_filler_tight_gulag" ]				 = LoadFX( "weather/cloud_bank_cloud_filler_tight_gulag" );
	level._effect[ "cloud_bank_cloud_filler_tight_hazy_gulag" ]			 = LoadFX( "weather/cloud_bank_cloud_filler_tight_hazy_gulag" );
	level._effect[ "cloud_bank_cloud_filler_light_gulag" ]				 = LoadFX( "weather/cloud_bank_cloud_filler_light_gulag" );
	level._effect[ "gulag_clouds" ]										 = LoadFX( "weather/gulag_clouds" );


	if ( !isdefined( level.script ) )
		level.script = ToLower( GetDvar( "mapname" ) );

	if ( !getdvarint( "r_reflectionProbeGenerate" ) )
		maps\createfx\gulag_fx::main();

	thread treadfx_override();

}