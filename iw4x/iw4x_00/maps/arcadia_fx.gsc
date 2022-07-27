#include common_scripts\utility;

main()
{
	level._effect[ "zpu_muzzle" ]							= loadfx( "muzzleflashes/zpu_flash_wv" );
	level._effect[ "zpu_explode" ]							= loadfx( "explosions/vehicle_explosion_bmp" );
	
	level._effect[ "mortar_grass" ]							= loadfx( "explosions/grenadeExp_mud" );
	level._effect[ "mortar_sand" ]							= loadfx( "explosions/grenadeExp_dirt" );
	
	level._effect[ "stryker_smoke" ]						= loadfx( "smoke/heli_engine_smolder" );
	
	level._effect[ "jet_engine_crashing" ]					= loadfx( "fire/jet_engine_crashing" );
	level._effect[ "c130_engine_smoke" ]					= loadfx( "smoke/smoke_trail_black_jet" );
	level._effect[ "c130_engine_secondary_exp" ]			= loadfx( "explosions/aerial_explosion_crashing" );
	level._effect[ "c130_explode" ]							= loadfx( "explosions/airlift_explosion_large" );
	
	level._effect[ "water_stop" ]							= LoadFX( "misc/parabolic_water_stand" );
	level._effect[ "water_movement" ]						= LoadFX( "misc/parabolic_water_movement" );
	
	level._effect[ "leaves_spiral_runner" ] 				= LoadFX( "misc/leaves_spiral_runner" );
	
	if ( getdvarint( "r_arcadia_culldist" ) == 1 )
		level._effect[ "smoke_plume02" ] 					= LoadFX( "misc/no_effect" );
	else
		level._effect[ "smoke_plume02" ] 					= LoadFX( "smoke/smoke_plume02" );
	
	level._effect[ "horizon_smokefield_dark" ] 				= LoadFX( "smoke/horizon_smokefield_dark" );
	level._effect[ "room_smoke_200" ] 						= LoadFX( "smoke/room_smoke_200" );
	level._effect[ "ground_fog" ] 							= LoadFX( "dust/ground_fog" );
	level._effect[ "ground_fog_a" ] 						= LoadFX( "dust/ground_fog_a" );
	level._effect[ "ground_fog_b" ] 						= LoadFX( "dust/ground_fog_b" );
	level._effect[ "trash_spiral_runner" ] 					= LoadFX( "misc/trash_spiral_runner" );
	level._effect[ "trash_spiral_runner_far" ] 				= LoadFX( "misc/trash_spiral_runner_far" );
	level._effect[ "tanker_explosion_tall" ] 				= LoadFX( "explosions/tanker_explosion_tall" );
	level._effect[ "airplane_crash_smoke" ] 				= LoadFX( "smoke/airplane_crash_smoke" );
	level._effect[ "airplane_crash_smoke_sun_blocker" ] 	= LoadFX( "smoke/airplane_crash_smoke_sun_blocker" );
	level._effect[ "airplane_crash_embers" ] 				= LoadFX( "fire/airplane_crash_embers" );
	level._effect[ "powerline_runner" ] 					= LoadFX( "explosions/powerline_runner" );
	level._effect[ "powerline_runner_cheap" ] 				= LoadFX( "explosions/powerline_runner_cheap" );
	level._effect[ "tire_fire_med" ] 						= LoadFX( "fire/tire_fire_med" );
	level._effect[ "fire_falling_runner_point" ] 			= LoadFX( "fire/fire_falling_runner_point" );
	level._effect[ "fire_falling_runner_point_infrequent" ] = LoadFX( "fire/fire_falling_runner_point_infrequent" );
	level._effect[ "firelp_huge_pm_nolight" ] 				= LoadFX( "fire/firelp_huge_pm_nolight" );
	level._effect[ "firelp_large_pm_far" ] 					= LoadFX( "fire/firelp_large_pm_far" );
	level._effect[ "firelp_med_pm_far" ] 					= LoadFX( "fire/firelp_med_pm_far" );
	level._effect[ "firelp_large_pm_nolight" ] 				= LoadFX( "fire/firelp_large_pm_nolight" );
	level._effect[ "firelp_med_pm_nolight" ] 				= LoadFX( "fire/firelp_med_pm_nolight" );
	level._effect[ "firelp_small_pm_a_nolight" ] 			= LoadFX( "fire/firelp_small_pm_a_nolight" );
	level._effect[ "firelp_large_pm_nolight_high" ] 		= LoadFX( "fire/firelp_large_pm_nolight_high" );
	level._effect[ "firelp_med_pm_nolight_high" ] 			= LoadFX( "fire/firelp_med_pm_nolight_high" );
	level._effect[ "leaves_fall_gentlewind" ] 				= LoadFX( "misc/leaves_fall_gentlewind" );
	level._effect[ "leaves_fall_gentlewind_far" ] 			= LoadFX( "misc/leaves_fall_gentlewind_far" );
	level._effect[ "leaves_ground_gentlewind" ] 			= LoadFX( "misc/leaves_ground_gentlewind" );
	level._effect[ "battlefield_smokebank_S_warm" ] 		= LoadFX( "smoke/battlefield_smokebank_S_warm" );
	level._effect[ "battlefield_smokebank_S_warm_thick" ] 	= LoadFX( "smoke/battlefield_smokebank_S_warm_thick" );
	level._effect[ "insect_trail_runner_icbm" ] 			= LoadFX( "misc/insect_trail_runner_icbm" );
	level._effect[ "moth_runner" ] 							= LoadFX( "misc/moth_runner" );
	level._effect[ "insects_light_invasion" ] 				= LoadFX( "misc/insects_light_invasion" );
	level._effect[ "insects_carcass_runner" ] 				= LoadFX( "misc/insects_carcass_runner" );
	level._effect[ "waterfall_splash_arcadia" ] 			= LoadFX( "water/waterfall_splash_arcadia" );
	level._effect[ "waterfall_splash_arcadia_short" ] 		= LoadFX( "water/waterfall_splash_arcadia_short" );
	level._effect[ "tracer_incoming" ] 						= LoadFX( "misc/tracer_incoming" );


	level._effect[ "b2_bomb" ]								= loadfx( "explosions/airlift_explosion_large" );

	level.scr_sound[ "mortar_incomming" ]					= "mortar_incoming";
	level.scr_sound[ "mortar_grass" ]						= "mortar_explosion";
	level.scr_sound[ "mortar_sand" ]						= "mortar_explo sion";
	
	maps\createfx\arcadia_fx::main();
}
