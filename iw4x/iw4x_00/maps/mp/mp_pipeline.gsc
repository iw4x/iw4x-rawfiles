main()
{
	maps\mp\mp_pipeline_fx::main();
	maps\createart\mp_pipeline_art::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap("compass_map_mp_pipeline");

	//setExpFog(700, 1500, 0.5, 0.5, 0.5, 1.0, 0);
	ambientPlay("ambient_pipeline");
	//VisionSetNaked( "mp_pipeline" );
	
	game["attackers"] = "allies";
	game["defenders"] = "axis";

	setdvar( "r_specularcolorscale", "1" );

	setdvar("r_glowbloomintensity0",".1");
	setdvar("r_glowbloomintensity1",".1");
	setdvar("r_glowskybleedintensity0",".1");
	setdvar("compassmaxrange","2200");


}
