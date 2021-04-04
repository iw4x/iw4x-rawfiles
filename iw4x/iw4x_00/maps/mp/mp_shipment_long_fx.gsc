main()
{

	level._effect[ "bird_seagull_flock_large" ]		= loadfx( "misc/bird_seagull_flock_large" );
	level._effect[ "cloud_bank_far" ]				= loadfx( "weather/jeepride_cloud_bank_far" );
	level._effect[ "mist_hunted_fav" ]					= loadfx( "weather/mist_hunted_fav" );
	
	//rain effects
	level._effect[ "rain_mp_storm" ]				= loadfx( "weather/rain_mp_storm" );
    level._effect[ "rain_noise_splashes_fade" ]			= loadfx( "weather/rain_noise_splashes_fade" );
	level._effect[ "rain_splash_lite_64x64" ]		= loadfx( "weather/rain_splash_lite_64x64" );
	level._effect[ "waterfall_drainage_mp" ]		= loadfx( "water/waterfall_drainage_mp" );
    level._effect[ "waterfall_drainage_splash_mp" ]	= loadfx( "water/waterfall_drainage_splash_mp" );
	level._effect[ "lightning_mp_storm" ]		    = loadfx( "weather/lightning_mp_storm" );
	level._effect[ "rain_heavy_mist" ]	            = loadfx ("weather/rain_heavy_mist_ex");
	level._effect[ "drips_fast" ]							= loadfx( "misc/drips_fast" );	
	
	if ( !getdvarint( "clientSideEffects" ) )
		maps\createfx\mp_shipment_long_fx::main();
}
