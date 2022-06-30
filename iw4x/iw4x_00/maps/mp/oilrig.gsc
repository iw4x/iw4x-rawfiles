#include common_scripts\utility;
#include maps\mp\_utility;

main()
{
	maps\mp\_load::main();

	game[ "attackers" ] = "allies";
	game[ "defenders" ] = "axis";

	maps\mp\_compass::setupMiniMap( "compass_map_oilrig_lvl_1" );
	maps\mp\_compass::setupMiniMap( "compass_map_oilrig_lvl_2" );
	maps\mp\_compass::setupMiniMap( "compass_map_oilrig_lvl_3" );

	setDvar( "compassMaxRange", 4000.0 );

	thread level_think();

	thread custom_kill_trigger();

	thread killTrigger( ( 1020, 175, -80 ), 110, 250 );
}

level_think()
{
/*
	-----------------------
	MOVING DERRICK DRILL THING
	-------------------------
*/

	eDerrick_thing = getent( "derrick_thing", "targetname" );
	eDerrick_thing.origin = eDerrick_thing.origin + ( 0, 0, -2816 );
	assert( isDefined( eDerrick_thing ) );
	time = 2;
	speed = 300;

	while ( true )
	{
		eDerrick_thing rotatevelocity( ( 0, speed, 0 ), time );
		wait( time );
	}

}

custom_kill_trigger()
{
	while ( true )
	{
		wait 0.1;

		foreach ( player in level.players )
		{
			if ( !isAlive( player ) )
			{
				continue;
			}

			if ( player.origin[2] < -350.0 ) // -2948.0 <- water level
			{
				player suicide();
			}
		}
	}
}
