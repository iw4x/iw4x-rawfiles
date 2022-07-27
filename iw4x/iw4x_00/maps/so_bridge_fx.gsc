main()
{
	level._effect[ "firelp_med_pm" ]					 = loadfx( "fire/firelp_med_pm" );
	level._effect[ "firelp_small_pm" ]					 = loadfx( "fire/firelp_small_pm" );
	level._effect[ "firelp_small_pm_a" ]				 = loadfx( "fire/firelp_small_pm_a" );
	level._effect[ "thin_black_smoke_l" ]				 = loadfx( "smoke/thin_black_smoke_M" );
	level._effect[ "thin_black_smoke_m" ]				 = loadfx( "smoke/thin_black_smoke_L" );
	level._effect[ "jet_afterburner" ]				 	 = loadfx( "fire/jet_afterburner" );
	level._effect[ "dust_ceiling_fall" ]				 = loadfx( "dust/train_dust_linger" );
	
	level._effect[ "bridge_collapse_main" ]				 = loadfx( "dust/bridge_collapse_main" );
	level._effect[ "bridge_explode" ]					 = loadfx( "explosions/bridge_explode" );
	
	level._effect[ "falling_brick_runner_line_400" ]	= loadfx( "misc/falling_brick_runner_line_400_bridge" );
	level._effect[ "falling_brick_runner_line_200" ]	= loadfx( "misc/falling_brick_runner_line_200_bridge" );

	maps\createfx\so_bridge_fx::main();
}