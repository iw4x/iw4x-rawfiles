main()
{

	level._effect["antiair_runner"]						= loadfx ("misc/antiair_runner_night");	
	level._effect["fog_bog_a"]							= loadfx ("weather/fog_bog_a");
	level._effect["firelp_barrel_pm"]					= loadfx ("fire/firelp_barrel_pm");
	level._effect["mp_bog_horizon_flash"]				= loadfx ("ambient_runners/mp_bog_horizon_flash");
	level._effect["battlefield_smokebank_S"]			= loadfx ("smoke/battlefield_smokebank_S");

	
/#
	if ( getdvar( "clientSideEffects" ) != "1" )
		maps\createfx\mp_bog_sh_fx::main();
#/

}