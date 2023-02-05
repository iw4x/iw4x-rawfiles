#include common_scripts\utility;

main()
{
	maps\mp\_load::main();

	game[ "attackers" ] = "allies";
	game[ "defenders" ] = "axis";

	maps\mp\_compass::setupMiniMap( "compass_map_hunted" );
	setdvar( "compassmaxrange", "4000" );

	array_thread( getentarray( "compassTriggers", "targetname" ), ::compass_triggers_think );

}

self_delete()
{
	self delete();
}

compass_triggers_think()
{
	assertex( isdefined( self.script_noteworthy ), "compassTrigger at " + self.origin + " needs to have a script_noteworthy with the name of the minimap to use" );
	while ( true )
	{
		wait( 1 );
		self waittill( "trigger" );
		maps\mp\_compass::setupMiniMap( self.script_noteworthy );
	}
}

createSpawnpoint( classname, origin, yaw )
{
	spawnpoint = spawn( "script_origin", origin );
	spawnpoint.angles = ( 0, yaw, 0 );

	if ( !isdefined( level.extraspawnpoints ) )
		level.extraspawnpoints = [];

	if ( !isdefined( level.extraspawnpoints[classname] ) )
		level.extraspawnpoints[classname] = [];

	level.extraspawnpoints[classname][ level.extraspawnpoints[classname].size ] = spawnpoint;
}
