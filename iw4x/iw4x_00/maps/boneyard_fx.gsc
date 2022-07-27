#include common_scripts\utility;

main()
{
	level._effect[ "large_explosion" ]				= loadfx( "explosions/large_vehicle_explosion" );
	level._effect[ "wood_burst" ]					= loadfx( "explosions/wood_explosion_1" );
	level._effect[ "wood_burst2" ]					= loadfx( "explosions/grenadeExp_wood" );
	level._effect[ "wing_drop_dust" ]				= loadfx( "dust/wing_drop_dust" );
	level._effect[ "dust_spiral01" ]				= loadfx( "dust/dust_spiral01" );
	level._effect[ "angel_flare_geotrail" ]			= loadfx( "smoke/angel_flare_geotrail" );
	level._effect[ "angel_flare_swirl" ]			= loadfx( "smoke/angel_flare_swirl_runner" );
	level._effect[ "scrape_sparks" ]				= loadfx( "misc/vehicle_scrape_sparks_c130" );
	level._effect[ "blood" ]					 	= loadfx( "impacts/sniper_escape_blood" );
	level._effect[ "blood_dashboard_splatter" ]		= loadfx( "impacts/blood_dashboard_splatter_boneyard" );

	//Ambient FX
	level._effect[ "dust_wind_fast" ]					= loadfx( "dust/dust_wind_fast" );
	level._effect[ "dust_wind_fast_light" ] 			= loadfx( "dust/dust_wind_fast_light" );
	level._effect[ "trash_spiral_runner" ]				= loadfx( "misc/trash_spiral_runner" );
	level._effect[ "thin_black_smoke_L" ]			 	= loadfx( "smoke/thin_black_smoke_L_nofog" );
	level._effect[ "hallway_smoke_light" ]				= loadfx( "smoke/hallway_smoke_light" );
	level._effect[ "insects_carcass_runner" ] 			= loadfx( "misc/insects_carcass_runner" );

	maps\createfx\boneyard_fx::main();
}