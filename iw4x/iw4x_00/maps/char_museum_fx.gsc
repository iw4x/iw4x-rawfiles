#include common_scripts\utility;

main()
{
	precacheFX();
	maps\createfx\char_museum_fx::main();
}
precacheFX()
{
	level._effect[ "tank_bubbles_character_room" ]		= loadfx( "water/tank_bubbles_character_room" );
	level._effect[ "scuba_bubbles_friendly" ]			= loadfx( "water/scuba_bubbles_breath" );
	level._effect[ "snow_blower" ]						= loadfx( "snow/snow_blower" );

   	level._effect[ "c4_blink" ]         				= loadfx( "misc/light_c4_blink" );	
}