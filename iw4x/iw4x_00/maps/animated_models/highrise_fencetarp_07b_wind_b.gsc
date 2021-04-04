#include common_scripts\utility;

main()
{
	if( !isdefined ( level.anim_prop_models ) )
		level.anim_prop_models = [];
		
	// Uses .animation
	model = "highrise_fencetarp_07b_wind_b";
	level.anim_prop_models[ model ][ "wind_b" ] = "mp_storm_fencetarp_07_windB";
}

// SP not currently supported because this requires updating "animated_props" animtree