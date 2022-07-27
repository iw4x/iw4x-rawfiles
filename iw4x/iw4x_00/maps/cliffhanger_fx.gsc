#include common_scripts\utility;

main()
{
	level thread precacheFX();
	maps\createfx\cliffhanger_fx::main();
}

precacheFX()
{

	//Player Footstep fx
	level._effect[ "footstep_snow_small" ]					= loadfx( "impacts/footstep_snow_small" );
	level._effect[ "footstep_snow" ]						= loadfx( "impacts/footstep_snow" );

	//Price Climbing FX (more in _climb.gsc)
	level._effect[ "snow_price_grab" ]						= loadfx( "snow/snow_price_grab" );
	level._effect[ "snow_jump" ]							= loadfx( "snow/snow_jump" );
	level._effect[ "snow_dropping_debris" ]					= loadfx( "snow/snow_dropping_debris" );

	//Price SLiding fx
	level._effect[ "price_landing" ]						= loadfx( "snow/snow_price_landing" );
	level._effect[ "price_sliding" ]						= loadfx( "snow/snow_price_sliding" );

	//Snowmobile FX
	level._effect[ "tread_snow_snowmobile_skidout" ]		= loadfx( "treadfx/tread_snow_snowmobile_skidout" );

	//Mig Landing FX
	level._effect[ "mig_landing_snow" ]						= loadfx( "treadfx/mig_landing_snow_runner" );
	level._effect[ "mig_landing_trail_snow" ]				= loadfx( "smoke/mig29_landing_trail_snow" );

	//Ambient fx
	level._effect[ "snow_blowoff_ledge" ]		 			= loadfx( "snow/snow_blowoff_ledge" );
	level._effect[ "snow_blowoff_ledge_runner" ]			= loadfx( "snow/snow_blowoff_ledge_runner" );
	
	level._effect[ "snow_updraft" ]							= loadfx( "snow/snow_updraft" );
	level._effect[ "snow_updraft_runner" ]					= loadfx( "snow/snow_updraft_runner" );

	level._effect[ "snow_clifftop_runner" ]					= loadfx( "snow/snow_clifftop_runner" );
	level._effect[ "snow_clifftop_jet_blow" ]				= loadfx( "snow/snow_clifftop_jet_blow" );

	level._effect[ "snow_spray_detail_runner400x400" ]		= loadfx( "snow/snow_spray_detail_runner400x400" );
	level._effect[ "snow_spray_detail_runner0x400" ]	 	= loadfx( "snow/snow_spray_detail_runner0x400" );
	level._effect[ "snow_spray_detail_runner0x400_far" ]	= loadfx( "snow/snow_spray_detail_runner0x400_far" );
	level._effect[ "snow_spray_detail_runner0x200_far" ]	= loadfx( "snow/snow_spray_detail_runner0x200_far" );
	level._effect[ "snow_spray_detail_runner50x50" ]	 	= loadfx( "snow/snow_spray_detail_runner50x50" );
	
	//Lights
	level._effect[ "lighthaze_snow" ]						= loadfx( "misc/lighthaze_snow" );
	level._effect[ "lighthaze_snow_headlights" ]			= loadfx( "misc/lighthaze_snow_headlights" );
	level._effect[ "car_taillight_uaz_l" ]					= loadfx( "misc/car_taillight_uaz_l" );
	level._effect[ "lighthaze_snow_spotlight" ]				= loadfx( "misc/lighthaze_snow_spotlight" );
	level._effect[ "aircraft_light_red_blink" ]				= loadfx( "misc/aircraft_light_red_blink" );
	level._effect[ "power_tower_light_red_blink" ]			= loadfx( "misc/power_tower_light_red_blink" );
	level._effect[ "light_glow_red_snow_pulse" ]			= loadfx( "misc/light_glow_red_snow_pulse" );

	level._effect[ "heater" ]								= loadfx( "distortion/heater" );
	level._effect[ "snow_vortex" ]							= loadfx( "snow/snow_vortex" );
	level._effect[ "snow_vortex_runner" ]					= loadfx( "snow/snow_vortex_runner" );

	//Hangar Destraction
	level._effect[ "fuel_tank_explosion" ]					= loadfx( "explosions/vehicle_explosion_mig29" );
	level._effect[ "fuel_truck_explosion" ]					= loadfx( "explosions/vehicle_explosion_mig29" );
	
	level._effect[ "thin_black_smoke_M" ]					= loadfx( "smoke/thin_black_smoke_M" );
	level._effect[ "thin_black_smoke_L" ]					= loadfx( "smoke/thin_black_smoke_L" );
	level._effect[ "tire_fire_med" ]						= loadfx( "fire/tire_fire_med" );

	//Hangar Welder
	level._effect[ "welding_runner" ]						= loadfx( "misc/welding_runner" );

	//Snowmobile Section
	level._effect[ "large_snow_explode" ]					= loadfx( "explosions/large_snow_explode" );
	level._effect[ "tree_trunk_explosion" ]					= loadfx( "explosions/tree_trunk_explosion" );

	//Avalanche
	level._effect[ "avalanche_explosion" ]					= loadfx( "explosions/avalanche_explosion" );
	level._effect[ "avalanche_start" ]						= loadfx( "snow/avalanche_start" );
	level._effect[ "avalanche_start2" ]						= loadfx( "snow/avalanche_start2" );
	level._effect[ "avalanche_loop_large" ]					= loadfx( "snow/avalanche_loop_large" );
	
}