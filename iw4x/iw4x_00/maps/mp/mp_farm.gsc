main()
{
	maps\mp\mp_farm_fx::main();
	maps\createart\mp_farm_art::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap( "compass_map_mp_farm" );

	ambientPlay( "ambient_farm" );

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	setdvar( "r_specularcolorscale", 1.279588 ); // Set by iw3xport

	setdvar("compassmaxrange","2000");
}


