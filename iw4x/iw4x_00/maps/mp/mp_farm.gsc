main()
{
	maps\mp\mp_farm_fx::main();
	maps\createart\mp_farm_art::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_farm");

	//setExpFog(300, 1400, 0.5, 0.5, 0.5, 1.0, 0);
	ambientPlay("ambient_farm");
	//VisionSetNaked( "mp_farm" );
	
	game["attackers"] = "allies";
	game["defenders"] = "axis";

	setdvar("r_specularcolorscale", 1.279588); // Set by iw3xport

	setdvar("compassmaxrange","2000");
}


