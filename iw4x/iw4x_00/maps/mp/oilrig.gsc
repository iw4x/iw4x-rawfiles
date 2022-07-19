#include common_scripts\utility;
#include maps\mp\_utility;

main()
{
	maps\mp\_load::main();

	game[ "attackers" ] = "allies";
	game[ "defenders" ] = "axis";

	maps\mp\_compass::setupMiniMap( "compass_map_oilrig_lvl_3" );

	setDvar( "compassMaxRange", 4000.0 );

	setExpFog( 3674.792, 4740, 0.076471, 0.118235, 0.07451, 0.8, 0 );
	visionSetNaked( "oilrig", 0 );

	array_thread( getentarray( "compassTriggers", "targetname" ), ::compass_triggers_think );

	thread level_think();

	thread custom_kill_trigger();

	thread killTrigger( ( 1020, 175, -80 ), 110, 250 );
}

compass_triggers_think()
{
	assertEx( isDefined( self.script_noteworthy ), "compassTrigger at " + self.origin + " needs to have a script_noteworthy with the name of the minimap to use" );

	while ( true )
	{
		self waittill( "trigger" );
		maps\mp\_compass::setupMiniMap( self.script_noteworthy );
	}
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
