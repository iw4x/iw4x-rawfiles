main()
{
	maps\mp\mp_strike_precache::main();
	maps\mp\mp_strike_fx::main();
	maps\createart\mp_strike_art::main();
	maps\mp\_load::main();
	
	maps\mp\_compass::setupMiniMap( "compass_map_mp_strike" );

	AmbientPlay( "ambient_mp_strike" );

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	SetDvar( "compassmaxrange", "1900" );
	SetDvar( "r_specularcolorscale", "1.86" );
	
	thread BreakGlass();
}

BreakGlass()
{
	level waittill( "connected" );
	glass = getGlassArray( "brokenglass01" );
	
	foreach( piece in glass )
	{
		destroyGlass( piece );
	}
}
