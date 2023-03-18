main()
{
	level._effect["hallway_smoke"]				        = loadfx ("smoke/hallway_smoke_dark");  
    level._effect[ "room_dust_200_mp_vacant" ]	        = loadfx( "dust/room_dust_200_blend_mp_vacant" );	
    level._effect[ "leaves_ground_gentlewind_dust" ]	= loadfx( "misc/leaves_ground_gentlewind_dust_sh" );
    level._effect[ "dust_wind_slow_yel_loop" ]	        = loadfx( "dust/dust_wind_slow_yel_loop_sh" );
    //level._effect[ "drips_player_hand" ]	            = loadfx( "water/drips_player_hand_sh" );
    level._effect["water_spill_fall"]				    = loadfx("maps/mp_maps/fx_mp_water_spill");

/#
	if ( getdvar( "clientSideEffects" ) != "1" )
		maps\createfx\mp_bloc_sh_fx::main();
#/		
}
