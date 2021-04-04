#include common_scripts\_destructible;
#using_animtree( "destructibles" );

makeType( destructibleType ) 
{
	//println( destructibleType );

	// if it's already been created dont create it again
	infoIndex = getInfoIndex( destructibleType );
	if ( infoIndex >= 0 )
		return infoIndex;

	switch( destructibleType )
	{
		case "toy_glass120x110":
			toy_glass( "120x110" );
			break;
		case "toy_glass120x44":
			toy_glass( "120x44" );
			break;
		case "toy_glass56x59":
			toy_glass( "56x59" );
			break;
		case "toy_glass74x110":
			toy_glass( "74x110" );
			break;
		case "toy_glass74x44":
			toy_glass( "74x44" );
			break;
		case "toy_dt_mirror":
			toy_dt_mirror( "" );
			break;
		case "toy_dt_mirror_large":
			toy_dt_mirror( "_large" );
			break;
		case "toy_tubetv_tv1":
			toy_tubetv_( "tv1" );
			break;
		case "toy_tubetv_tv2":
			toy_tubetv_( "tv2" );
			break;
		case "toy_tubetv_tv4":
			toy_tubetv_( "tv4" );
			break;
		case "toy_tv_flatscreen_01":
			toy_tvs_flatscreen( "01", "" );
			break;
		case "toy_tv_flatscreen_02":
			toy_tvs_flatscreen( "02", "" );
			break;
		case "toy_tv_flatscreen_wallmount_01":
			toy_tvs_flatscreen( "01", "wallmount_" );
			break;
		case "toy_tv_flatscreen_wallmount_02":
			toy_tvs_flatscreen( "02", "wallmount_" );
			break;
		case "toy_transformer_ratnest01":
			toy_transformer_ratnest01( destructibleType );
			break;
		case "toy_transformer_ratnest02": //Fix for the Power Cylinder on mp_fav_tropical (Tested in Warfare², it works of course!)
			toy_transformer_ratnest02( destructibleType );
			break;
		case "toy_transformer_small01":
			toy_transformer_small01( destructibleType );
			break;
		case "toy_generator":
			toy_generator( destructibleType );
			break;
		case "toy_generator_on":
			toy_generator_on( destructibleType );
			break;
		case "toy_oxygen_tank_01":
			toy_oxygen_tank( "01" );
			break;
		case "toy_oxygen_tank_02":
			toy_oxygen_tank( "02" );
			break;
		case "toy_electricbox2":
			toy_electricbox2( destructibleType );
			break;
		case "toy_electricbox2_tropical": //Fix for the Vertical Rusty Power Meter Box on mp_fav_tropical (Tested in Warfare², it works of course!)
			toy_electricbox2_tropical( destructibleType );
			break;
		case "toy_electricbox4":
			toy_electricbox4( destructibleType );
			break;
		case "toy_electricbox4_tropical": //Fix for the Square Rusty Power Box on mp_fav_tropical (Tested in Warfare², it works of course!)
			toy_electricbox4_tropical( destructibleType );
			break;
		case "toy_airconditioner":
			toy_airconditioner( destructibleType );
			break;
		case "toy_ceiling_fan":
			toy_ceiling_fan( destructibleType );
			break;
		case "toy_wall_fan":
			toy_wall_fan( destructibleType );
			break;
		case "toy_propane_tank02":
			toy_propane_tank02( destructibleType );
			break;
		case "toy_propane_tank02_small":
			toy_propane_tank02_small( destructibleType );
			break;
		case "toy_copier":
			toy_copier( destructibleType );
			break;
		case "toy_firehydrant":
			toy_firehydrant( destructibleType );
			break;
		case "toy_parkingmeter":
			toy_parkingmeter( destructibleType );
			break;
		case "toy_mailbox":
			toy_mailbox( destructibleType );
			break;
		case "toy_mailbox2_black":
			toy_mailbox2( "black" );
			break;
		case "toy_mailbox2_green":
			toy_mailbox2( "green" );
			break;
		case "toy_mailbox2_yellow":
			toy_mailbox2( "yellow" );
			break;
		case "toy_newspaper_stand_red":
			toy_newspaper_stand_red( destructibleType );
			break;
		case "toy_newspaper_stand_blue":
			toy_newspaper_stand_blue( destructibleType );
			break;
		case "toy_filecabinet":
			toy_filecabinet( destructibleType );
			break;
		case "toy_trashbin_01":
			toy_trashbin_01( destructibleType );
			break;
		case "toy_trashbin_02":
			toy_trashbin_02( destructibleType );
			break;
		case "toy_recyclebin_01":
			toy_recyclebin_01( destructibleType );
			break;
		case "toy_trashcan_metal_closed":
			toy_trashcan_metal_closed( destructibleType );
			break;
		case "toy_water_collector":
			toy_water_collector( destructibleType );
			break;
		case "toy_foliage_tree_oak_1":
			toy_foliage_tree_oak_1( destructibleType );
			break;
		case "toy_usa_gas_station_trash_bin_01":
			toy_usa_gas_station_trash_bin_01( destructibleType );
			break;
		case "toy_usa_gas_station_trash_bin_02":
			toy_usa_gas_station_trash_bin_02( destructibleType );
			break;
		case "toy_light_ceiling_round":
			toy_light_ceiling_round( destructibleType );
			break;
		case "toy_light_ceiling_fluorescent":
			toy_light_ceiling_fluorescent( destructibleType );
			break;
		case "toy_light_ceiling_fluorescent_spotlight":
			toy_light_ceiling_fluorescent_spotlight( destructibleType );
			break;
		case "toy_light_ceiling_fluorescent_single":
			toy_light_ceiling_fluorescent_single( destructibleType );
			break;
		case "toy_light_ceiling_fluorescent_single_spotlight":
			toy_light_ceiling_fluorescent_single_spotlight( destructibleType );
			break;
		case "toy_bookstore_bookstand4_books":
			toy_bookstore_bookstand4_books( destructibleType );
			break;
		case "toy_locker_double":
			toy_locker_double( destructibleType );
			break;
		case "toy_chicken":
			toy_chicken( "" );
			break;
		case "toy_chicken_white":
			toy_chicken( "_white" );
			break;
		case "toy_chicken_black_white":
			toy_chicken( "_black_white" );
			break;
		case "vehicle_bus_destructible":
			vehicle_bus_destructible();
			break;
		case "vehicle_80s_sedan1_green":
			vehicle_80s_sedan1( "green" );
			break;
		case "vehicle_80s_sedan1_red":
			vehicle_80s_sedan1( "red" );
			break;
		case "vehicle_80s_sedan1_silv":
			vehicle_80s_sedan1( "silv" );
			break;
		case "vehicle_80s_sedan1_tan":
			vehicle_80s_sedan1( "tan" );
			break;
		case "vehicle_80s_sedan1_yel":
			vehicle_80s_sedan1( "yel" );
			break;
		case "vehicle_80s_sedan1_brn":
			vehicle_80s_sedan1( "brn" );
			break;
		// IW4M addition: nuketown sedan1
		case "vehicle_80s_sedan1_nt":
			vehicle_80s_sedan1( "nt" );
			break;
		case "vehicle_80s_hatch1_green":
			vehicle_80s_hatch1( "green" );
			break;
		case "vehicle_80s_hatch1_red":
			vehicle_80s_hatch1( "red" );
			break;
		case "vehicle_80s_hatch1_silv":
			vehicle_80s_hatch1( "silv" );
			break;
		case "vehicle_80s_hatch1_tan":
			vehicle_80s_hatch1( "tan" );
			break;
		case "vehicle_80s_hatch1_yel":
			vehicle_80s_hatch1( "yel" );
			break;
		case "vehicle_80s_hatch1_brn":
			vehicle_80s_hatch1( "brn" );
			break;
		case "vehicle_80s_hatch2_green":
			vehicle_80s_hatch2( "green" );
			break;
		case "vehicle_80s_hatch2_red":
			vehicle_80s_hatch2( "red" );
			break;
		case "vehicle_80s_hatch2_silv":
			vehicle_80s_hatch2( "silv" );
			break;
		case "vehicle_80s_hatch2_tan":
			vehicle_80s_hatch2( "tan" );
			break;
		case "vehicle_80s_hatch2_yel":
			vehicle_80s_hatch2( "yel" );
			break;
		case "vehicle_80s_hatch2_brn":
			vehicle_80s_hatch2( "brn" );
			break;
		case "vehicle_80s_wagon1_green":
			vehicle_80s_wagon1( "green" );
			break;
		case "vehicle_80s_wagon1_red":
			vehicle_80s_wagon1( "red" );
			break;
		case "vehicle_80s_wagon1_silv":
			vehicle_80s_wagon1( "silv" );
			break;
		case "vehicle_80s_wagon1_tan":
			vehicle_80s_wagon1( "tan" );
			break;
		case "vehicle_80s_wagon1_yel":
			vehicle_80s_wagon1( "yel" );
			break;
		case "vehicle_80s_wagon1_brn":
			vehicle_80s_wagon1( "brn" );
			break;
		case "vehicle_small_hatch_blue":
			vehicle_small_hatch( "blue" );
			break;
		case "vehicle_small_hatch_green":
			vehicle_small_hatch( "green" );
			break;
		case "vehicle_small_hatch_turq":
			vehicle_small_hatch( "turq" );
			break;
		case "vehicle_small_hatch_white":
			vehicle_small_hatch( "white" );
			break;
		case "vehicle_pickup":
			vehicle_pickup( destructibleType );
			break;
		case "vehicle_hummer":
			vehicle_hummer( destructibleType );
			break;
		case "vehicle_moving_truck":
			vehicle_moving_truck( destructibleType );
			break;
		case "vehicle_bm21_mobile_bed":
			vehicle_bm21( destructibleType, "vehicle_bm21_mobile_bed_dstry" );
			break;
		case "vehicle_bm21_cover":
			vehicle_bm21( destructibleType, "vehicle_bm21_mobile_cover_dstry" );
			break;
		case "vehicle_luxurysedan_2008":
			vehicle_luxurysedan( "");
			break;
		case "vehicle_luxurysedan_2008_gray":
			vehicle_luxurysedan( "_gray");
			break;
		case "vehicle_luxurysedan_2008_white":
			vehicle_luxurysedan( "_white");
			break;
		case "vehicle_uaz_winter":
			vehicle_uaz_winter( destructibleType );
			break;
		case "vehicle_uaz_fabric":
			vehicle_uaz_fabric( destructibleType );
			break;
		case "vehicle_uaz_hardtop":
			vehicle_uaz_hardtop( destructibleType );
			break;
		case "vehicle_uaz_open":
			vehicle_uaz_open( destructibleType );
			break;
		case "vehicle_policecar":
			vehicle_policecar( destructibleType );
			break;
		case "vehicle_policecar_russia":
			vehicle_policecar_russia( destructibleType );
			break;
		case "vehicle_taxi":
			vehicle_taxi( destructibleType );
			break;
		case "vehicle_mig29_landed":
			vehicle_mig29_landed( destructibleType );
			break;
		case "vehicle_mack_truck_short_snow":
			vehicle_mack_truck_short( "snow" );
			break;
		case "vehicle_mack_truck_short_green":
			vehicle_mack_truck_short( "green" );
			break;
		case "vehicle_mack_truck_short_white":
			vehicle_mack_truck_short( "white" );
			break;
		case "vehicle_motorcycle_01":
			vehicle_motorcycle( "01" );
			break;
		case "vehicle_motorcycle_02":
			vehicle_motorcycle( "02" );
			break;
		case "vehicle_subcompact_black":
			vehicle_subcompact( "black" );
			break;
		case "vehicle_subcompact_blue":
			vehicle_subcompact( "blue" );
			break;
		case "vehicle_subcompact_dark_gray":
			vehicle_subcompact( "dark_gray" );
			break;
		case "vehicle_subcompact_deep_blue":
			vehicle_subcompact( "deep_blue" );
			break;
		case "vehicle_subcompact_gold":
			vehicle_subcompact( "gold" );
			break;
		case "vehicle_subcompact_gray":
			vehicle_subcompact( "gray" );
			break;
		case "vehicle_subcompact_green":
			vehicle_subcompact( "green" );
			break;
		case "vehicle_subcompact_mica":
			vehicle_subcompact( "mica" );
			break;
		case "vehicle_subcompact_slate":
			vehicle_subcompact( "slate" );
			break;
		case "vehicle_subcompact_tan":
			vehicle_subcompact( "tan" );
			break;
		case "vehicle_subcompact_white":
			vehicle_subcompact( "white" );
			break;
		case "vehicle_coupe_black":
			vehicle_coupe( "black" );
			break;
		case "vehicle_coupe_blue":
			vehicle_coupe( "blue" );
			break;
		case "vehicle_coupe_dark_gray":
			vehicle_coupe( "dark_gray" );
			break;
		case "vehicle_coupe_deep_blue":
			vehicle_coupe( "deep_blue" );
			break;
		case "vehicle_coupe_gold":
			vehicle_coupe( "gold" );
			break;
		case "vehicle_coupe_gray":
			vehicle_coupe( "gray" );
			break;
		case "vehicle_coupe_green":
			vehicle_coupe( "green" );
			break;
		case "vehicle_coupe_mica":
			vehicle_coupe( "mica" );
			break;
		case "vehicle_coupe_slate":
			vehicle_coupe( "slate" );
			break;
		case "vehicle_coupe_tan":
			vehicle_coupe( "tan" );
			break;
		case "vehicle_coupe_white":
			vehicle_coupe( "white" );
			break;
		case "vehicle_van_black":
			vehicle_van( "black" );
			break;
		case "vehicle_van_blue":
			vehicle_van( "blue" );
			break;
		case "vehicle_van_dark_gray":
			vehicle_van( "dark_gray" );
			break;
		case "vehicle_van_deep_blue":
			vehicle_van( "deep_blue" );
			break;
		case "vehicle_van_gold":
			vehicle_van( "gold" );
			break;
		case "vehicle_van_gray":
			vehicle_van( "gray" );
			break;
		case "vehicle_van_green":
			vehicle_van( "green" );
			break;
		case "vehicle_van_mica":
			vehicle_van( "mica" );
			break;
		case "vehicle_van_slate":
			vehicle_van( "slate" );
			break;
		case "vehicle_van_tan":
			vehicle_van( "tan" );
			break;
		case "vehicle_van_white":
			vehicle_van( "white" );
			break;
		case "vehicle_suburban":
			vehicle_suburban( destructibleType, "" );
			break;
		case "vehicle_suburban_beige":
			vehicle_suburban( destructibleType, "_beige" );
			break;
		case "vehicle_suburban_dull":
			vehicle_suburban( destructibleType, "_dull" );
			break;
		case "vehicle_suburban_red":
			vehicle_suburban( destructibleType, "_red" );
			break;
		case "vehicle_snowmobile":
			vehicle_snowmobile( destructibleType );
			break;
		case "t5_vehicle_ultimate_jeep_pristine":
			t5_vehicle_ultimate_jeep_pristine( destructibleType );
			break;
		case "destructible_gaspump":
			destructible_gaspump( destructibleType );
			break;
		case "destructible_electrical_transformer_large":
			destructible_electrical_transformer_large( destructibleType );
			break;

		// Default means invalid type
		default:
			assertMsg( "Destructible object 'destructible_type' key/value of '" + destructibleType + "' is not valid" );
			break;
	}

	infoIndex = getInfoIndex( destructibleType );
	assert( infoIndex >= 0 );
	return infoIndex;
}

