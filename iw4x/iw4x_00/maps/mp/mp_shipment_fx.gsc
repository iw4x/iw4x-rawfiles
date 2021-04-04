main()
{

	level._effect[ "bird_seagull_flock_large" ]		= loadfx( "misc/bird_seagull_flock_large" );
	level._effect[ "cloud_bank_far" ]				= loadfx( "weather/jeepride_cloud_bank_far" );
	level._effect[ "mist_hunted_fav" ]					= loadfx( "weather/mist_hunted_fav" );
	
	if ( !getdvarint( "clientSideEffects" ) )
		maps\createfx\mp_shipment_fx::main();
}
