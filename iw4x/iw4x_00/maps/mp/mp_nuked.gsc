#include common_scripts\utility;
 
main()
{
	maps\mp\_load::main();
	maps\mp\mp_nuked_fx::main();

	//setexpfog(874.792, 2740, 0.776471, 0.588235, 0.47451, 0.5, 0, 0.803922, 0.717647, 0.6, (-0.432962, -0.395847, 0.809845), 0, 61.0525, 5.68252);
	setexpfog(1074.792, 3540, 0.934471, 0.838235, 0.694513, 0.5, 0, 0.803922, 0.717647, 0.6, (-0.432962, -0.395847, 0.809845), 0, 61.0525, 5.68252);
	ambientPlay( "ambient_mp_desert" );

	game[ "attackers" ] = "allies";
	game[ "defenders" ] = "axis";
 
	maps\mp\_compass::setupMiniMap( "compass_map_mp_nuked" );
	//setdvar( "compassmaxrange", "4000" );
	
	nuked_doomsday_clock_init();
	level thread nuked_population_sign_think();
 
	array_thread( getentarray( "compassTriggers", "targetname" ), ::compass_triggers_think );
}
 
self_delete()
{
	self delete();
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
 
createSpawnpoint( classname, origin, yaw )
{
	spawnpoint = spawn( "script_origin", origin );
	spawnpoint.angles = (0,yaw,0);
       
	if ( !isdefined( level.extraspawnpoints ) )
		level.extraspawnpoints = [];
	if ( !isdefined( level.extraspawnpoints[classname] ) )
		level.extraspawnpoints[classname] = [];
	level.extraspawnpoints[classname][ level.extraspawnpoints[classname].size ] = spawnpoint;
}

nuked_population_sign_think()
{
        tens_model = GetEnt( "counter_tens", "targetname" );
        ones_model = GetEnt( "counter_ones", "targetname" );
 
        step = ( 360 / 10 ); // 10 digits (0-9) on the dial
 
        // put the dials at 0
        ones = 0;
        tens = 0;
 
        tens_model RotateRoll( step, 0.05 );
        ones_model RotateRoll( step, 0.05 );
 
        for ( ;; )
        {
            wait( 1 );
 
			for ( ;; )
			{
				num_players = level.players.size;
				dial = ones + ( tens * 10 );
 
			if ( num_players < dial )
			{
					ones--;
					time = 0.5;
                if ( ones < 0 )
                {
					ones = 9;
					tens_model RotateRoll( 0 - step, time );
					tens--;
                }
 
				ones_model RotateRoll( 0 - step, time );
				ones_model waittill( "rotatedone" );
			}
			else if ( num_players > dial )
			{
				ones++;
				time = 0.5;
 
                if ( ones > 9 )
                {
					ones = 0;
					tens_model RotateRoll( step, time );
					tens++;
				}
 
				ones_model RotateRoll( step, time );
				ones_model waittill( "rotatedone" );
			}
			else
			{
				break;
			}
		}
	}
}
       
nuked_doomsday_clock_init()
{
	min_hand_model = GetEnt( "clock_min_hand", "targetname" );
	sec_hand_model = GetEnt( "clock_sec_hand", "targetname" );
	start_angle = 318;
	min_hand_model RotatePitch( start_angle, 0.05 );
	min_hand_model waittill( "rotatedone" );
   
	if ( level.timelimit > 0 )
	{
		min_hand_model RotatePitch( 360 - start_angle, level.timelimit * 60 );
		sec_hand_model RotatePitch( 360 * level.timelimit, level.timelimit * 60 );
	}
	else
	{
		sec_hand_model thread nuked_doomsday_clock_seconds_think();
	}
}
 
nuked_doomsday_clock_seconds_think()
{
	for ( ;; )
	{
		self RotatePitch( 360, 60 );
		self waittill( "rotatedone" );
	}
}