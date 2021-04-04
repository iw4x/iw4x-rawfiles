main()
{
	maps\mp\_load::main();

	maps\mp\mp_bog_sh_fx::main();
	maps\mp\mp_bog_sh_precache::main();
	
	maps\createfx\mp_bog_sh_fx::main();
	maps\createart\mp_bog_sh_art::main();
	
	
	maps\mp\_compass::setupMiniMap("compass_map_mp_bog_sh");

	ambientPlay("ambient_crossfire");

	game["attackers"] = "axis";
	game["defenders"] = "allies";
	
	setDvar("compassmaxrange","1800");
}