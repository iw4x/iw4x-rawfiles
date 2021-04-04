#include common_scripts\utility;

#using_animtree( "animated_props" );
main()
{
	if( !isdefined ( level.anim_prop_models ) )
		level.anim_prop_models = [];
			
	model = "codo_brazil_nut_tree";
	
	level.anim_prop_models[ model ][ "strong" ] = "palmtree_med2_sway";
}
