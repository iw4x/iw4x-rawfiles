main()
{
	maps\mp\_load::main();
	maps\mp\mp_cargoship_fx::main();
	
	maps\createart\mp_cargoship_art::main();
	maps\createfx\mp_cargoship_fx::main();
	
	ambientPlay( "ambient_mp_rain" );

    game["attackers"] = "axis";
    game["defenders"] = "allies";
 
    maps\mp\_compass::setupMiniMap( "compass_map_mp_cargoship" );

	setdvar( "r_specularcolorscale", "1.5" );
	
	level.airstrikeHeightScale = 2;

	setdvar("compassmaxrange","2100");

}