getInfoIndex( destructibleType )
{
	if ( !isdefined( level.destructible_type ) )
		return - 1;
	if ( level.destructible_type.size == 0 )
		return - 1;

	for ( i = 0 ; i < level.destructible_type.size ; i++ )
	{
		if ( destructibleType == level.destructible_type[ i ].v[ "type" ] )
			return i;
	}

	// didn't find it in the array, must not exist
	return - 1;
}

toy_glass( size )
{
	//---------------------------------------------------------------------
	// glass break test 120x110inches
	//---------------------------------------------------------------------
	destructible_create( "toy_glass" + size, "tag_origin", 50 );
		destructible_splash_damage_scaler( 5 );
			destructible_sound( "building_glass_shatter" );
		// Glass
		tag = "tag_glass";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
				destructible_fx( tag, "props/highrise_glass_" + size );
				//destructible_fx( tag, "props/highrise_glass_120x110_fountain" );
				destructible_sound( "building_glass_blowout" );
			destructible_state( tag + "_des", undefined, 100, undefined, undefined, undefined, true );
				destructible_fx( tag, "props/highrise_glass_" + size + "_edge");
				destructible_sound( "building_glass_blowout" );
			destructible_state( undefined );
}

toy_dt_mirror( size )
{
	//---------------------------------------------------------------------
	// dt_mirror
	//---------------------------------------------------------------------
	destructible_create( "toy_dt_mirror" + size, "tag_origin", 150, undefined, 32 );
		destructible_splash_damage_scaler( 5 );
			destructible_fx( "tag_fx", "props/mirror_shatter" + size );
			destructible_sound( "mirror_shatter" );
		destructible_state( "tag_origin", "dt_mirror" + size + "_dam", 150, undefined );
			destructible_fx( "tag_fx", "props/mirror_dt_panel" + size + "_broken" );
			destructible_explode( 1000, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( "tag_origin", "dt_mirror" + size + "_des", 150, undefined );
}

toy_tubetv_( version )
{
	//---------------------------------------------------------------------
	// Tube TV
	//---------------------------------------------------------------------
	destructible_create( "toy_tubetv_" + version, "tag_origin", 1, undefined, 32 );
		destructible_splash_damage_scaler( 1 );
			destructible_fx( "tag_fx", "explosions/tv_explosion" );
			destructible_sound( "tv_shot_burst" );
			destructible_explode( 20, 2000, 9, 9, 3, 3, undefined, 12 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
		destructible_state( undefined, "com_" + version + "_d", undefined, undefined, "no_melee" );
}

toy_tvs_flatscreen( version, mounting )
{
	//---------------------------------------------------------------------
	// Flatscreen TVs
	//---------------------------------------------------------------------
	destructible_create( "toy_tv_flatscreen_" + mounting + version, "tag_origin", 1, undefined, 32 );
		destructible_splash_damage_scaler( 1 );
			destructible_fx( "tag_fx", "explosions/tv_flatscreen_explosion" );
			destructible_sound( "tv_shot_burst" );
			destructible_explode( 20, 2000, 10, 10, 3, 3, undefined, 15 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
		destructible_state( undefined, "ma_flatscreen_tv_" + mounting + "broken_" + version, 200, undefined, "no_melee" );
}

toy_transformer_ratnest01( destructibleType )
{
	//---------------------------------------------------------------------
	// Transformer w/ wires for Favela 
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 75, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
				destructible_loopfx( "tag_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_sparks", "explosions/transformer_spark_runner", .5 );
				destructible_loopsound( "transformer_spark_loop" );
				destructible_healthdrain( 24, 0.2 );
			destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_sparks", "explosions/transformer_spark_runner", .5 );
				destructible_loopfx( "tag_fx", "fire/transformer_blacksmoke_fire", .4 );
				destructible_sound( "transformer01_flareup_med" );
				destructible_loopsound( "transformer_spark_loop" );
				destructible_healthdrain( 24, 0.2, 150, "allies" );
			destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
				destructible_fx( "tag_fx", "explosions/transformer_explosion", false );
				destructible_fx( "tag_fx", "fire/firelp_small_pm" );
				destructible_sound( "transformer01_explode" );
				destructible_explode( 7000, 8000, 150, 256, 16, 100, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_state( undefined, "utility_transformer_ratnest01_dest", undefined, undefined, "no_melee" );
}

toy_transformer_ratnest02( destructibleType ) //Fix for the Power Cylinder on mp_fav_tropical (Tested in Warfare², it works of course!)
{
	//---------------------------------------------------------------------
	// Transformer w/ wires for mp_fav_tropical
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 75, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
				destructible_loopfx( "tag_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_sparks", "explosions/transformer_spark_runner", .5 );
				destructible_loopsound( "transformer_spark_loop" );
				destructible_healthdrain( 24, 0.2 );
			destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_sparks", "explosions/transformer_spark_runner", .5 );
				destructible_loopfx( "tag_fx", "fire/transformer_blacksmoke_fire", .4 );
				destructible_sound( "transformer01_flareup_med" );
				destructible_loopsound( "transformer_spark_loop" );
				destructible_healthdrain( 24, 0.2, 150, "allies" );
			destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
				destructible_fx( "tag_fx", "explosions/transformer_explosion", false );
				destructible_fx( "tag_fx", "fire/firelp_small_pm" );
				destructible_sound( "transformer01_explode" );
				destructible_explode( 7000, 8000, 150, 256, 16, 100, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_state( undefined, "codo_utility_transformer_ratnest01_dest", undefined, undefined, "no_melee" );
}

toy_transformer_small01( destructibleType )
{
	//---------------------------------------------------------------------
	// Small hanging Transformer box for Favela 
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 75, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
				destructible_loopfx( "tag_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx", "explosions/transformer_spark_runner", .5 );
				destructible_loopsound( "transformer_spark_loop" );
				destructible_healthdrain( 24, 0.2 );
			destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx", "explosions/transformer_spark_runner", .5 );
				destructible_loopfx( "tag_fx", "fire/transformer_small_blacksmoke_fire", .4 );
				destructible_sound( "transformer01_flareup_med" );
				destructible_loopsound( "transformer_spark_loop" );
				destructible_healthdrain( 24, 0.2, 150, "allies" );
			destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
				destructible_fx( "tag_fx", "explosions/transformer_explosion", false );
				destructible_fx( "tag_fx", "fire/firelp_small_pm" );
				destructible_sound( "transformer01_explode" );
				destructible_explode( 7000, 8000, 150, 256, 16, 100, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_state( undefined, "utility_transformer_small01_dest", undefined, undefined, "no_melee" );
}

toy_generator( destructibleType )
{
	//---------------------------------------------------------------------
	// Red Generator
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_bounce", 75, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
				destructible_loopfx( "tag_fx2", "smoke/generator_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx2", "smoke/generator_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx2", "smoke/generator_damage_blacksmoke", 0.4 );
				destructible_loopfx( "tag_fx4", "explosions/generator_spark_runner", .9 );
				destructible_loopfx( "tag_fx3", "explosions/generator_spark_runner", .6123 );
				destructible_loopsound( "generator_spark_loop" );
				destructible_healthdrain( 24, 0.2, 64, "allies" );
			destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
				destructible_fx( "tag_fx", "explosions/generator_explosion", false );
				destructible_fx( "tag_fx", "fire/generator_des_fire" );
				destructible_sound( "generator01_explode" );
				destructible_explode( 7000, 8000, 128, 128, 16, 50, undefined, 0 ); 	// force_min, force_max, range, mindamage, maxdamage
				destructible_anim( get_precached_anim( "generator_explode" ), #animtree, "setanimknob", undefined, undefined, "generator_explode" );
			destructible_state( undefined, "machinery_generator_des", undefined, undefined, "no_melee" );
}

toy_generator_on( destructibleType )
{
	//---------------------------------------------------------------------
	// Red Generator, on... with sound and vibration animation
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_bounce", 0, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
			destructible_loopfx( "tag_fx2", "smoke/generator_exhaust", 0.4 );
			destructible_anim( get_precached_anim( "generator_vibration" ), #animtree, "setanimknob", undefined, undefined, "generator_vibration" );
			destructible_loopsound( "generator_running" );
		destructible_state( "tag_origin", "machinery_generator", 150 );
				destructible_loopfx( "tag_fx2", "smoke/generator_damage_whitesmoke", 0.4 );
				destructible_loopsound( "generator_running" );			
			destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx2", "smoke/generator_damage_blacksmoke", 0.4 );
				destructible_loopsound( "generator_damage_loop" );
			destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx2", "smoke/generator_damage_blacksmoke", 0.4 );
				destructible_loopfx( "tag_fx4", "explosions/generator_spark_runner", .9 );
				destructible_loopfx( "tag_fx3", "explosions/generator_spark_runner", .6123 );
				destructible_loopsound( "generator_spark_loop" );
				destructible_loopsound( "generator_damage_loop" );
				destructible_healthdrain( 24, 0.2, 64, "allies" );
			destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
				destructible_fx( "tag_fx", "explosions/generator_explosion", false );
				destructible_fx( "tag_fx", "fire/generator_des_fire" );
				destructible_sound( "generator01_explode" );
				destructible_explode( 7000, 8000, 128, 128, 16, 50, undefined, 0 ); 	// force_min, force_max, range, mindamage, maxdamage
				destructible_anim( get_precached_anim( "generator_explode" ), #animtree, "setanimknob", undefined, 0, "generator_explode" );
				destructible_anim( get_precached_anim( "generator_explode_02" ), #animtree, "setanimknob", undefined, 0, "generator_explode_02" );
				destructible_anim( get_precached_anim( "generator_explode_03" ), #animtree, "setanimknob", undefined, 0, "generator_explode_03" );
			destructible_state( undefined, "machinery_generator_des", undefined, undefined, "no_melee" );
}

toy_oxygen_tank( version )
{
	//---------------------------------------------------------------------
	// Oxygen Tanks 01 and 02 
	//---------------------------------------------------------------------
	destructible_create( "toy_oxygen_tank_" + version, "tag_origin", 150, undefined, 32, "no_melee" );
				destructible_healthdrain( 12, 0.2, 64, "allies" );
				destructible_loopsound( "oxygen_tank_leak_loop" );
				destructible_fx( "tag_cap", "props/oxygen_tank" + version + "_cap" );
				destructible_loopfx( "tag_cap", "distortion/oxygen_tank_leak", 0.4 );
			destructible_state( undefined, "machinery_oxygen_tank" + version + "_dam", 300, undefined, 32, "no_melee" );
				destructible_fx( "tag_fx", "explosions/oxygen_tank" + version + "_explosion", false );
				destructible_sound( "oxygen_tank_explode" );
				destructible_explode( 7000, 8000, 150, 256, 16, 150, undefined, 32 ); 	
				destructible_state( undefined, "machinery_oxygen_tank" + version + "_des", undefined, undefined, "no_melee" );
}

toy_electricbox2( destructibleType )
{
	//---------------------------------------------------------------------
	// electric box large toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
			destructible_fx( "tag_fx", "props/electricbox4_explode", undefined, undefined, undefined, 1 );
			destructible_sound( "exp_fusebox_sparks" );
			destructible_explode( 1000, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "me_electricbox2_dest", undefined, undefined, "no_melee" );
		// door
		destructible_part( "tag_fx", "me_electricbox2_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );

		// door upper
		destructible_part( "tag_door_upper", "me_electricbox2_door_upper", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_electricbox2_tropical( destructibleType )
{
	//---------------------------------------------------------------------
	// electric box large toy on mp_fav_tropical
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
			destructible_fx( "tag_fx", "props/electricbox4_explode", undefined, undefined, undefined, 1 );
			destructible_sound( "exp_fusebox_sparks" );
			destructible_explode( 1000, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "me_electricbox2_dest_tropical", undefined, undefined, "no_melee" );
		// door
		destructible_part( "tag_fx", "me_electricbox2_door_tropical", undefined, undefined, undefined, undefined, 1.0, 1.0 );

		// door upper
		destructible_part( "tag_door_upper", "me_electricbox2_door_upper_tropical", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_electricbox4( destructibleType )
{
	//---------------------------------------------------------------------
	// electric box medium toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
			destructible_fx( "tag_fx", "props/electricbox4_explode", undefined, undefined, undefined, 1 );
			destructible_sound( "exp_fusebox_sparks" );
			destructible_explode( 20, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "me_electricbox4_dest", undefined, undefined, "no_melee" );
		// door
		destructible_part( "tag_fx", "me_electricbox4_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

toy_electricbox4_tropical( destructibleType )
{
	//---------------------------------------------------------------------
	// electric box medium toy on mp_fav_tropical
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
			destructible_fx( "tag_fx", "props/electricbox4_explode", undefined, undefined, undefined, 1 );
			destructible_sound( "exp_fusebox_sparks" );
			destructible_explode( 20, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "me_electricbox4_dest_tropical", undefined, undefined, "no_melee" );
		// door
		destructible_part( "tag_fx", "me_electricbox4_door_tropical", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

toy_airconditioner( destructibleType )
{
	//---------------------------------------------------------------------
	// Small Airconditioner hanging on wall
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 0, undefined, 32 );
			destructible_anim( get_precached_anim( "ex_airconditioner_fan" ), #animtree, "setanimknob", undefined, undefined, "ex_airconditioner_fan" );
			destructible_loopsound( "airconditioner_running_loop" );
		destructible_state( "tag_origin", "com_ex_airconditioner", 300 );
			destructible_fx( "tag_fx", "explosions/airconditioner_ex_explode", undefined, undefined, undefined, 1 );
			destructible_sound( "airconditioner_burst" );
			destructible_explode( 1000, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "com_ex_airconditioner_dam", undefined, undefined, "no_melee" );
		// door
		destructible_part( "tag_fx", "com_ex_airconditioner_fan", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

toy_ceiling_fan( destructibleType )
{
	//---------------------------------------------------------------------
	// ceiling fan
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 0, undefined, 32 );
			destructible_anim( get_precached_anim( "me_fanceil1_spin" ), #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin" );
		destructible_state( "tag_origin", "me_fanceil1", 150 );
			destructible_anim( get_precached_anim( "me_fanceil1_spin_stop" ), #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin_stop" );
			destructible_fx( "tag_fx", "explosions/ceiling_fan_explosion" );
			destructible_sound( "ceiling_fan_sparks" );
			destructible_explode( 1000, 2000, 32, 32, 5, 32, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "me_fanceil1_des", undefined, undefined, "no_melee" );
			destructible_part( "tag_fx", undefined, 150, undefined, undefined, undefined, 1.0 );
}


toy_wall_fan( destructibleType )
{
	//---------------------------------------------------------------------
	// wall fan
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_swivel", 0, undefined, 32 );
			destructible_anim( get_precached_anim( "wall_fan_rotate" ), #animtree, "setanimknob", undefined, undefined, "wall_fan_rotate" );
			destructible_loopsound( "wall_fan_fanning" );
		destructible_state( "tag_wobble", "cs_wallfan1", 150 );
			destructible_anim( get_precached_anim( "wall_fan_stop" ), #animtree, "setanimknob", undefined, undefined, "wall_fan_wobble" );
			destructible_fx( "tag_fx", "explosions/wallfan_explosion_dmg" );
			destructible_sound( "wall_fan_sparks" );
		//	destructible_loopsound( "wall_fan_malfuntioning" );
		destructible_state( "tag_wobble", "cs_wallfan1", 150, undefined, "no_melee" );
		//	destructible_anim( get_precached_anim( "wall_fan_stop" ), #animtree, "setanimknob", undefined, undefined, "wall_fan_stop" );
			destructible_fx( "tag_fx", "explosions/wallfan_explosion_des" );
			destructible_sound( "wall_fan_break" );
		destructible_state( undefined, "cs_wallfan1_dmg", undefined, undefined, "no_melee" );
}

toy_propane_tank02( destructibleType )
{
	//---------------------------------------------------------------------
	// Large Propane tank goes KaBooM
	//---------------------------------------------------------------------

	destructible_create( destructibleType, "tag_origin", 50, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 5 );
			destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
				destructible_loopsound( "propanetank02_gas_leak_loop" );
				destructible_loopfx( "tag_cap", "distortion/propane_cap_distortion", 0.1 );
			destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_cap", "fire/propane_capfire_leak", 0.1 );
				destructible_sound( "propanetank02_flareup_med" );
				destructible_loopsound( "propanetank02_fire_med" );
				destructible_healthdrain( 12, 0.2, 300, "allies" );
			destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
				destructible_physics( "tag_cap", ( 50, 0, 0 ) );
				destructible_loopfx( "tag_cap", "fire/propane_capfire", 0.6 );
				destructible_fx( "tag_valve", "fire/propane_valvefire_flareup" );
				destructible_physics( "tag_valve", ( 50, 0, 0 ) );
				destructible_fx( "tag_cap", "fire/propane_capfire_flareup" );
				destructible_loopfx( "tag_valve", "fire/propane_valvefire", 0.1 );
				destructible_sound( "propanetank02_flareup2_med" );
				destructible_loopsound( "propanetank02_fire_med" );
			destructible_state( undefined, undefined, 150, undefined, 5, "no_melee" );
				destructible_fx( "tag_fx", "fire/propane_small_fire" );
				destructible_fx( "tag_fx", "explosions/propane_large_exp_fireball" );
				destructible_fx( "tag_fx", "explosions/propane_large_exp", false );
				destructible_sound( "propanetank02_explode" );
				destructible_loopsound( "propanetank02_fire_blown_med" );
				destructible_explode( 7000, 8000, 600, 600, 32, 300 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_state( undefined, "com_propane_tank02_DES", undefined, undefined, "no_melee" );
		// Lower Valve
		destructible_part( "tag_valve", "com_propane_tank02_valve" );
		// Top Cap
		destructible_part( "tag_cap", "com_propane_tank02_cap" );

}

toy_propane_tank02_small( destructibleType )
{
	//---------------------------------------------------------------------
	// Small Propane tank goes KaBooM
	//---------------------------------------------------------------------
	
	destructible_create( destructibleType, "tag_origin", 50, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 10 );
			destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
				destructible_loopsound( "propanetank02_gas_leak_loop" );
				destructible_loopfx( "tag_cap", "distortion/propane_cap_distortion", 0.1 );
			destructible_state( undefined, undefined, 350, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_cap", "fire/propane_capfire_leak", 0.1 );
				destructible_sound( "propanetank02_flareup_med" );
				destructible_loopsound( "propanetank02_fire_med" );
				destructible_healthdrain( 12, 0.2, 210, "allies" );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_physics( "tag_cap", ( 50, 0, 0 ) );
				destructible_loopfx( "tag_cap", "fire/propane_capfire", 0.6 );
				destructible_fx( "tag_valve", "fire/propane_valvefire_flareup" );
				destructible_physics( "tag_valve", ( 50, 0, 0 ) );
				destructible_fx( "tag_cap", "fire/propane_capfire_flareup" );
				destructible_loopfx( "tag_valve", "fire/propane_valvefire", 0.1 );
				destructible_sound( "propanetank02_flareup_med" );
				destructible_loopsound( "propanetank02_fire_med" );
			destructible_state( undefined, undefined, 200, undefined, 5, "no_melee" );
				destructible_fx( "tag_fx", "fire/propane_small_fire" );
				//destructible_fx( "tag_fx", "explosions/propane_large_exp_fireball" );
				destructible_fx( "tag_fx", "explosions/propane_large_exp", false );
				destructible_sound( "propanetank02_explode" );
				destructible_explode( 7000, 8000, 400, 400, 32, 100 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_state( undefined, "com_propane_tank02_small_DES", undefined, undefined, "no_melee" );
		// Lower Valve
		destructible_part( "tag_valve", "com_propane_tank02_small_valve" );
		// Top Cap
		destructible_part( "tag_cap", "com_propane_tank02_small_cap" );

}

toy_copier( destructibleType )
{
	//---------------------------------------------------------------------
	// copier toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
				destructible_loopfx( "tag_left_feeder", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_left_feeder", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_fx", "props/photocopier_sparks", 3 );
				destructible_loopsound( "copier_spark_loop" );
				destructible_healthdrain( 12, 0.2 );
			destructible_state( undefined, undefined, 800, undefined, 5, "no_melee" );
				destructible_fx( "tag_fx", "props/photocopier_exp", false );
				destructible_fx( "tag_fx", "props/photocopier_fire" );
				destructible_sound( "copier_exp" );
				destructible_loopsound( "copier_fire_loop" );
				destructible_explode( 7000, 8000, 96, 96, 32, 48 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_state( undefined, "prop_photocopier_destroyed", undefined, undefined, "no_melee" );


		// left feeder part
		destructible_part( "tag_left_feeder", "prop_photocopier_destroyed_left_feeder", 4, undefined, undefined, undefined, 1.0, 1.0 );
		// right shelf
		destructible_part( "tag_right_shelf", "prop_photocopier_destroyed_right_shelf", 4, undefined, undefined, undefined, 1.0, 1.0 );
		// top cover
		destructible_part( "tag_top", "prop_photocopier_destroyed_top", 4, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_firehydrant( destructibleType )
{
	//---------------------------------------------------------------------
	// fire hydrant toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 250, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 11 );
			destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_cap", "props/firehydrant_leak", 0.1 );
				destructible_loopsound( "firehydrant_spray_loop" );
				destructible_healthdrain( 12, 0.2 );
			destructible_state( undefined, undefined, 800, undefined, 5, "no_melee" );
				destructible_fx( "tag_fx", "props/firehydrant_exp", false );
				destructible_fx( "tag_fx", "props/firehydrant_spray_10sec", false );
				destructible_sound( "firehydrant_burst" );
				destructible_explode( 17000, 18000, 96, 96, 32, 48 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_state( undefined, "com_firehydrant_dest", undefined, undefined, "no_melee" );

		// destroyed hydrant
		destructible_part( "tag_fx", "com_firehydrant_dam", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// side cap
		destructible_part( "tag_cap", "com_firehydrant_cap", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

toy_parkingmeter( destructibleType )
{
	//---------------------------------------------------------------------
	// parking meter toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_meter", 120 );
				destructible_fx( "tag_fx", "props/parking_meter_coins", true, damage_not( "splash" ) );	// coin drop
				destructible_fx( "tag_fx", "props/parking_meter_coins_exploded", true, "splash" );		// coin drop
				destructible_sound( "exp_parking_meter_sweet" );										// coin drop sounds
				destructible_explode( 2800, 3000, 64, 64, 0, 0, true ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue to take damage
			destructible_state( undefined, "com_parkingmeter_damaged", 20, undefined, undefined, "splash" );
			destructible_state( undefined, "com_parkingmeter_destroyed", undefined, undefined, undefined, undefined, undefined, true );

		// coin collector's cap
		destructible_part( "tag_cap", "com_parkingmeter_cap", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

toy_mailbox( destructibleType )
{
	//---------------------------------------------------------------------
	// mail box without pole
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 200 );
				destructible_fx( "tag_fx", "props/mail_box_explode", true );		// mail flying
				destructible_sound( "exp_mailbox_sweet" );							// mail paper sounds
				destructible_explode( 100, 2000, 64, 64, 0, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_state( "tag_origin", "com_mailbox_dam" );
		destructible_part( "tag_door", "com_mailbox_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_flag", "com_mailbox_flag", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_mailbox2( color )
{
	//---------------------------------------------------------------------
	// mailbox2 w/ pole toy
	//---------------------------------------------------------------------
	destructible_create( "toy_mailbox2_" + color, "tag_origin", 120 );
				destructible_fx( "tag_fx", "props/mail_box_explode", true, damage_not( "splash" ) );	// bullet damages
				destructible_fx( "tag_fx", "props/mail_box_explode", true, "splash" );					// grenade damages
				destructible_sound( "exp_mailbox_sweet" );
				destructible_explode( 2800, 3000, 64, 64, 0, 0, true ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue to take damage
			destructible_state( undefined, "mailbox_" + color + "_dam", 20, undefined, undefined, "splash" );
			destructible_state( undefined, "mailbox_black_dest", undefined, undefined, undefined, undefined, undefined, true );

		// mailbox door
		destructible_part( "tag_door", "mailbox_" + color + "_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_flag", "mailbox_black_flag", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}


toy_newspaper_stand_red( destructibleType )
{
	//---------------------------------------------------------------------
	// newspaper stand toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120 );
			destructible_fx( "tag_door", "props/news_stand_paper_spill", true, damage_not( "splash" ) );		// coin drop
			destructible_sound( "exp_newspaper_box" );													// coin drop sounds
			destructible_explode( 2500, 2501, 64, 64, 0, 0, true ); 												// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue to take damage
		destructible_state( undefined, "com_newspaperbox_red_dam", 20, undefined, undefined, "splash" );
			destructible_fx( "tag_fx", "props/news_stand_explosion", true, "splash" );							// coin drop
		destructible_state( undefined, "com_newspaperbox_red_des", undefined, undefined, undefined, undefined, undefined, false );

		// front door
		destructible_part( "tag_door", "com_newspaperbox_red_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

toy_newspaper_stand_blue( destructibleType )
{
	//---------------------------------------------------------------------
	// newspaper stand toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120 );
			destructible_fx( "tag_door", "props/news_stand_paper_spill_shatter", true, damage_not( "splash" ) );		// coin drop
			destructible_sound( "exp_newspaper_box" ); 													// coin drop sounds
			destructible_explode( 800, 2001, 64, 64, 0, 0, true ); 												// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue to take damage
		destructible_state( undefined, "com_newspaperbox_blue_dam", 20, undefined, undefined, "splash" );
			destructible_fx( "tag_fx", "props/news_stand_explosion", true, "splash" );							// coin drop
		destructible_state( undefined, "com_newspaperbox_blue_des", undefined, undefined, undefined, undefined, undefined, false );

		// front door
		destructible_part( "tag_door", "com_newspaperbox_blue_door", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_filecabinet( destructibleType )
{
	//---------------------------------------------------------------------
	// filecabinet toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120 );
				destructible_fx( "tag_drawer_lower", "props/filecabinet_dam", true, damage_not( "splash" ) );		// coin drop
				destructible_sound( "exp_filecabinet" );
		destructible_state( undefined, "com_filecabinetblackclosed_dam", 20, undefined, undefined, "splash" );
				destructible_fx( "tag_drawer_upper", "props/filecabinet_des", true, "splash" );							// coin drop
				destructible_sound( "exp_filecabinet" ); 											// coin drop sounds
				destructible_physics( "tag_drawer_upper", ( 50, -10, 5 ) );															// coin drop sounds
		destructible_state( undefined, "com_filecabinetblackclosed_des", undefined, undefined, undefined, undefined, undefined, false );

		// front door
		destructible_part( "tag_drawer_upper", "com_filecabinetblackclosed_drawer", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_trashbin_01( destructibleType )
{
	//---------------------------------------------------------------------
	// trashbin01 toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120, undefined, 32, "no_melee" );
				destructible_fx( "tag_fx", "props/garbage_spew_des", true, "splash" );
				destructible_fx( "tag_fx", "props/garbage_spew", true, damage_not( "splash" ) );
				destructible_sound( "exp_trashcan_sweet" ); 															
				destructible_explode( 1300, 1351, 1, 1, 10, 20 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage

		destructible_state( undefined, "com_trashbin01_dmg", undefined, undefined, undefined, undefined, undefined, false );

		destructible_part( "tag_fx", "com_trashbin01_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_trashbin_02( destructibleType )
{
	//---------------------------------------------------------------------
	// trashbin02 toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120, undefined, 32, "no_melee" );
				destructible_fx( "tag_fx", "props/garbage_spew_des", true, "splash" );
				destructible_fx( "tag_fx", "props/garbage_spew", true, damage_not( "splash" ) );
				destructible_sound( "exp_trashcan_sweet" ); 															
				destructible_explode( 600, 800, 1, 1, 10, 20 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage

		destructible_state( undefined, "com_trashbin02_dmg", undefined, undefined, undefined, undefined, undefined, false );

		destructible_part( "tag_fx", "com_trashbin02_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_recyclebin_01( destructibleType )
{
	//---------------------------------------------------------------------
	// recyclebin toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120, undefined, 32, "no_melee" );
				destructible_fx( "tag_fx", "props/garbage_spew_des", true, "splash" );
				destructible_fx( "tag_fx", "props/garbage_spew", true, damage_not( "splash" ) );
				destructible_sound( "exp_trashcan_sweet" ); 															
				destructible_explode( 600, 651, 1, 1, 10, 20 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage

		destructible_state( undefined, "com_recyclebin01_dmg", undefined, undefined, undefined, undefined, undefined, false );


		destructible_part( "tag_fx", "com_recyclebin01_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_trashcan_metal_closed( destructibleType )
{
	//---------------------------------------------------------------------
	// trashcan_metal_closed
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120, undefined, 32, "no_melee" );
			destructible_fx( "tag_fx", "props/garbage_spew_des", true, "splash" );
			destructible_fx( "tag_fx", "props/garbage_spew", true, damage_not( "splash" ) );
			destructible_sound( "exp_trashcan_sweet" ); 															
			destructible_explode( 600, 651, 1, 1, 10, 20 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
		destructible_state( undefined, "com_trashcan_metal_with_trash", undefined, undefined, undefined, undefined, undefined, false );

		destructible_part( "tag_fx", "com_trashcan_metalLID", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}

toy_water_collector( destructibleType )
{
	//---------------------------------------------------------------------
	// utility_water_collector - big blue odd shaped water barrels
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 220, undefined, 32, "no_melee" );
			destructible_fx( "tag_fx", "explosions/water_collector_explosion" );
			destructible_sound( "water_collector_splash" ); 															
			destructible_explode( 500, 800, 32, 32, 1, 10, undefined, 32 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "utility_water_collector_base_dest", undefined, undefined, "no_melee", undefined, undefined, false );

		destructible_part( "tag_lid", undefined, 220, undefined, undefined, "no_melee", 1.0 );
			destructible_state( undefined );
}

toy_foliage_tree_oak_1( destructibleType )
{
	//---------------------------------------------------------------------
	// foliage_tree_oak_1 destructible tree (splash damage only)
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120, undefined, 32, "splash" );
				destructible_fx( "tag_fx", "explosions/tree_trunk_explosion_oak_1", true, "splash" );
				destructible_sound( "large_oak_tree_impact" ); 															
				destructible_sound( "large_oak_tree_fall" ); 															
				//destructible_fx( "tag_fx", "explosions/tree_trunk_explosion_oak_1", true, damage_not( "splash" ) );
				destructible_explode( 600, 651, 1, 1, 10, 20 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage

		destructible_state( undefined, "foliage_tree_oak_1_destroyed_trunk", undefined, undefined, undefined, undefined, undefined, false );

}


toy_usa_gas_station_trash_bin_01( destructibleType )
{
	//---------------------------------------------------------------------
	// usa_gas_station_trash_bin_01 toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120, undefined, 32, "no_melee" );
				destructible_fx( "tag_fx", "props/garbage_spew_des", true, "splash" );
				destructible_fx( "tag_fx", "props/garbage_spew", true, damage_not( "splash" ) );
				destructible_explode( 600, 651, 1, 1, 10, 20 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage

		destructible_state( undefined, "usa_gas_station_trash_bin_01_base", undefined, undefined, undefined, undefined, undefined, false );

		destructible_part( "tag_fx", "usa_gas_station_trash_bin_01_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}

toy_usa_gas_station_trash_bin_02( destructibleType )
{
	//---------------------------------------------------------------------
	// usa_gas_station_trash_bin_02 toy
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 120, undefined, 32, "no_melee" );
				destructible_fx( "tag_fx_high", "props/garbage_spew_des", true, "splash" );
				destructible_fx( "tag_fx_high", "props/garbage_spew", true, damage_not( "splash" ) );
				destructible_explode( 600, 651, 1, 1, 10, 20 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage

		destructible_state( undefined, "usa_gas_station_trash_bin_02_base", undefined, undefined, undefined, undefined, undefined, false );


		destructible_part( "tag_fx_high", "usa_gas_station_trash_bin_02_lid", undefined, undefined, undefined, undefined, 1.0, 1.0 );

}


toy_light_ceiling_round( destructibleType )
{
	//---------------------------------------------------------------------
	// Ceiling round light
	//---------------------------------------------------------------------
	//println( "Ceiling light round being destroyedß" );
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
			destructible_lights_out( 16 );
			destructible_fx( "tag_fx", "misc/light_blowout_runner" );
		destructible_state( undefined, "com_light_ceiling_round_off", undefined, undefined, "no_melee" );
}

toy_light_ceiling_fluorescent( destructibleType )
{
	//---------------------------------------------------------------------
	// Ceiling fluorescent light
	//---------------------------------------------------------------------
	println( "Ceiling light fluorescent being destroyedß" );
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );			
		 	destructible_fx( "tag_fx", "misc/light_fluorescent_blowout_runner" );
			destructible_fx( "tag_swing_fx", "misc/light_blowout_swinging_runner" );
			destructible_lights_out( 16 );
			destructible_explode( 20, 2000, 64, 64, 40, 80 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_anim( get_precached_anim( "light_fluorescent_swing" ), #animtree, "setanimknob", undefined, 0, "light_fluorescent_swing" );
				destructible_sound( "fluorescent_light_fall", undefined, 0 ); 
				destructible_sound( "fluorescent_light_bulb", undefined, 0  ); 
				//destructible_sound( "fluorescent_light_spark", undefined, 0  ); 
			destructible_anim( get_precached_anim( "light_fluorescent_swing_02" ), #animtree, "setanimknob", undefined, 1, "light_fluorescent_swing_02" );
				destructible_sound( "fluorescent_light_fall", undefined, 1  ); 
				destructible_sound( "fluorescent_light_bulb", undefined, 1  ); 
				//destructible_sound( "fluorescent_light_spark", undefined, 1  ); 
			destructible_anim( get_precached_anim( "light_fluorescent_null" ), #animtree, "setanimknob", undefined, 2, "light_fluorescent_null" );
		destructible_state( undefined, "me_lightfluohang_double_destroyed", undefined, undefined, "no_melee" );
		
		
}

toy_light_ceiling_fluorescent_spotlight( destructibleType )
{
	//---------------------------------------------------------------------
	// Ceiling fluorescent light
	//---------------------------------------------------------------------
	println( "Ceiling light fluorescent being destroyedß" );
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
			destructible_sound( "fluorescent_light_bulb" ); 
			//destructible_sound( "fluorescent_light_spark" ); //played in effect 	
		 	destructible_fx( "tag_fx", "misc/light_fluorescent_blowout_runner" );
			destructible_fx( "tag_swing_fx", "misc/light_blowout_swinging_runner" );
			destructible_lights_out( 16 );
			destructible_explode( 20, 2000, 64, 64, 40, 80 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_anim( get_precached_anim( "light_fluorescent_swing" ), #animtree, "setanimknob", undefined, 0, "light_fluorescent_swing" );
				destructible_sound( "fluorescent_light_fall", undefined, 0 ); 
				destructible_sound( "fluorescent_light_bulb", undefined, 0  ); 
				//destructible_sound( "fluorescent_light_spark", undefined, 0  ); 
			destructible_spotlight( "tag_swing_r_far" );
			destructible_sound( "fluorescent_light_fall" ); 
		destructible_state( undefined, "me_lightfluohang_double_destroyed", undefined, undefined, "no_melee" );
}

toy_light_ceiling_fluorescent_single( destructibleType )
{
	//---------------------------------------------------------------------
	// Ceiling fluorescent light
	//---------------------------------------------------------------------
	println( "Ceiling light fluorescent single being destroyedß" );
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );	
		 	destructible_fx( "tag_fx", "misc/light_fluorescent_single_blowout_runner" );
			destructible_fx( "tag_swing_center_fx", "misc/light_blowout_swinging_runner" );
			destructible_fx( "tag_swing_center_fx_far", "misc/light_blowout_swinging_runner" );
			destructible_explode( 20, 2000, 64, 64, 40, 80 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_anim( get_precached_anim( "light_fluorescent_single_swing" ), #animtree, "setanimknob", undefined, 0, "light_fluorescent_single_swing" );
				destructible_sound( "fluorescent_light_fall", undefined, 0 ); 
				destructible_sound( "fluorescent_light_bulb", undefined, 0  ); 
				//destructible_sound( "fluorescent_light_spark", undefined, 0  ); 
			destructible_anim( get_precached_anim( "light_fluorescent_single_swing_02" ), #animtree, "setanimknob", undefined, 1, "light_fluorescent_single_swing_02" );
				destructible_sound( "fluorescent_light_hinge", undefined, 1  ); 
				destructible_sound( "fluorescent_light_bulb", undefined, 1  ); 
				//destructible_sound( "fluorescent_light_spark", undefined, 1  ); 
			destructible_anim( get_precached_anim( "light_fluorescent_single_swing_03" ), #animtree, "setanimknob", undefined, 2, "light_fluorescent_single_swing_03" );
				destructible_sound( "fluorescent_light_fall", undefined, 2  ); 
				destructible_sound( "fluorescent_light_bulb", undefined, 2  ); 
				//destructible_sound( "fluorescent_light_spark", undefined, 2  ); 
			destructible_anim( get_precached_anim( "light_fluorescent_single_null" ), #animtree, "setanimknob", undefined, 3, "light_fluorescent_single_null" );
		destructible_state( undefined, "me_lightfluohang_single_destroyed", undefined, undefined, "no_melee" );
}

toy_light_ceiling_fluorescent_single_spotlight( destructibleType )
{
	//---------------------------------------------------------------------
	// Ceiling fluorescent light
	//---------------------------------------------------------------------
	println( "Ceiling light fluorescent single being destroyedß" );
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
			destructible_lights_out( 16 );
			destructible_sound( "fluorescent_light_bulb" ); 
			//destructible_sound( "fluorescent_light_spark" ); //played in effect 
		 	destructible_fx( "tag_fx", "misc/light_fluorescent_single_blowout_runner" );
			destructible_fx( "tag_swing_center_fx", "misc/light_blowout_swinging_runner" );
			destructible_fx( "tag_swing_center_fx_far", "misc/light_blowout_swinging_runner" );
			destructible_explode( 20, 2000, 64, 64, 40, 80 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
			destructible_anim( get_precached_anim( "light_fluorescent_single_swing_02" ), #animtree, "setanimknob", undefined, undefined, "light_fluorescent_single_swing_02" );
			destructible_sound( "fluorescent_light_fall" ); 
			destructible_spotlight( "tag_swing_center_fx_far" );
		destructible_state( undefined, "me_lightfluohang_single_destroyed", undefined, undefined, "no_melee" );
}

toy_bookstore_bookstand4_books( destructibleType )
{
	//---------------------------------------------------------------------
	// bookstore_bookstand4_books
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 200, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 7 );
			destructible_fx( "tag_fx", "props/bookshelf4_dmg", true, damage_not( "splash" ) );
			//destructible_sound( "copier_exp" );
		destructible_state( undefined, "bookstore_bookstand4", 100, undefined, undefined, "splash" );
			destructible_fx( "tag_fx", "props/bookshelf4_des", true, "splash" );
			destructible_explode( 2000, 3800, 32, 32, 1, 5, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continueDamage, originOffset, earthQuakeScale, earthQuakeRadius 
		destructible_state( undefined, "bookstore_bookstand4_null", undefined, undefined, undefined, undefined, undefined, false );
}

toy_locker_double( destructibleType )
{
	//---------------------------------------------------------------------
	// Locker Double
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
				
				destructible_anim( get_precached_anim( "locker_broken_both_doors_1" ), #animtree, "setanimknob", undefined, 0, "locker_broken_both_doors_1" );
				destructible_fx( "tag_fx", "props/locker_double_des_02_right", undefined, undefined, 0 );
				destructible_sound( "lockers_fast", undefined, 0 );
				
				destructible_anim( get_precached_anim( "locker_broken_both_doors_2" ), #animtree, "setanimknob", undefined, 1, "locker_broken_both_doors_2" );
				destructible_fx( "tag_fx", "props/locker_double_des_01_left", undefined, undefined, 1 );
				destructible_sound( "lockers_fast", undefined, 1 );
				
				destructible_anim( get_precached_anim( "locker_broken_both_doors_4" ), #animtree, "setanimknob", undefined, 2, "locker_broken_both_doors_4" );
				destructible_fx( "tag_fx", "props/locker_double_des_03_both", undefined, undefined, 2 );
				destructible_sound( "lockers_double", undefined, 2 );

				destructible_anim( get_precached_anim( "locker_broken_door1_fast" ), #animtree, "setanimknob", undefined, 3, "locker_broken_door1_fast" );
				destructible_fx( "tag_fx", "props/locker_double_des_01_left", undefined, undefined, 3 );
				destructible_sound( "lockers_fast", undefined, 3 );
				
				destructible_anim( get_precached_anim( "locker_broken_door2_fast" ), #animtree, "setanimknob", undefined, 4, "locker_broken_door2_fast" );
				destructible_fx( "tag_fx", "props/locker_double_des_02_right", undefined, undefined, 4 );
				destructible_sound( "lockers_fast", undefined, 4 );
				
				destructible_anim( get_precached_anim( "locker_broken_both_doors_3" ), #animtree, "setanimknob", undefined, 5, "locker_broken_both_doors_3" );
				destructible_fx( "tag_fx", "misc/no_effect", undefined, undefined, 5 );
				destructible_sound( "lockers_minor", undefined, 5 );
				
				destructible_anim( get_precached_anim( "locker_broken_door1_slow" ), #animtree, "setanimknob", undefined, 6, "locker_broken_door1_slow" );
				destructible_fx( "tag_fx", "misc/no_effect", undefined, undefined, 6 );
				destructible_sound( "lockers_minor", undefined, 6 );
				
				destructible_anim( get_precached_anim( "locker_broken_door2_slow" ), #animtree, "setanimknob", undefined, 7, "locker_broken_door2_slow" );
				destructible_fx( "tag_fx", "misc/no_effect", undefined, undefined, 7 );
				destructible_sound( "lockers_minor", undefined, 7 );
				
		destructible_state( undefined, "com_locker_double_destroyed", undefined, undefined, "no_melee" );
}


toy_chicken( version )
{
	//---------------------------------------------------------------------
	// Chicken
	//---------------------------------------------------------------------
	destructible_create( "toy_chicken" + version, "tag_origin", 0, undefined, 32 );
			destructible_anim( get_precached_anim( "chicken_cage_loop_01" ), #animtree, "setanimknob", undefined, 0, "chicken_cage_loop_01", 1.6 );
			destructible_anim( get_precached_anim( "chicken_cage_loop_02" ), #animtree, "setanimknob", undefined, 1, "chicken_cage_loop_02", 1.6 );
			destructible_loopsound( "animal_chicken_idle_loop" );
		destructible_state( "tag_origin", "chicken" + version, 25 );
			destructible_fx( "tag_origin", "props/chicken_exp" + version );
			destructible_anim( get_precached_anim( "chicken_cage_death" ), #animtree, "setanimknob", undefined, 0, "chicken_cage_death" );
			destructible_anim( get_precached_anim( "chicken_cage_death_02" ), #animtree, "setanimknob", undefined, 1, "chicken_cage_death_02" );
			destructible_sound( "animal_chicken_death" );
		destructible_state( undefined, "chicken" + version, undefined, undefined, "no_melee" );	
}


vehicle_bus_destructible()
{
	//---------------------------------------------------------------------
	// Bus
	//---------------------------------------------------------------------
	destructible_create( "vehicle_bus_destructible" );
		// Glass ( Front Left )
		tag = "tag_window_front_left";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Front Right )
		tag = "tag_window_front_right";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Driver Side )
		tag = "tag_window_driver";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Back of bus )
		tag = "tag_window_back";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Right Side )
		tag = "tag_window_side_1";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Right Side )
		tag = "tag_window_side_2";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Right Side )
		tag = "tag_window_side_3";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Right Side )
		tag = "tag_window_side_4";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Right Side )
		tag = "tag_window_side_5";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Left Side )
		tag = "tag_window_side_6";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Left Side )
		tag = "tag_window_side_7";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Left Side )
		tag = "tag_window_side_8";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Left Side )
		tag = "tag_window_side_9";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Left Side )
		tag = "tag_window_side_10";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

		// Glass ( Left Side )
		tag = "tag_window_side_11";
		destructible_part( tag, undefined, 99, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 200, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );

}

vehicle_80s_sedan1( color )
{
	//---------------------------------------------------------------------
	// 80's Sedan
	//---------------------------------------------------------------------
	destructible_create( "vehicle_80s_sedan1_" + color, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 12, 0.2, 150, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_80s_sedan1_" + color + "_destroyed", undefined, 32, "no_melee" );
		// Hood
		tag = "tag_hood";
		destructible_part( tag, "vehicle_80s_sedan1_" + color + "_hood", undefined, undefined, undefined, undefined, 1.0, 2.5 );
		//Trunk
		tag = "tag_trunk";
		destructible_part( tag, "vehicle_80s_sedan1_" + color + "_trunk", undefined, undefined, undefined, undefined, 1.0 );
		// Tires
		destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_80s_sedan1_" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_80s_sedan1_" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 2.3 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
		destructible_part( "tag_door_left_back", undefined, undefined, undefined, undefined, undefined, 1.0 );
		destructible_part( "tag_door_right_front", "vehicle_80s_sedan1_" + color + "_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_right_back", "vehicle_80s_sedan1_" + color + "_door_RB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Left )
		tag = "tag_light_left_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Right )
		tag = "tag_light_right_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Bumpers
		destructible_part( "tag_bumper_front", "vehicle_80s_sedan1_" + color + "_bumper_F", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_bumper_back", "vehicle_80s_sedan1_" + color + "_bumper_B", undefined, undefined, undefined, undefined, undefined, 1.0 );
		// Side Mirrors
		if ( color != "nt")
		{
			destructible_part( "tag_mirror_left", "vehicle_80s_sedan1_" + color + "_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
				destructible_physics();
			destructible_part( "tag_mirror_right", "vehicle_80s_sedan1_" + color + "_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
				destructible_physics();
		}
}

vehicle_80s_hatch1( color )
{
	//---------------------------------------------------------------------
	// 80's hatchback
	//---------------------------------------------------------------------
	destructible_create( "vehicle_80s_hatch1_" + color, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 12, 0.2, 150, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_80s_hatch1_" + color + "_destroyed", undefined, 32, "no_melee" );
		// Hood
		tag = "tag_hood";
		destructible_part( tag, "vehicle_80s_hatch1_" + color + "_hood", 800, undefined, undefined, undefined, 1.0, 1.5 );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_80s_hatch1_" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_80s_hatch1_" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
		destructible_part( "tag_door_right_front", "vehicle_80s_hatch1_" + color + "_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 10, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 10, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 10, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 10, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 10, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 10, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Left )
		tag = "tag_light_left_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Right )
		tag = "tag_light_right_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Bumpers
		destructible_part( "tag_bumper_front" );
		destructible_part( "tag_bumper_back" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_80s_hatch1_" + color + "_mirror_L", 40 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_80s_hatch1_" + color + "_mirror_R", 40 );
			destructible_physics();
}

vehicle_80s_hatch2( color )
{
	//---------------------------------------------------------------------
	// 80's hatchback 2
	//---------------------------------------------------------------------
	destructible_create( "vehicle_80s_hatch2_" + color, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 12, 0.2, 150, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_80s_hatch2_" + color + "_destroyed", undefined, 32, "no_melee" );
		// Hood
		tag = "tag_hood";
		destructible_part( tag, "vehicle_80s_hatch2_" + color + "_hood", 800, undefined, undefined, undefined, 1.0, 1.5 );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_80s_hatch2_" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_80s_hatch2_" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
		destructible_part( "tag_door_right_front", "vehicle_80s_hatch2_" + color + "_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Left )
		tag = "tag_light_left_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Right )
		tag = "tag_light_right_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Bumpers
		destructible_part( "tag_bumper_front" );
		destructible_part( "tag_bumper_back" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_80s_hatch2_" + color + "_mirror_L", 40 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_80s_hatch2_" + color + "_mirror_R", 40 );
			destructible_physics();
}

vehicle_80s_wagon1( color )
{
	//---------------------------------------------------------------------
	// 80's wagon
	//---------------------------------------------------------------------
	destructible_create( "vehicle_80s_wagon1_" + color, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 12, 0.2, 150, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_80s_wagon1_" + color + "_destroyed", undefined, 32, "no_melee" );
		// Hood
		tag = "tag_hood";
		destructible_part( tag, "vehicle_80s_wagon1_" + color + "_hood", 800, undefined, undefined, undefined, 1.0, 1.5 );
		// Tires
		destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", "vehicle_80s_wagon1_" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_80s_wagon1_" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
		destructible_part( "tag_door_left_back", undefined, undefined, undefined, undefined, undefined, 1.0 );
		destructible_part( "tag_door_right_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
		destructible_part( "tag_door_right_back", "vehicle_80s_wagon1_" + color + "_door_RB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back 2 )
		tag = "tag_glass_left_back2";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back2_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back 2 )
		tag = "tag_glass_right_back2";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back2_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Left )
		tag = "tag_light_left_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Right )
		tag = "tag_light_right_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Bumpers
		destructible_part( "tag_bumper_front", "vehicle_80s_wagon1_" + color + "_bumper_F", undefined, undefined, undefined, undefined, 1.0, 0.7 );
		destructible_part( "tag_bumper_back", undefined, undefined, undefined, undefined, undefined, undefined, 0.6 );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_80s_wagon1_" + color + "_mirror_L", 40 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_80s_wagon1_" + color + "_mirror_R", 40 );
			destructible_physics();
}

vehicle_small_hatch( color )
{
	//---------------------------------------------------------------------
	// small hatch
	//---------------------------------------------------------------------
	destructible_create( "vehicle_small_hatch_" + color, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 150, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_small_hatch_" + color + "_destroyed", undefined, 32, "no_melee" );
		// Hood
		tag = "tag_hood";
		destructible_part( tag, "vehicle_small_hatch_" + color + "_hood", 800, undefined, undefined, undefined, 1.0, 1.5 );
		// Tires
		destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_front", "vehicle_small_hatch_" + color + "_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_right_front", "vehicle_small_hatch_" + color + "_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Left )
		tag = "tag_light_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Right )
		tag = "tag_light_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Bumpers
		destructible_part( "tag_bumper_front", undefined, undefined, undefined, undefined, undefined, 1.0 );
		destructible_part( "tag_bumper_back", undefined, undefined, undefined, undefined, undefined, 0.5 );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_small_hatch_" + color + "_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_small_hatch_" + color + "_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_pickup( destructibleType )
{
	//---------------------------------------------------------------------
	// White Pickup Truck
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 300, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_pickup_destroyed", undefined, 32, "no_melee" );
		// Hood
		tag = "tag_hood";
		destructible_part( tag, "vehicle_pickup_hood", 800, undefined, undefined, undefined, 1.0, 2.5 );
		// Tires
		destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_front", "vehicle_pickup_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_right_front", "vehicle_pickup_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Left )
		tag = "tag_light_left_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Tail Light ( Right )
		tag = "tag_light_right_back";
		destructible_part( tag, undefined, 20 );
			destructible_fx( tag, "props/car_glass_brakelight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Bumpers
		destructible_part( "tag_bumper_front", undefined, undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_bumper_back", undefined, undefined, undefined, undefined, undefined, undefined, 1.0 );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_pickup_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_pickup_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_hummer( destructibleType )
{	
	//---------------------------------------------------------------------
	// Hummer
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 400, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_deathfx", "explosions/vehicle_explosion_hummer", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_hummer_destroyed", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
}

vehicle_bm21( destructibleType, destroyedModel )
{
	//---------------------------------------------------------------------
	// BM21
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 300, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_deathfx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, destroyedModel, undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
}

vehicle_moving_truck( destructibleType )
{
	//---------------------------------------------------------------------
	// White Moving Truck
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 300, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/vehicle_explosion_medium", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_moving_truck_dst", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Bumpers
		//destructible_part( "tag_bumper_front", undefined, undefined, undefined, undefined, undefined, 1.0, 1.0 );
		//destructible_part( "tag_bumper_back", undefined, undefined, undefined, undefined, undefined, undefined, 1.0 );
}

vehicle_luxurysedan( color )
{
	//---------------------------------------------------------------------
	// Luxury Sedan
	//---------------------------------------------------------------------
	destructible_create( "vehicle_luxurysedan_2008" + color, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
				destructible_car_alarm();
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 210, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_luxurysedan_2008" + color + "_destroy", undefined, 32, "no_melee" );
		// Hood
		tag = "tag_hood";
		destructible_part( tag, "vehicle_luxurysedan_2008" + color + "_hood", 800, undefined, undefined, undefined, 1.0, 2.5 );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_luxurysedan_2008" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		destructible_part( "left_wheel_02_jnt", "vehicle_luxurysedan_2008" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		destructible_part( "right_wheel_01_jnt", "vehicle_luxurysedan_2008" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		destructible_part( "right_wheel_02_jnt", "vehicle_luxurysedan_2008" + color + "_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		// Doors
		destructible_part( "tag_door_left_front", "vehicle_luxurysedan_2008" + color + "_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_right_front", "vehicle_luxurysedan_2008" + color + "_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_left_back", "vehicle_luxurysedan_2008" + color + "_door_LB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_right_back", "vehicle_luxurysedan_2008" + color + "_door_RB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_luxurysedan_2008" + color + "_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_luxurysedan_2008" + color + "_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}


vehicle_mig29_landed( destructibleType )
{
	//---------------------------------------------------------------------
	// Mig 29 Landed Airplane
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "TAG_ORIGIN", 250, undefined, 32, "splash" );
		destructible_splash_damage_scaler( 11 );
				destructible_loopfx( "TAG_front_fire", "smoke/car_damage_whitesmoke", 0.4 );
				destructible_loopfx( "TAG_rear_fire", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "splash" );
				destructible_loopfx( "TAG_front_fire", "smoke/car_damage_blacksmoke", 0.4 );
				destructible_loopfx( "TAG_rear_fire", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "splash" );
				destructible_loopfx( "TAG_front_fire", "smoke/airplane_damage_blacksmoke_fire", 0.4 );
				destructible_loopfx( "TAG_rear_fire", "smoke/airplane_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 512, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "splash" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "splash" );
				destructible_fx( "TAG_FX", "explosions/vehicle_explosion_mig29", false );
				destructible_sound( "car_explode" );
				destructible_explode( 8000, 10000, 512, 512, 50, 300, undefined, undefined, 0.4, 1000 );
				destructible_anim( %vehicle_mig29_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_mig29_destroy" );
			destructible_state( undefined, "vehicle_mig29_v2_dest", undefined, 32, "splash" );

		destructible_part( "TAG_COCKPIT", "vehicle_mig29_dest_cockpit", 40, undefined, undefined, undefined, undefined, 1.0 );
}

vehicle_mack_truck_short( color )
{
	//---------------------------------------------------------------------
	// Mack Truck
	//---------------------------------------------------------------------
	destructible_create( "vehicle_mack_truck_short_" + color, "tag_body", 250, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/mack_truck_damage_blacksmoke_fire", 0.4 );
				destructible_loopfx( "tag_gastank", "smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "mack_truck_flareup_med" );
				destructible_loopsound( "mack_truck_fire_med" );
				destructible_healthdrain( 15, 0.25, 300, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "mack_truck_fire_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_gastank", "smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
				destructible_fx( "tag_cab_fire", "fire/firelp_med_pm" );
				destructible_fx( "tag_death_fx", "explosions/propane_large_exp", false );
				destructible_sound( "mack_truck_explode" );
				destructible_loopsound( "fire_metal_large" );
				destructible_explode( 8000, 10000, 512, 512, 100, 400, undefined, undefined, 0.4, 1000 );
				//destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_mack_truck_short_" + color + "_destroy", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_mack_truck_short_" + color + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 8.0 );
		destructible_part( "left_wheel_02_jnt", "vehicle_mack_truck_short_" + color + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 81.0 );
		destructible_part( "left_wheel_03_jnt", "vehicle_mack_truck_short_" + color + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 8.0 );
		// Doors
		destructible_part( "tag_door_left_front", "vehicle_mack_truck_short_" + color + "_door_lf", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "mack_truck_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
				destructible_sound( "mack_truck_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "mack_truck_glass_break_small" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "mack_truck_glass_break_small" );
			destructible_state( undefined );
}

vehicle_motorcycle( number )
{
	explode_anim = undefined;
  explode_anim = get_precached_anim( "vehicle_motorcycle_destroy_" + number );

	//---------------------------------------------------------------------
	// Motorcycle
	//---------------------------------------------------------------------
	destructible_create( "vehicle_motorcycle_" + number, "body_animate_jnt", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_death_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_death_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_death_fx", "smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 128, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 3000, 4000, 128, 150, 50, 300 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
				destructible_anim( explode_anim, #animtree, "setanimknob", undefined, undefined, "vehicle_motorcycle_destroy_" + number );
			destructible_state( undefined, "vehicle_motorcycle_" + number + "_destroy", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "front_wheel", "vehicle_motorcycle_01_front_wheel_d", 20, undefined, undefined, "no_melee", undefined, 1.7 );
//			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
//			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "rear_wheel", "vehicle_motorcycle_01_rear_wheel_d", 20, undefined, undefined, "no_melee", undefined, 1.7 );
//			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
//			destructible_sound( "veh_tire_deflate", "bullet" );
}

vehicle_subcompact( color )
{
	//---------------------------------------------------------------------
	// Modern Subcompact - shares textures with coupee and Van
	//---------------------------------------------------------------------
	destructible_create( "vehicle_subcompact_" + color, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 12, 0.2, 150, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, 0, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_subcompact_" + color + "_destroyed", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", "vehicle_subcompact_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_subcompact_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_back", "vehicle_subcompact_" + color + "_door_LB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_right_back", "vehicle_subcompact_" + color + "_door_RB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_subcompact_" + color + "_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_subcompact_" + color + "_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_van( color )
{
	//---------------------------------------------------------------------
	// Modern van - shares textures with Subcompact and Coupe
	//---------------------------------------------------------------------
	destructible_create( "vehicle_van_" + color, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 12, 0.2, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_van_" + color + "_destroyed", undefined, 32, "no_melee" );
		// Hood
		tag = "tag_hood";
		destructible_part( tag, "vehicle_van_" + color + "_hood", undefined, undefined, undefined, undefined, 1.0, 2.5 );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_van_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_van_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt",  undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_right_back", "vehicle_van_" + color + "_door_RB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back 2 )
		tag = "tag_glass_left_back_02";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_02_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back 2 )
		tag = "tag_glass_right_back_02";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_02_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_van_" + color + "_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_van_" + color + "_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_suburban( destructibleType, color )
{
	//---------------------------------------------------------------------
	// Suburban
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
				destructible_car_alarm();
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 12, 0.2, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 300, 300, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_suburban_destroyed" + color, undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt",  undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		destructible_part( "right_wheel_01_jnt", "vehicle_suburban_wheel_rf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		destructible_part( "left_wheel_02_jnt", "vehicle_suburban_wheel_rf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		destructible_part( "right_wheel_02_jnt",  undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		// Doors
		destructible_part( "tag_door_left_back", "vehicle_suburban_door_lb" + color, undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Center Divider )
		tag = "tag_center_glass";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag + "_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Left Back 2 )
		tag = "tag_glass_left_back_02";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_02_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Right Back 2 )
		tag = "tag_glass_right_back_02";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_02_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_car_alarm();
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_car_alarm();
			destructible_state( tag + "_d" );
}

vehicle_snowmobile( destructibleType )
{
	//---------------------------------------------------------------------
	// Snowmobile
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/snowmobile_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 150, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 150, 150, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( get_precached_anim( "vehicle_snowmobile_destroy_01" ), #animtree, "setanimknob", undefined, undefined, "vehicle_snowmobile_destroy_01" );
			destructible_state( undefined, "vehicle_snowmobile_destroyed", undefined, 32, "no_melee" );
		// Front Ski
		tag = "right_wheel_01_jnt";
		destructible_part( tag, "vehicle_snowmobile_ski_right", 800, undefined, undefined, undefined, 1.0, 2.5 );
		// Bags
		destructible_part( "TAG_BAG_CENTER", "vehicle_snowmobile_bag_center", undefined, undefined, undefined, undefined, 1.0, 2.0 );
		destructible_part( "TAG_BAG_LEFT", "vehicle_snowmobile_bag_left", undefined, undefined, undefined, undefined, 1.0, 2.0 );
		destructible_part( "TAG_BAG_RIGHT", "vehicle_snowmobile_bag_right", undefined, undefined, undefined, undefined, 1.0, 2.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
}

destructible_gaspump( destructibleType )
{
	//---------------------------------------------------------------------
	// Gas Pump 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 150, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 15 );
				destructible_loopfx( "tag_death_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_death_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_death_fx", "fire/gas_pump_fire_damage", .4 );
				destructible_sound( "gaspump01_flareup_med" );
				destructible_loopsound( "gaspump01_fire_med" );
				destructible_healthdrain( 12, 0.2, 210, "allies" );
			destructible_state( undefined, undefined, 300, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_death_fx", "fire/gas_pump_fire_damage", .4 );
				destructible_loopsound( "gaspump01_fire_med" );
				destructible_healthdrain( 12, 0.2, 210, "allies" );
				destructible_sound( "gaspump01_flareup_med" );
				destructible_loopfx( "tag_fx", "fire/gas_pump_fire_handle", 0.05 );
				destructible_anim( %gaspump01_hose, #animtree, "setanimknob", undefined, undefined, "gaspump01_hose" );
			destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/gas_pump_exp", false );
				destructible_sound( "gaspump01_explode" );
				destructible_explode( 6000, 8000, 210, 300, 50, 300, undefined, undefined, 0.3, 500 );
			destructible_state( undefined, "furniture_gaspump01_destroyed", undefined, undefined, "no_melee" );

		// Large Front Bottom panel
		destructible_part( "tag_panel_front01", "furniture_gaspump01_panel01", 80, undefined, undefined, undefined, 1.0, 1.0, undefined, 1.0 );
			destructible_physics();
		// Medium Front Middle panel
		destructible_part( "tag_panel_front02", "furniture_gaspump01_panel02", 40, undefined, undefined, undefined, 1.0, 1.0 );
			destructible_physics();
		// Small Front Top Panel
		destructible_part( "tag_panel_front03", "furniture_gaspump01_panel03", 40, undefined, undefined, undefined, 1.0, 1.0 );
			destructible_sound( "exp_gaspump_sparks" );
			destructible_fx( "tag_panel_front03", "props/electricbox4_explode" );
			destructible_physics();

		// Large Back Bottom panel
		destructible_part( "tag_panel_back01", "furniture_gaspump01_panel01", 110, undefined, undefined, undefined, 1.0, 1.0, undefined, 1.0 );
			destructible_physics();
		// Medium Back Middle panel
		destructible_part( "tag_panel_back02", "furniture_gaspump01_panel02", 40, undefined, undefined, undefined, 1.0, 1.0 );
			destructible_physics();
		// Small Back Top Panel
		destructible_part( "tag_panel_back03", "furniture_gaspump01_panel03", 40, undefined, undefined, undefined, 1.0, 1.0 );
			destructible_sound( "exp_gaspump_sparks" );
			destructible_fx( "tag_panel_back03", "props/electricbox4_explode" );
			destructible_physics();

}

destructible_electrical_transformer_large( destructibleType )
{
	//---------------------------------------------------------------------
	// Electrical transformer 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 1500, undefined, 32, "no_melee" );
		destructible_splash_damage_scaler( 2 );
				destructible_loopsound( "electrical_transformer_sparks" );
				destructible_loopfx( "tag_fx", "explosions/electrical_transformer_spark_runner", 0.8 );
				destructible_healthdrain( 12, 0.2, 210, "allies" );
			destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
				destructible_loopsound( "electrical_transformer_sparks" );
				destructible_fx( "tag_fx_junction", "explosions/generator_sparks_c", false );
				destructible_loopfx( "tag_fx_junction", "fire/electrical_transformer_blacksmoke_fire", 0.4 );
				destructible_loopfx( "tag_fx", "explosions/electrical_transformer_spark_runner", 0.8 );
				destructible_healthdrain( 12, 0.2, 210, "allies" );
			destructible_state( undefined, undefined, 300, undefined, 32, "no_melee" );
				destructible_loopsound( "electrical_transformer_sparks" );
				destructible_loopfx( "tag_fx_junction", "fire/electrical_transformer_blacksmoke_fire", 0.4 );
				destructible_loopfx( "tag_fx", "explosions/electrical_transformer_spark_runner", 0.8 );
				destructible_loopfx( "tag_fx_valve", "explosions/generator_spark_runner", 0.6 );
				destructible_healthdrain( 12, 0.2, 210, "allies" );
			destructible_state( undefined, undefined, 500, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/electrical_transformer_explosion", false );
				destructible_sound( "electrical_transformer01_explode" );
				destructible_explode( 6000, 8000, 210, 300, 20, 300, undefined, undefined, 0.3, 500 );
			destructible_state( undefined, "com_electrical_transformer_large_des", undefined, undefined, "no_melee" );

		// door 1
		destructible_part( "tag_door1", "com_electrical_transformer_large_dam_door1", 1500, undefined, undefined, undefined, 0, 1.0, undefined, 1  );
			destructible_sound( "electrical_transformer01_explode_detail" );
			destructible_fx( "tag_door1", "explosions/generator_explosion" );
			destructible_physics();
			
		// door 2
		destructible_part( "tag_door2", "com_electrical_transformer_large_dam_door2", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
			destructible_physics();

		// door 3
		destructible_part( "tag_door3", "com_electrical_transformer_large_dam_door3", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
			destructible_physics();

		// door 4
		destructible_part( "tag_door4", "com_electrical_transformer_large_dam_door4", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
			destructible_physics();

		// door 5
		destructible_part( "tag_door5", "com_electrical_transformer_large_dam_door5", 1500, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
			destructible_sound( "electrical_transformer01_explode_detail" );
			destructible_fx( "tag_door5", "explosions/generator_explosion" );
			destructible_physics();

		// door 6
		destructible_part( "tag_door6", "com_electrical_transformer_large_dam_door6", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
			destructible_physics();

		// door 7
		destructible_part( "tag_door7", "com_electrical_transformer_large_dam_door7", 150, undefined, undefined, undefined, 0, 1.0, undefined, 1 );
			destructible_loopsound( "electrical_transformer_sparks" );
			destructible_fx( "tag_door7", "props/electricbox4_explode" );
			destructible_physics();

}


get_precached_anim( animname )
{
	println( animname );
	assertEX( isdefined( level._destructible_preanims ) && isdefined( level._destructible_preanims[ animname ] ),"Can't find destructible anim: "+animname+" check the Build Precache Scripts and Repackage Zone boxes In launcher when you compile your map. " );
	return level._destructible_preanims[ animname ];
}

#using_animtree ( "vehicles" );


vehicle_coupe( color )
{
	//---------------------------------------------------------------------
	// Modern coupe - shares textures with Subcompact and Van
	//---------------------------------------------------------------------
	destructible_create( "vehicle_coupe_" + color, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 12, 0.2, 150, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 150, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_coupe_" + color + "_destroyed", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_coupe_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_front", "vehicle_coupe_" + color + "_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Spoiler (rear)
		destructible_part( "tag_spoiler", "vehicle_coupe_" + color + "_spoiler", undefined, undefined, undefined, undefined, 1.0, 2.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
			destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
			destructible_fx( tag, "props/car_glass_headlight" );
			destructible_sound( "veh_glass_break_small" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_coupe_" + color + "_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_coupe_" + color + "_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();

}

vehicle_uaz_winter( destructibleType )
{
	//---------------------------------------------------------------------
	// UAZ - Winter Version
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_uaz_winter_destroy", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee", undefined, 1.0 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee", undefined, 10.0 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back 2 )
		tag = "tag_glass_left_back_02";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_02_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back 2 )
		tag = "tag_glass_right_back_02";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_02_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_uaz_winter_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_uaz_winter_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_uaz_fabric( destructibleType )
{
	//---------------------------------------------------------------------
	// UAZ - Winter Version
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_uaz_fabric_dsr", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_uaz_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_uaz_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_uaz_hardtop( destructibleType )
{
	//---------------------------------------------------------------------
	// UAZ - Winter Version
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_uaz_hardtop_dsr", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_uaz_wheel_RF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back 2 )
		tag = "tag_glass_left_back2";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back2_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back 2 )
		tag = "tag_glass_right_back2";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back2_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_uaz_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_uaz_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_uaz_open( destructibleType )
{
	//---------------------------------------------------------------------
	// UAZ - Open Version
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_uaz_open_dsr", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_uaz_wheel_LF_d", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim", true );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back 2 )
		tag = "tag_glass_left_back_02";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_02_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back 2 )
		tag = "tag_glass_right_back_02";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_02_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_uaz_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_uaz_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_policecar( destructibleType )
{
	//---------------------------------------------------------------------
	// Police Car
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode_police" );
				destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_policecar_lapd_destroy", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_policecar_lapd_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", "vehicle_policecar_lapd_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_policecar_lapd_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_policecar_lapd_wheel_LF", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_front", "vehicle_policecar_lapd_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_right_front", "vehicle_policecar_lapd_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_left_back", "vehicle_policecar_lapd_door_LB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Center Divider )
		tag = "tag_center_glass";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "TAG_CENTER_GLASS_FX", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_policecar_lapd_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_policecar_lapd_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_policecar_russia( destructibleType )
{
	//---------------------------------------------------------------------
	// Police Car
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode_police" );
				destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_policecar_russia_destroy", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_policecar_russia_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "left_wheel_02_jnt", "vehicle_policecar_russia_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_01_jnt", "vehicle_policecar_russia_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		destructible_part( "right_wheel_02_jnt", "vehicle_policecar_russia_wheel_LF", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
		// Doors
		destructible_part( "tag_door_left_front", "vehicle_policecar_russia_door_LF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_right_front", "vehicle_policecar_russia_door_RF", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		destructible_part( "tag_door_left_back", "vehicle_policecar_russia_door_LB", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Center Divider )
		tag = "tag_center_glass";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "TAG_CENTER_GLASS_FX", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_policecar_russia_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_policecar_russia_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

vehicle_taxi( destructibleType )
{
	//---------------------------------------------------------------------
	// Taxi with random roof ads
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
					random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_1" );
					random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_2" );
					random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_3" );
					random_dynamic_attachment( "tag_ad", "vehicle_taxi_rooftop_ad_base", "vehicle_taxi_rooftop_ad_4" );
					random_dynamic_attachment( "tag_ad", "vehicle_taxi_toplight", undefined, "taxi_ad_clip" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
				destructible_car_alarm();
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "vehicle_taxi_yellow_destroy", undefined, 32, "no_melee" );
		// Tires
		destructible_part( "left_wheel_01_jnt", "vehicle_taxi_wheel_LF", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_LF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		destructible_part( "left_wheel_02_jnt", "vehicle_taxi_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_LB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		destructible_part( "right_wheel_01_jnt", "vehicle_taxi_wheel_LF", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		destructible_part( "right_wheel_02_jnt", "vehicle_taxi_wheel_LF", 20, undefined, undefined, "no_melee" );
			destructible_anim( %vehicle_80s_sedan1_flattire_RB, #animtree, "setanim" );
			destructible_sound( "veh_tire_deflate", "bullet" );
			destructible_car_alarm();
		// Glass ( Front )
		tag = "tag_glass_front";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_front_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Back )
		tag = "tag_glass_back";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_back_fx", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Center Divider )
		tag = "tag_center_glass";
		destructible_part( tag, undefined, 40, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "TAG_CENTER_GLASS_FX", "props/car_glass_large" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Left Back )
		tag = "tag_glass_left_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Glass ( Right Back )
		tag = "tag_glass_right_back";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_back_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
				destructible_car_alarm();
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Side Mirrors
		destructible_part( "tag_mirror_left", "vehicle_taxi_mirror_L", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
		destructible_part( "tag_mirror_right", "vehicle_taxi_mirror_R", 40, undefined, undefined, undefined, undefined, 1.0 );
			destructible_physics();
}

t5_vehicle_ultimate_jeep_pristine( destructibleType )
{
	//---------------------------------------------------------------------
	// Black Ops Jeep - Nuketown
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_body", 250, undefined, 32, "no_melee" );
		//destructible_splash_damage_scaler( 18 );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_whitesmoke", 0.4 );
			destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke", 0.4 );
			destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
				destructible_loopfx( "tag_hood_fx", "smoke/car_damage_blacksmoke_fire", 0.4 );
				destructible_sound( "fire_vehicle_flareup_med" );
				destructible_loopsound( "fire_vehicle_med" );
				destructible_healthdrain( 15, 0.25, 210, "allies" );
			destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
				destructible_loopsound( "fire_vehicle_med" );
			destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
				destructible_fx( "tag_death_fx", "explosions/small_vehicle_explosion", false );
				destructible_sound( "car_explode" );
				destructible_explode( 4000, 5000, 200, 250, 50, 300, undefined, undefined, 0.3, 500 );
				destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
			destructible_state( undefined, "t5_veh_ultimate_jeep_d", undefined, 32, "no_melee" );
			
		// Tires
			destructible_part( "right_wheel_01_jnt", "t5_vehicle_ultimate_jeep_wheel_rf", 20, undefined, undefined, "no_melee", undefined, 1.7 );
			destructible_anim( %vehicle_80s_sedan1_flattire_RF, #animtree, "setanim" );
		destructible_sound( "veh_tire_deflate", "bullet" );
		// Glass ( Left Front )
		tag = "tag_glass_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_left_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
			
		// Glass ( Right Front )
		tag = "tag_glass_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, undefined, undefined, true );
			destructible_state( tag + "_d", undefined, 60, undefined, undefined, undefined, true );
				destructible_fx( "tag_glass_right_front_fx", "props/car_glass_med" );
				destructible_sound( "veh_glass_break_large" );
			destructible_state( undefined );
		// Head Light ( Left )
		tag = "tag_light_left_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Head Light ( Right )
		tag = "tag_light_right_front";
		destructible_part( tag, undefined, 20, undefined, undefined, undefined, 0.5 );
				destructible_fx( tag, "props/car_glass_headlight" );
				destructible_sound( "veh_glass_break_small" );
			destructible_state( tag + "_d" );
		// Doors
				destructible_part( "tag_door_left_front", "t5_veh_ultimate_door_lf", undefined, undefined, undefined, undefined, 1.0, 1.0 );
			destructible_part( "tag_door_right_front", "t5_veh_ultimate_door_rf", undefined, undefined, undefined, undefined, 1.0, 1.0 );
		// Bumpers
				destructible_part( "tag_bumper_front", "t5_veh_ultimate_bumper_F", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}