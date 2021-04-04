#include common_scripts\utility;

#using_animtree( "animated_props" );
main()
{
	if( !isdefined ( level.anim_prop_models ) )
		level.anim_prop_models = [];
		
	model = "foliage_red_pine_xxl_sh";
	
	level.anim_prop_models[ model ][ "sway" ] = "foliage_red_pine_xxl_sway";
}
