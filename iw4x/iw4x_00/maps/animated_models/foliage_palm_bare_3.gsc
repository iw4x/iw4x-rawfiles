#include common_scripts\utility;

#using_animtree( "animated_props" );
main()
{
	if( !isdefined ( level.anim_prop_models ) )
		level.anim_prop_models = [];
	
	model = "foliage_palm_bare_3_animated";

	level.anim_prop_models[ model ][ "sway" ] = "foliage_palm_bare_3_sway";
}