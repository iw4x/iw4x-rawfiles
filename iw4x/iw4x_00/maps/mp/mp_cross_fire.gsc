main()
{
	maps\mp\_load::main();
	
	maps\mp\mp_cross_fire_fx::main();
	maps\mp\mp_cross_fire_precache::main();
	
	maps\createfx\mp_cross_fire_fx::main();
	maps\createart\mp_cross_fire_art::main();
	
	maps\mp\_compass::setupMiniMap( "compass_map_mp_cross_fire" );
	
	ambientPlay("ambient_trainer_ext2");
	
	game[ "attackers" ] = "axis";
	game[ "defenders" ] = "allies";
	
	setdvar( "r_specularcolorscale", "4.5" );

	setdvar( "compassmaxrange", "2100" );
}