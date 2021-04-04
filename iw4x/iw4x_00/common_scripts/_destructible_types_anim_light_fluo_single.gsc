#using_animtree( "destructibles" );
main()
{
	level._destructible_preanims[ "light_fluorescent_single_swing" ] 		= %light_fluorescent_single_swing;
	level._destructible_preanims[ "light_fluorescent_single_null" ] 		= %light_fluorescent_single_null;
	level._destructible_preanims[ "light_fluorescent_single_swing_02" ] = %light_fluorescent_single_swing_02;
	level._destructible_preanims[ "light_fluorescent_single_swing_03" ] = %light_fluorescent_single_swing_03;

	level._effect[ "spotlight_fx" ]						 = loadfx( "misc/fluorescent_spotlight" );

}