main()
{
	maps\createart\mp_bloc_sh_art::main();
	maps\mp\mp_bloc_sh_precache::main();
	maps\createfx\mp_bloc_sh_fx::main();
	maps\mp\mp_bloc_sh_fx::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap( "compass_map_mp_bloc_sh" );

	setdvar( "compassmaxrange", "2000" );
	
    ambientPlay( "ambient_trainer_ext2" );

	game["attackers"] = "axis";
	game["defenders"] = "allies";

	// raise up planes to avoid them flying through buildings
	level.airstrikeHeightScale = 1.8;
	
	setdvar( "r_specularcolorscale", "2.2" );
	setdvar( "r_diffusecolorscale", "1.2" );
}