main()
{
	//maps\mp\mp_killhouse_fx::main();
	maps\createart\mp_killhouse_art::main();
	//maps\createfx\mp_killhouse_fx::main();
	
	maps\mp\_load::main();
	maps\mp\_compass::setupMiniMap( "compass_map_mp_killhouse" );

	ambientPlay("ambient_scoutsniper_ext0");

	game[ "attackers" ] = "allies";
	game[ "defenders" ] = "axis";

	setdvar("compassmaxrange","2200");
	setdvar("r_specularcolorscale", "1");
	setdvar("sm_sunSampleSizeNear", "0.35"); //This fixes the shadow errors
	
}

