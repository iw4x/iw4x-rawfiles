#include maps\mp\_utility;

// fx used by utility scripts
precache_util_fx()
{
}

/*
// fx prop anim effects
#using_animtree ( "fxanim_props" );
precache_fx_prop_anims()
{
	level.nuked_fxanims = [];
	level.nuked_fxanims["fxanim_mp_dustdevil_anim"]		= %fxanim_mp_dustdevil_anim;
	level.nuked_fx["fx_mp_sand_dust_devil"]				= loadfx( "maps/mp_maps/fx_mp_sand_dust_devil" );
}
*/

// Scripted effects
precache_scripted_fx()
{
}

// Ambient effects
precache_createfx_fx()
{

	level._effect["fx_insects_butterfly_flutter"]								= loadfx("bio/insects/fx_insects_butterfly_flutter");
	level._effect["fx_insects_butterfly_flutter_radial"]				= loadfx("bio/insects/fx_insects_butterfly_flutter_radial");	
	
	level._effect["fx_mp_nuked_glint"]													= loadfx("maps/mp_maps/fx_mp_nuked_glint");	
    level._effect["fx_glow_codolamp"]													= loadfx("env/light/fx_glow_codolamp");
	level._effect["fx_mp_nuked_glint_sm"]												= loadfx("maps/mp_maps/fx_mp_nuked_glint_sm");
	level._effect["fx_mp_nuked_glint_lg"]												= loadfx("maps/mp_maps/fx_mp_nuked_glint_lg");	
	level._effect["fx_mp_nuked_double_rainbow"]									= loadfx("maps/mp_maps/fx_mp_nuked_double_rainbow");	
	level._effect["fx_mp_nuked_double_rainbow_lg"]							= loadfx("maps/mp_maps/fx_mp_nuked_double_rainbow_lg");	
	
	//level._effect["fx_mp_sand_blowing_xlg_distant"]							= loadfx("maps/mp_maps/fx_mp_sand_blowing_xlg_distant");
	//level._effect["fx_mp_sand_windy_heavy_sm_slow"]							= loadfx("maps/mp_maps/fx_mp_sand_windy_heavy_sm_slow");	
	
//	level._effect["fx_cloud3d_cmls_lg1"]												= loadfx("env/weather/fx_cloud3d_cmls_lg1");

	level._effect["fx_mp_nuked_nuclear_explosion"]							= loadfx( "maps/mp_maps/fx_mp_nuked_nuclear_explosion" );

	level._effect["fx_mp_nuked_sprinkler"]											= loadfx( "maps/mp_maps/fx_mp_nuked_sprinkler" );	
	level._effect["fx_mp_nuked_hose_spray"]											= loadfx("maps/mp_maps/fx_mp_nuked_hose_spray");
		
	level._effect["fx_mp_nuked_glass_break"]										= loadfx( "maps/mp_maps/fx_mp_nuked_glass_break" );		

}

main()
{
	precache_util_fx();
	precache_createfx_fx();
	precache_scripted_fx();
	//precache_fx_prop_anims();
	maps\createfx\mp_nuked_fx::main();
	//maps\createart\mp_nuked_art::main();
	
/#
	if ( getdvar( "clientSideEffects" ) != "1" )
	maps\createfx\mp_nuked_fx::main();
 #/

}
