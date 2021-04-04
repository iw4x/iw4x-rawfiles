/******************************************************/
/*         Map by momo5502, xetal & Dasfonia          */
/******************************************************/


#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
 
main()
{
	SetDvarIfUninitialized( "hunted_weather", 2 ); // 0 = Fog | 1 = Rain | 2 = Dynamic weather
	
	level.hunted_weather = GetDvarInt( "hunted_weather" );
		
	if( level.hunted_weather < 0 || level.hunted_weather > 2 )
		level.hunted_weather = ( randomint( 65534 ) % 3 );

    maps\mp\_load::main();
	maps\createart\co_hunted_art::main();
	maps\mp\co_hunted_fx::main();
	maps\mp\hunted_precache::main();
	
    game[ "attackers" ] = "allies";
    game[ "defenders" ] = "axis";
	
    maps\mp\_compass::setupMiniMap( "compass_map_hunted" );		
    setdvar( "compassmaxrange", "3000" );
	
	if( level.hunted_weather == 0 )
		ambientPlay( "ambient_mp_rural", 0 );
		
	else if( level.hunted_weather == 1 )
		ambientPlay( "ambient_mp_rain", 0 );
	
	level notify("village_start_weather");
}