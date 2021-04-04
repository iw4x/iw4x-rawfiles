main()
{

	maps\mp\_load::main();
	
	maps\mp\mp_estate_tropical_fx::main();
	maps\mp\mp_estate_tropical_precache::main();
	maps\mp\_compass::setupMiniMap( "compass_map_mp_estate_tropical" );
	
	maps\createart\mp_estate_tropical_art::main();


	
	ambientPlay( "ambient_mp_estate" );

	game[ "attackers" ] = "allies";
	game[ "defenders" ] = "axis";

	setdvar( "r_specularcolorscale", "3" );
	setdvar( "r_diffusecolorscale", "1.5" );
	setdvar( "sm_sunsamplesizenear", "0.38" );
	
	setdvar( "compassmaxrange", "3500" );
	
	setdvar( "r_lightGridEnableTweaks", 1 );
	setdvar( "r_lightGridIntensity", 1.3 );
	setdvar( "r_lightGridContrast", 0 );

}