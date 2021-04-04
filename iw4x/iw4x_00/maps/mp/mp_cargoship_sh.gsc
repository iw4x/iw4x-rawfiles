main()
{
	maps\mp\_load::main();
	maps\mp\mp_cargoship_sh_fx::main();
	
	maps\createart\mp_cargoship_sh_art::main();
	maps\createfx\mp_cargoship_sh_fx::main();
	
	ambientPlay( "ambient_mp_snow" );
	
	game["attackers"] = "axis";
	game["defenders"] = "allies";
	
	maps\mp\_compass::setupMiniMap("compass_map_mp_cargoship_sh");
	
	level.airstrikeHeightScale = 2;
	
	setdvar("compassmaxrange","2100");
}