#include common_scripts\utility;

main()
{
	level._effect[ "headshot" ]						= loadfx( "impacts/flesh_hit_head_fatal_exit" );
	level._effect[ "bodyshot" ]						= loadfx( "impacts/flesh_hit" );
	level._effect[ "killshot" ]						= loadfx( "impacts/flesh_hit_body_fatal_exit" );
	
	level._effect[ "sign_fx" ]						= loadfx( "misc/light_blowout_large_radial" );
	
	level._effect[ "highrise_glass_120x110" ]		= loadfx( "props/highrise_glass_120x110" );
	level._effect[ "artilleryExp_dirt_brown_low" ]	= loadfx( "explosions/artilleryExp_dirt_brown_low" );
	level._effect[ "airlift_explosion_large" ]		= loadfx( "explosions/airlift_explosion_large" );
	level._effect[ "wall_explosion_1" ]				= loadfx( "explosions/wall_explosion_1_airport" );
	
	level._effect[ "sparks_fall" ]					= loadfx( "explosions/sparks_falling_runner" );
	

	level._effect[ "jet_fire" ]						= loadfx( "fire/jet_engine_fire" );
	level._effect[ "jet_explosion" ]				= loadfx( "explosions/jet_engine_explosion" );	
	
	level._effect[ "ground_smoke_1200x1200" ]		= LoadFX( "smoke/ground_smoke1200x1200" );
	level._effect[ "hallway_smoke_light" ]			= LoadFX( "smoke/hallway_smoke_light" );
	
	level._effect[ "drips_slow" ]					= loadfx( "misc/drips_slow" );
	level._effect[ "drips_slow_infrequent" ]		= loadfx( "misc/drips_slow_infrequent" );
	
	level._effect[ "spark_fountain" ]				= loadfx( "misc/spark_fountain" );
	
	level._effect[ "jet_engine_737" ]				= loadfx( "fire/jet_engine_737" );
	level._effect[ "jet_engine_fire_debris" ]					= loadfx( "fire/fire_debris_child" );
		

	level._effect[ "deathfx_bloodpool" ]			= loadfx( "impacts/deathfx_bloodpool" );
	level._effect[ "blood_drip" ]					= loadfx( "impacts/blood_drip" );
			
	//Glass Trail Effect
	level._effect[ "glass_dust_trail" ]= loadfx( "dust/glass_dust_trail_emitter" );
	
	level._effect[ "pistol_muzzleflash" ]= loadfx( "muzzleflashes/pistolflash" );
	level._effect[ "m79_muzzleflash" ]= loadfx( "muzzleflashes/m203_flshview" );

}

