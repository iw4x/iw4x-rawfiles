main()
{
	maps\mp\mp_fav_tropical_precache::main();

	maps\createart\mp_fav_tropical_art::main();
	maps\mp\mp_fav_tropical_fx::main();

	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap( "compass_map_mp_fav_tropical" );

	// raise up planes to avoid them flying through buildings
	level.airstrikeHeightScale = 1.5;

	ambientPlay( "ambient_mp_favela" );

	switch ( level.gameType )
	{	
		case "oneflag":
			game[ "attackers" ] = "allies";
			game[ "defenders" ] = "axis";
			break;
		default:
			game[ "attackers" ] = "axis";
			game[ "defenders" ] = "allies";
			break;
	}

	setdvar( "r_specularcolorscale", "2.8" );
	setdvar( "compassmaxrange", "1500" );
}
