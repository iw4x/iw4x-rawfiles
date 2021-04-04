#include common_scripts\utility;

#using_animtree( "animated_props" );
main()
{
	if( !isdefined ( level.anim_prop_models ) )
		level.anim_prop_models = [];

	model = "foliage_tropical_estate_animated";

	level.anim_prop_models[ model ][ "sway" ] = "foliage_tropical_estate_sway";
}
