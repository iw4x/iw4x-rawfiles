#include common_scripts\utility;

main()
{
	thread precacheFX();
	maps\createfx\oilrig_fx::main();
}

precacheFX()
{
	level._effect[ "pipe_steam" ]		= loadfx( "impacts/pipe_steam" );
	level._effect[ "firelp_small_pm_nolight" ]					= loadfx( "fire/firelp_small_pm_nolight" );
	level._effect[ "firelp_small_pm" ]							= loadfx( "fire/firelp_small_pm" );
	level._effect[ "minigun_shell_eject" ] 								= loadfx( "shellejects/20mm_mp" );
	
	level._effect[ "cold_breath" ]				 = loadfx( "misc/cold_breath" );
	level._effect[ "player_death_explosion" ]				 = loadfx( "explosions/player_death_explosion" );
	
	level._effect[ "smokescreen" ]	 = loadfx( "smoke/smoke_screen" );

	level._effect[ "sdv_prop_wash_1" ]	 					= loadfx( "water/sdv_prop_wash_1" );
	//level._effect[ "sub_prop_wash_1" ]	 					= loadfx( "water/sdv_prop_wash_1" );
	level._effect[ "sdv_contrail" ]							= loadfx( "smoke/jet_contrail" );
	
	level._effect[ "scuba_bubbles" ]			 			= loadfx( "water/scuba_bubbles_breath" );
	level._effect[ "scuba_bubbles_friendly" ]				= loadfx( "water/scuba_bubbles_breath" );
	level._effect[ "oilrig_underwater_ambient" ]			= loadfx( "water/oilrig_underwater_ambient" );
	level._effect[ "oilrig_underwater_ambient_emitter" ]	= loadfx( "water/oilrig_underwater_ambient_emitter" );
	level._effect[ "oilrig_underwater_ambient_looped" ]		= loadfx( "water/oilrig_underwater_ambient_looped" );
	level._effect[ "fish_school01" ]	 					= loadfx( "animals/fish_school01" );
	level._effect[ "fish_school_top_oilrig_base" ]	 		= loadfx( "animals/fish_school_top_oilrig_base" );
	level._effect[ "fish_school_side_med" ]	 				= loadfx( "animals/fish_school_side_med" );
	level._effect[ "fish_school_side_large" ]	 			= loadfx( "animals/fish_school_side_large" );
	level._effect[ "oilrig_underwater_caustic" ]	 		= loadfx( "water/oilrig_underwater_caustic" );

	level._effect[ "bloodspurt_underwater" ]	 			= loadfx( "water/blood_spurt_underwater" );
	level._effect[ "deathfx_bloodpool_underwater" ]	 		= loadfx( "impacts/deathfx_bloodpool_underwater" );
	level._effect[ "splash_underwater_stealthkill" ]	 	= loadfx( "water/splash_underwater_stealthkill" );
	
	level._effect[ "drips_player_hand" ]	 				= loadfx( "water/drips_player_hand" );

	level._effect[ "oil_rig_fire" ]						 = loadfx( "fire/oil_rig_fire" );
	level._effect[ "wavebreak_oilrig_runner" ]			 = loadfx( "misc/wavebreak_oilrig_runner" );
	level._effect[ "water_froth_oilrig" ]				 = loadfx( "misc/water_froth_oilrig" );
	level._effect[ "water_froth_oilrig_leg_runner" ]	 = loadfx( "misc/water_froth_oilrig_leg_runner" );
	level._effect[ "bird_seagull_flock_large" ]			 = loadfx( "misc/bird_seagull_flock_large" );
	level._effect[ "powerline_runner" ]					 = loadfx( "explosions/powerline_runner" );

 	level._effect[ "oilrig_drips_riser" ]				= loadfx( "water/oilrig_drips_riser" );

 	level._effect[ "splash_ring_32_oilrig" ]			= loadfx( "water/splash_ring_32_oilrig" );
 	level._effect[ "drips_slow" ]					 	= loadfx( "misc/drips_slow" );
 	level._effect[ "steam_vent_small" ]					= loadfx( "smoke/steam_vent_small" );
 	level._effect[ "steam_manhole" ]					= loadfx( "smoke/steam_manhole" );
 	level._effect[ "steam_room_100" ]					= loadfx( "smoke/steam_room_100" );
 	level._effect[ "steam_hall_200" ]					= loadfx( "smoke/steam_hall_200" );
 	level._effect[ "steam_room_100_orange" ]			= loadfx( "smoke/steam_room_100_orange" );
 	level._effect[ "steam_hall_200_orange" ]			= loadfx( "smoke/steam_hall_200_orange" );
	level._effect[ "light_glow_grating_yellow" ]		= loadfx( "misc/light_glow_grating_yellow" );
	level._effect[ "oilrig_debri_large" ]		 		= loadfx( "misc/oilrig_debri_large" );
 	level._effect[ "ground_fog_oilrig" ]				= loadfx( "smoke/ground_fog_oilrig" );
 	level._effect[ "ground_fog_oilrig_far" ]			= loadfx( "smoke/ground_fog_oilrig_far" );

	level._effect[ "thin_black_smoke_M" ]				 = loadfx( "smoke/thin_black_smoke_M_nofog" );
	level._effect[ "thin_black_smoke_L" ]				 = loadfx( "smoke/thin_black_smoke_L_nofog" );
	level._effect[ "thin_black_smoke_S" ]				 = loadfx( "smoke/thin_black_smoke_S_nofog" );

	level._effect[ "underwater_particulates_01" ]		= loadfx( "dust/light_shaft_dust_large" );
 	level._effect[ "underwater_particulates_02" ]		= loadfx( "dust/room_dust_200" );
 	level._effect[ "underwater_particulates_03" ]		= loadfx( "dust/room_dust_100" );


	level._effect[ "body_splash_railing" ]			 	= loadfx( "impacts/water_splash_bodydump" );

	level._effect[ "ambush_explosion_03" ]			 	= loadfx( "explosions/window_explosion_1_oilrig" );
	level._effect[ "ambush_explosion_room" ]			= loadfx( "explosions/room_explosion_oilrig" );
	level._effect[ "light_c4_blink_nodlight" ] 			= loadfx( "misc/light_c4_blink_nodlight" );

	level._effect[ "zodiac_wake_geotrail_oilrig" ]		= loadfx( "treadfx/zodiac_wake_geotrail_oilrig" );

	level._effect[ "sub_surface_runner" ]			 	 = loadfx( "water/sub_surface_runner" );

	// "hunted light" required zfeather == 1 and r_zfeather is undefined on console.  So, test for != "0".
	if ( getdvarint( "sm_enable" ) && getdvar( "r_zfeather" ) != "0" )
		level._effect[ "spotlight" ]						 = loadfx( "misc/hunted_spotlight_model" );
	else
		level._effect[ "spotlight" ]						 = loadfx( "misc/spotlight_large" );

	level._effect[ "heli_dlight_blue" ]					 = loadfx( "misc/aircraft_light_cockpit_blue" );

}