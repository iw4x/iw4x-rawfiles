main()
{
	maps\mp\mp_crash_tropical_fx::main();
	maps\createfx\mp_crash_tropical_fx::main();
	maps\mp\mp_crash_tropical_precache::main();
	maps\createart\mp_crash_tropical_art::main();
	
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap( "compass_map_mp_crash_dlc" );
	setdvar( "compassmaxrange", "1600" );
	
	AmbientPlay( "ambient_mp_favela" );

	game["attackers"] = "axis";
	game["defenders"] = "allies";

	setdvar( "r_specularcolorscale", "2.117" );
	setdvar( "r_diffusecolorscale", "1.35" );
	
	setdvar( "r_lightGridEnableTweaks", 1 );
	setdvar( "r_lightGridIntensity", 1.10 );
	setdvar( "r_lightGridContrast", 1 );
}
