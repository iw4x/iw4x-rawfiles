#include common_scripts\utility;
#include maps\mp\_utility;

main()
{
	//level._effect["firelp_vhc_lrg_pm_farview"]		= loadfx ("fire/firelp_vhc_lrg_pm_farview");
	//level._effect["lighthaze"]						= loadfx ("misc/lighthaze");
	level._effect[ "firelp_med_pm" ]					 = loadfx( "fire/firelp_med_pm" );
	level._effect[ "firelp_small_pm" ]				 = loadfx( "fire/firelp_small_pm" );
	level._effect[ "firelp_small_pm_a" ]				 = loadfx( "fire/firelp_small_pm_a" );
	level._effect[ "fog_hunted" ]						 = loadfx( "weather/fog_hunted" );
	level._effect[ "fog_hunted_a" ]					 = loadfx( "weather/fog_hunted_a" );
	level._effect[ "bird_pm" ]						 = loadfx( "misc/bird_pm" );
	level._effect[ "bird_takeoff_pm" ]				 = loadfx( "misc/bird_takeoff_pm" );
	level._effect[ "leaves" ]							 = loadfx( "misc/leaves" );
	level._effect[ "leaves_runner" ]					 = loadfx( "misc/leaves_runner" );
	level._effect[ "leaves_runner_1" ]				 = loadfx( "misc/leaves_runner_1" );
	level._effect[ "leaves_lp" ]						 = loadfx( "misc/leaves_lp" );
	level._effect[ "leaves_gl" ]						 = loadfx( "misc/leaves_gl" );
	level._effect[ "leaves_gl_a" ]					 = loadfx( "misc/leaves_gl_a" );
	level._effect[ "leaves_gl_b" ]					 = loadfx( "misc/leaves_gl_b" );
	level._effect[ "hunted_vl" ]						 = loadfx( "misc/hunted_vl" );
	level._effect[ "hunted_vl_sm" ]					 = loadfx( "misc/hunted_vl_sm" );
	level._effect[ "hunted_vl_od_lrg" ]				 = loadfx( "misc/hunted_vl_od_lrg" );
	level._effect[ "hunted_vl_od_lrg_a" ]				 = loadfx( "misc/hunted_vl_od_lrg_a" );
	level._effect[ "hunted_vl_od_sml" ]				 = loadfx( "misc/hunted_vl_od_sml" );
	level._effect[ "hunted_vl_od_sml_a" ]				 = loadfx( "misc/hunted_vl_od_sml_a" );
	level._effect[ "hunted_vl_od_dtl_a" ]				 = loadfx( "misc/hunted_vl_od_dtl_a" );
	level._effect[ "hunted_vl_od_dtl_b" ]				 = loadfx( "misc/hunted_vl_od_dtl_b" );
	level._effect[ "mist_hunted_add" ]				 = loadfx( "weather/mist_hunted_add" );
	level._effect[ "insects_light_hunted" ]			 = loadfx( "misc/insects_light_hunted" );
	level._effect[ "insects_light_hunted_a" ]			 = loadfx( "misc/insects_light_hunted_a" );
	level._effect[ "hunted_vl_white_eql" ]			 = loadfx( "misc/hunted_vl_white_eql" );
//	level._effect["hunted_vl_white_eql_flare"]		= loadfx ("misc/hunted_vl_white_eql_flare");
	level._effect[ "hunted_vl_white_eql_a" ]			 = loadfx( "misc/hunted_vl_white_eql_a" );
//	level._effect["grenadeexp_fuel"]				= loadfx ("explosions/grenadeexp_fuel");
//	level._effect["hunted_fel"]						= loadfx ("misc/hunted_fel");	
	level._effect[ "greenhouse_fog_spot_lit" ]		 = loadfx( "smoke/greenhouse_fog_spot_lit" );
	level._effect[ "waterfall_hunted" ]				 = loadfx( "misc/waterfall_hunted" );
	level._effect[ "stream_hunted" ]					 = loadfx( "misc/stream_hunted" );

	//footstep fx
	
	setFootstepEffect( "asphalt", 		loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "brick", 		loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "carpet", 		loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "cloth", 		loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "concrete", 		loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "dirt", 			loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "foliage", 		loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "grass", 		loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "metal", 		loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "mud", 			loadfx( "impacts/footstep_mud_dark" ) );
	setFootstepEffect( "rock", 			loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "sand", 			loadfx( "impacts/footstep_dust_dark" ) );
	setFootstepEffect( "water", 		loadfx( "impacts/footstep_water_dark" ) );
	setFootstepEffect( "wood", 			loadfx( "impacts/footstep_dust_dark" ) );

	//Rain Fx :D
	level._effect[ "rain_mp_storm" ]						= loadfx( "weather/rain_mp_storm" );
	level._effect[ "rain_noise_splashes" ]					= loadfx( "weather/rain_noise_splashes" );
	level._effect[ "rain_splash_lite_128x128" ]				= loadfx( "weather/rain_splash_lite_128x128" );
	level._effect[ "drips_fast" ]							= loadfx( "misc/drips_fast" );
	level._effect[ "lightning" ]							= loadfx( "weather/lightning_mp_storm" );
	level._effect[ "waterfall_drainage_mp" ] 				= loadfx( "water/waterfall_drainage_mp" );
	level._effect[ "waterfall_drainage_splash_mp" ] 		= loadfx( "water/waterfall_drainage_splash_mp" );
	
	maps\createfx\co_hunted_fx::main();
}

setFootstepEffect( name, fx )
{
	assertEx( isdefined( name ), "Need to define the footstep surface type." );
	assertEx( isdefined( fx ), "Need to define the mud footstep effect." );
	if( !isdefined( anim.optionalStepEffects ) )
		anim.optionalStepEffects = [];
	anim.optionalStepEffects[ anim.optionalStepEffects.size ] = name;
	level._effect[ "step_" + name ] = fx;
	anim.optionalStepEffectFunction = playFootStepEffect();
}

playFootStepEffect(foot, groundType)
{
	for (i=0;i<anim.optionalStepEffects.size;i++)
	{
		if (groundType != anim.optionalStepEffects[i])
			continue;
		org = self gettagorigin(foot);
		playfx(level._effect["step_" + anim.optionalStepEffects[i]], org, org + (0,0,100));
		return;
	}
}