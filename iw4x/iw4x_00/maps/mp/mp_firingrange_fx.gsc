#include maps\mp\_utility;

// Scripted effects
precache_scripted_fx()
{
	//level._effect["rocket_blast_trail"]								= loadfx("vehicle/exhaust/fx_russian_rocket_exhaust_mp");
	//level._effect["mig_trail"]												= loadfx("trail/fx_geotrail_jet_contrail");
	//level._effect["rocket_explosion"]									= loadfx("maps/flashpoint/fx_exp_rocket_soyuz");
}

precache_createfx_fx()
{

//	level._effect["fx_mp_sand_dust_devil"]								= loadfx("maps/mp_maps/fx_mp_sand_dust_devil");
	
	level._effect["fx_mp_sand_blowing_lg_slow"]						= loadfx("maps/mp_maps/fx_mp_sand_blowing_lg_slow");	
	
	level._effect["fx_sand_windy_slow_door_os"]						= loadfx("maps/mp_maps/fx_mp_sand_windy_slow_door_os");
	level._effect["fx_sand_windy_heavy_sm_slow"]					= loadfx("maps/mp_maps/fx_mp_sand_windy_heavy_sm_slow");
	level._effect["fx_mp_sand_windy_pcloud_lg_slow"]			= loadfx("maps/mp_maps/fx_mp_sand_windy_pcloud_lg_slow_dense");

	level._effect["fx_smk_plume_md_wht_wispy"]						= loadfx("maps/mp_maps/fx_mp_smk_plume_md_wht_wispy");

	level._effect["fx_mp_distortion_heat_field_lg"]				= loadfx("maps/mp_maps/fx_mp_distortion_heat_field_lg");		
	level._effect["fx_mp_distortion_heat_field_sm"]				= loadfx("maps/mp_maps/fx_mp_distortion_heat_field_sm");
	level._effect["fx_mp_distortion_heat_field_xsm"]			= loadfx("maps/mp_maps/fx_mp_distortion_heat_field_xsm");

	level._effect["fx_water_drip_light_short"]						= loadfx("env/water/fx_water_drip_light_short");	
	
	level._effect["fx_mp_light_dust_motes_md"]						= loadfx("maps/mp_maps/fx_mp_light_dust_motes_md");
	
	level._effect["fx_grass_blowing_slow"]								= loadfx("env/foliage/fx_grass_blowing_slow");
	
	level._effect["fx_seagulls_shore_distant"]						= 	loadfx("bio/animals/fx_seagulls_shore_distant");
	
	level._effect["fx_light_red_on_lg"]										= 	loadfx("maps/mp_maps/fx_mp_light_red_firingrange");
	level._effect["fx_light_floodlight_int_blue_short"]		= 	loadfx("env/light/fx_light_floodlight_int_blue_short");	
	level._effect[ "codo_godray_afgan" ]			 	= loadfx( "env/light/codo_godray_afgan" );
	level._effect[ "tropical_bird_runner" ]			 	= loadfx( "animals/tropical_bird_runner" );
	level._effect[ "fx_mp_flies_carcass" ]			 	= loadfx( "maps/mp_maps/fx_mp_flies_carcass" );		


}

main()
{
	precache_scripted_fx();
	precache_createfx_fx();
}
