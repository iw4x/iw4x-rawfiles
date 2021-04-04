#include maps\mp\_utility;

main()
{

	maps\mp\mp_rust_long_precache::main();
	maps\createart\mp_rust_long_art::main();
	maps\createfx\mp_rust_long_fx::main();
	maps\mp\mp_rust_long_fx::main();

	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap( "compass_map_mp_rust_long" );

	setdvar( "compassmaxrange", "1400" );

	ambientPlay( "ambient_mp_duststorm" );

	game[ "attackers" ] = "allies";
	game[ "defenders" ] = "axis";
	
	setdvar( "r_diffusecolorscale", "1.4" );
}