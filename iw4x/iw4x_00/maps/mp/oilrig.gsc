#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

main()
{

	maps\mp\_load::main();
	

	game[ "attackers" ] = "allies";
	game[ "defenders" ] = "axis";

	maps\mp\_compass::setupMiniMap( "compass_map_oilrig_lvl_3" );
	setdvar( "compassmaxrange", "4000" );

	array_thread( getentarray( "breach_solid", "targetname" ), ::self_delete );

	array_thread( getentarray( "compassTriggers", "targetname" ), ::compass_triggers_think );
	
	
	CreateRamps((1676, 1330, -70), (2489, 1844, 900));
	CreateRamps((-965, 256, -200), (-854, -77, 54));
	thread custom_killtrigger();
	thread level_think();
	thread level_think2();
}

self_delete()
{
	self delete();
}


custom_killtrigger()
{
	while (true)
	{
		wait 0.1;

		foreach (player in level.players)
		{
			if (!isDefined(player) || !isPlayer(player))
			{
				continue;
			}

			if (player.origin[2] < -350.0)
			{
				player suicide();
			}
		}
	}
}


compass_triggers_think()
{
	assertex( isdefined( self.script_noteworthy ), "compassTrigger at " + self.origin + " needs to have a script_noteworthy with the name of the minimap to use" );
	while( true )
	{
		wait( 1 );
		self waittill( "trigger" );
		maps\mp\_compass::setupMiniMap( self.script_noteworthy );
	}
}

CreateRamps(top, bottom)
{
	D = Distance(top, bottom);
	blocks = roundUp(D/30);
	CX = top[0] - bottom[0];
	CY = top[1] - bottom[1];
	CZ = top[2] - bottom[2];
	XA = CX/blocks;
	YA = CY/blocks;
	ZA = CZ/blocks;
	CXY = Distance((top[0], top[1], 0), (bottom[0], bottom[1], 0));
	Temp = VectorToAngles(top - bottom);
	BA = (Temp[2], Temp[1] + 90, Temp[0]);
	for(b = 0; b < blocks; b++){
		block = spawn("script_model", (bottom + ((XA, YA, ZA) * b)));
		//block setModel("com_plasticcase_friendly");
		block.angles = BA;
		block Solid();
		block CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
		wait 0.01;
	}
	block = spawn("script_model", (bottom + ((XA, YA, ZA) * blocks) - (0, 0, 5)));
	//block setModel("com_plasticcase_friendly");
	block.angles = (BA[0], BA[1], 0);
	block Solid();
	block CloneBrushmodelToScriptmodel( level.airDropCrateCollision );
	wait 0.01;
}


roundUp( floatVal )
{
	if ( int( floatVal ) != floatVal )
		return int( floatVal+1 );
	else
		return int( floatVal );
}


level_think()
{

	/*-----------------------
	MOVING DERRICK DRILL THING
	-------------------------*/
	eDerrick_thing = getent( "derrick_thing", "targetname" );
	eDerrick_thing.origin = eDerrick_thing.origin + ( 0, 0, -2816 );
	assert( isdefined( eDerrick_thing ) );
	time = 2;
	speed = 300;
	while ( true )
	{
		eDerrick_thing rotatevelocity( ( 0, speed, 0 ), time );
		wait( time );
	}

}
level_think2()
{
	model1 = getent( "fx_spotlight_beam", "targetname" );
	model2 = getent( "com_blackhawk_spotlight_on_mg_setup", "targetname" );
	assert( isdefined( model1 ) );
	assert( isdefined( model2 ) );
	
	time = 10;
	while ( true )
	{
		model1 rotateto(model1.angles+(0,45,0),time);
		model2 rotateto(model2.angles+(0,45,0),time);
		wait( time );
		model1 rotateto(model1.angles+(0,-45,0),time);
		model2 rotateto(model2.angles+(0,-45,0),time);
		wait( time );
		model1 rotateto(model1.angles+(10,45,0),time);
		model2 rotateto(model2.angles+(10,45,0),time);
		wait( time );
		model1 rotateto(model1.angles+(-10,-45,0),time);
		model2 rotateto(model2.angles+(-10,-45,0),time);
		wait( time );
	}

}
