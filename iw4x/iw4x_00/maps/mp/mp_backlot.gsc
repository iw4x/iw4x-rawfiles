main()
{
	maps\mp\mp_backlot_fx::main();
	maps\createart\mp_backlot_art::main();
	maps\mp\_load::main();	
	
	maps\mp\_compass::setupMiniMap("compass_map_mp_backlot");

	//setExpFog(500, 2200, 0.81, 0.75, 0.63, 1.0, 0);
	//VisionSetNaked( "mp_backlot" );
	ambientPlay("ambient_backlot_ext");

	game["attackers"] = "axis";
	game["defenders"] = "allies";

	setdvar( "r_specularcolorscale", "1" );

	setdvar("r_glowbloomintensity0",".25");
	setdvar("r_glowbloomintensity1",".25");
	setdvar("r_glowskybleedintensity0",".3");
	setdvar("compassmaxrange","1800");


}
