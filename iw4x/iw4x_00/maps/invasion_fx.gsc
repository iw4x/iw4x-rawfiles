#include common_scripts\utility;

main()
{
	level._effect[ "uav_explosion" ]						 		 = LoadFX( "explosions/vehicle_explosion_hummer_nodoors" );
	
	//walking through water
	level._effect[ "water_stop" ]						 			 = LoadFX( "misc/parabolic_water_stand" );
	level._effect[ "water_movement" ]					 			 = LoadFX( "misc/parabolic_water_movement" );

	level._effect[ "firelp_vhc_lrg_pm_farview" ]          			 = LoadFX( "fire/firelp_vhc_lrg_pm_farview" );
	level._effect[ "antiair_runner" ]				 				 = LoadFX( "misc/antiair_runner_cloudy" );
	level._effect[ "thin_black_smoke_L" ]			 				 = LoadFX( "smoke/thin_black_smoke_L" );
	level._effect[ "wood_explosion_1" ]			 					 = LoadFX( "explosions/wood_explosion_1" );

	level._effect[ "smokescreen" ]     								 = LoadFX( "smoke/smoke_grenade_low_invasion" );

	level._effect[ "ceiling_dust" ]						 			 = LoadFX( "dust/ceiling_dust_default" );

	//deleted by z for optimization
	//level._effect[ "horizon_explosion" ]				 			 = LoadFX( "explosions/default_explosion" );
	//level._effect[ "horizon_explosion_distant" ]			 		 = LoadFX( "explosions/default_explosion" );
	//level._effect[ "horizon_explosion_more_distant" ]				 = LoadFX( "explosions/default_explosion" );

	//intro 
	level._effect[ "humvee_explosion" ]						 		 = LoadFX( "explosions/small_vehicle_explosion" );
	level._effect[ "pillar_explosion_brick" ]				 		 = LoadFX( "explosions/pillar_explosion_brick_invasion" );

	// nates_restaurant prefab exploder id's 138-151 
	// just replace below with LoadFX( "misc/no_effect" ) to empty out the effect and do it yourself in createfx
	// we'll cleanup the entities when you're done making it pretty.
	level._effect[ "nates_roof_balcony_blaster" ]					 = LoadFX( "explosions/default_explosion" );
	level._effect[ "nates_roof_balcony_blaster_bricks" ]			 = LoadFX( "explosions/brick_chunk" );
	level._effect[ "nates_roof_balcony_blaster_sparks_b" ]			 = LoadFX( "explosions/sparks_b" );
	level._effect[ "nates_sign_explosion" ]				 			 = LoadFX( "explosions/window_explosion" );
	level._effect[ "nates_sign_explosion_sparks_runner" ]			 = LoadFX( "explosions/sparks_runner" );
	level._effect[ "nates_sign_explosion_flaming_awning" ]			 = LoadFX( "fire/firelp_small_pm" );
	level._effect[ "nates_roof_balcony_blaster" ]					 = LoadFX( "explosions/default_explosion" );
	level._effect[ "nates_roof_awning_flareup" ]					 = LoadFX( "explosions/fuel_med_explosion" );
	level._effect[ "nates_roof_pipe_fire" ]				 			 = LoadFX( "impacts/pipe_fire" );

	//this plays on super explosion
	level._effect[ "nates_super_explosion_smoke" ]					 = LoadFX( "smoke/thin_black_smoke_L" );
	level._effect[ "nates_super_explosion" ]						 = LoadFX( "explosions/nates_super_explosion" );
	level._effect[ "nates_sign_explode" ]						 	 = LoadFX( "explosions/nates_sign_explode" );

	level._effect[ "falling_debris_player" ]						 = LoadFX( "misc/falling_debris_player" );


	// fire fx
	level._effect[ "fire_tree" ]									 = LoadFX( "fire/fire_tree" );
	level._effect[ "fire_tree_slow" ]								 = LoadFX( "fire/fire_tree_slow" );
	level._effect[ "fire_falling_runner" ]							 = LoadFX( "fire/fire_falling_runner" );
	level._effect[ "fire_falling_localized_runner" ]				 = LoadFX( "fire/fire_falling_localized_runner" );
	level._effect[ "fire_tree_embers" ]								 = LoadFX( "fire/fire_tree_embers" );
	level._effect[ "fire_tree_distortion" ]							 = LoadFX( "fire/fire_tree_distortion" );

	level._effect[ "firelp_med_pm" ]								 = LoadFX( "fire/firelp_med_pm" );
	level._effect[ "firelp_small_pm" ]								 = LoadFX( "fire/firelp_small_pm" );
	level._effect[ "firelp_small_pm_a" ]							 = LoadFX( "fire/firelp_small_pm_a" );
	
	level._effect[ "firelp_small_streak_pm1_h" ]					 = loadfx( "fire/firelp_small_streak_pm1_h" );

	//ambient	
	level._effect[ "bird_seagull_flock_large" ]						 = LoadFX( "misc/bird_seagull_flock_large" );
	level._effect[ "insect_trail_runner_icbm" ]						 = LoadFX( "misc/insect_trail_runner_icbm" );
	level._effect[ "leaves_fall_gentlewind" ]						 = LoadFX( "misc/leaves_fall_gentlewind" );
	level._effect[ "leaves_ground_gentlewind" ]						 = LoadFX( "misc/leaves_ground_gentlewind" );
	level._effect[ "moth_runner" ]									 = LoadFX( "misc/moth_runner" );

	level._effect[ "ground_smoke_1200x1200" ]						 = LoadFX( "smoke/ground_smoke1200x1200" );
//	level._effect[ "battlefield_smokebank_S" ]						= LoadFX( "smoke/battlefield_smokebank_S" );
	level._effect[ "fog_ground_200" ]								 = LoadFX( "smoke/fog_ground_200" );
	level._effect[ "grn_smk_ling" ]									 = LoadFX( "smoke/grn_smk_ling" );
	level._effect[ "hallway_smoke_light" ]							 = LoadFX( "smoke/hallway_smoke_light" );

	level._effect[ "insects_light_invasion" ]						 = LoadFX( "misc/insects_light_invasion" );
	level._effect[ "heli_crash_fire" ]								 = LoadFX( "fire/heli_crash_fire" );

	level._effect[ "smoke_plume01" ]								 = LoadFX( "smoke/smoke_plume01" );
	level._effect[ "skybox_smoke" ]									 = LoadFX( "smoke/skybox_smoke" );
}