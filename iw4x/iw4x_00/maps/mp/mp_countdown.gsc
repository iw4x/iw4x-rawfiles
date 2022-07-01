main()
{
	maps\mp\mp_countdown_fx::main();
	maps\createart\mp_countdown_art::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_countdown");

	ambientPlay("ambient_crossfire");

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	setdvar( "r_specularcolorscale", "1.5" );
	
	setdvar("compassmaxrange","2000");
}
