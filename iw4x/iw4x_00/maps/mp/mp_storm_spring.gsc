main()
{
	maps\mp\mp_storm_spring_precache::main();
	maps\mp\mp_storm_spring_fx::main();
	maps\createart\mp_storm_spring_art::main();
	maps\createfx\mp_storm_spring_fx::main();
	maps\createfx\mp_storm_spring_ex_fx::main();
	maps\mp\_load::main();

	maps\mp\_compass::setupMiniMap( "compass_map_mp_storm_spring" );

	ambientPlay( "ambient_mp_snow" );

	game[ "attackers" ] = "axis";
	game[ "defenders" ] = "allies";

	setdvar( "r_specularcolorscale", "2" );
	setdvar( "r_diffusecolorscale", "1.2" );
	setdvar( "compassmaxrange", "2300" );
}
