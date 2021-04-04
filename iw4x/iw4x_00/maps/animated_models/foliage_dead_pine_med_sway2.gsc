#include common_scripts\utility;

main()
{
	if( !isdefined ( level.anim_prop_models ) )
		level.anim_prop_models = [];
		
	// Uses .animation
	model = "foliage_dead_pine_med_animated_sway2";
	level.anim_prop_models[ model ][ "sway2" ] = "foliage_dead_pine_med_mp_sway2";
}

// SP not currently supported because this requires updating "animated_props" animtree