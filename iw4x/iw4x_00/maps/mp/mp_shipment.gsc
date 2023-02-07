main()
{
	maps\mp\mp_shipment_fx::main();
	maps\createart\mp_shipment_art::main();
	maps\createfx\mp_shipment_fx::main();
	maps\mp\_load::main();
	
	maps\mp\_compass::setupMiniMap( "compass_map_mp_shipment" );
	
	// TODO: get proper ambient
	ambientPlay("ambient_trainer_ext2");

	game["attackers"] = "axis";
	game["defenders"] = "allies";

	setdvar( "r_specularcolorscale", "1.7" );
	setdvar( "r_diffusecolorscale", "1.3" );

	setdvar( "compassmaxrange", "1400" );
}
