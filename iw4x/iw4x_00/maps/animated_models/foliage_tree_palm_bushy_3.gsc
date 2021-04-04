#include common_scripts\utility;

#using_animtree( "animated_props" );
main()
{
	if( !isdefined ( level.anim_prop_models ) )
		level.anim_prop_models = [];

	model = "foliage_tree_palm_bushy_3";

	level.anim_prop_models[ model ] = "palmtree_tall3_sway_tropical";
}