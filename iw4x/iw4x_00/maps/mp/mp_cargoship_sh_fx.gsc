main()
{
	thread precache_createfx_fx(); 	
}

precache_createfx_fx()
{

	level._effect["snow_medium_2"]					= loadfx ("snow/snow_medium_2");	
	level._effect["snow_wind_sh"]							= loadfx ("snow/snow_wind_sh");
	level._effect["mp_cargoship_rain_noise01"]			= loadfx ("ambient_runners/mp_cargoship_rain_noise01");
	level._effect["mp_cargoship_rain_noise02"]			= loadfx ("ambient_runners/mp_cargoship_rain_noise02");
	level._effect["mp_cargoship_rain_noise03"]			= loadfx ("ambient_runners/mp_cargoship_rain_noise03");
	level._effect["mp_cargoship_rain_noise04"]			= loadfx ("ambient_runners/mp_cargoship_rain_noise04");
	level._effect["mp_cargoship_rain_noise05"]			= loadfx ("ambient_runners/mp_cargoship_rain_noise05");
	level._effect["mp_cargoship_rain_noise_ud01"]		= loadfx ("ambient_runners/mp_cargoship_rain_noise_ud01");
	level._effect["mp_cargoship_rain_noise_ud02"]		= loadfx ("ambient_runners/mp_cargoship_rain_noise_ud02");
	level._effect["mp_cargoship_rain_noise_ud03"]		= loadfx ("ambient_runners/mp_cargoship_rain_noise_ud03");
	level._effect["cgoshp_drips_a"]						= loadfx ("misc/cgoshp_drips_a");
	level._effect["cgoshp_drips"]						= loadfx ("misc/cgoshp_drips");
	
	level._effect["snow_light"]						= loadfx ("snow/snow_light");
	level._effect["snow_light_cargoship_sh"]					= loadfx ("snow/snow_light_cargoship_sh");
	level._effect["snow_spiral_runner_sh"]				= loadfx ("snow/snow_spiral_runner_sh");
	level._effect["snow_spray_detail_oriented_runner_sh"]				= loadfx ("snow/snow_spray_detail_oriented_runner_sh");
	level._effect["snow_spray_detail_oriented_large_runner_sh"]				= loadfx ("snow/snow_spray_detail_oriented_large_runner_sh");
	level._effect["snow_spray_detail_oriented_runner_400x400_sh"]				= loadfx ("snow/snow_spray_detail_oriented_runner_400x400_sh");
	level._effect[ "tree_snow_fallen_heavy" ]						= loadfx( "snow/tree_snow_fallen_heavy" );
	level._effect[ "tree_snow_dump" ]								= loadfx( "snow/tree_snow_dump_sh" );
	level._effect[ "tree_snow_fallen_small" ]						= loadfx( "snow/tree_snow_fallen_small" );
	level._effect[ "snow_clouds_sh" ]						= loadfx( "snow/snow_clouds_sh" );
	level._effect["fire_cargo"]		          = loadfx ("fire/fire_cargo");
	level._effect["red_light"]		          = loadfx ("fire/red_light");
	level._effect["codo_fx_ray_ceiling_amber_dim_sm"]		          = loadfx ("env/light/codo_fx_ray_ceiling_amber_dim_sm");
	level._effect["codo_fx_ray_ceiling_amber_dim_sm01"]		          = loadfx ("env/light/codo_fx_ray_ceiling_amber_dim_sm01");
	level._effect["cargo_redlight"]		          = loadfx ("env/light/cargo_redlight");
}
