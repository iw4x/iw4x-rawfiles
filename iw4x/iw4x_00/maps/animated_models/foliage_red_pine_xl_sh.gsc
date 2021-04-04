#include common_scripts\utility;

#using_animtree( "animated_props" );
main()
{
	if( !isdefined ( level.anim_prop_models ) )
		level.anim_prop_models = [];
		
	// Would use isSP() but this runs before we can
	mapname = tolower( getdvar( "mapname" ) );
	SP = true;
	if ( string_starts_with( mapname, "mp_" ) )
		SP = false;
		
	model = "foliage_red_pine_xl_sh";
	if ( SP )
	{
		level.anim_prop_models[ model ][ "sway" ] = %foliage_tree_oak_1_sway;
	}
	else
		level.anim_prop_models[ model ][ "sway" ] = "foliage_tree_oak_1_sway";
}
