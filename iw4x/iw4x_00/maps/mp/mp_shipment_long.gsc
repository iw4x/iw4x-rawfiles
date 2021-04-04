main()
{
	maps\mp\mp_shipment_long_fx::main();
	maps\createart\mp_shipment_long_art::main();
	maps\createfx\mp_shipment_long_fx::main();
	maps\mp\_load::main();
	
	maps\mp\_compass::setupMiniMap("compass_map_mp_shipment");
	
	ambientPlay("ambient_mp_rain");

	game["attackers"] = "axis";
	game["defenders"] = "allies";

	setdvar( "r_specularcolorscale", "1" );
	setdvar( "r_diffusecolorscale", "0.8" );

	setdvar("compassmaxrange", "1400");
	
	//Too lazy to set up Head Quarters!
	if ( getDvar( "g_gametype" ) != "koth" )
		level thread deleteChaModels();
	else
		level thread deleteBarrels();
}

deleteChaModels()
{	
	maps\mp\_compass::setupMiniMap("compass_map_mp_shipment_long");
	globalIntermission = getEntArray ( "mp_global_intermission", "targetname" );
	dmSpawns = getEntArray ( "mp_dm_spawn", "targetname" );
	domSpawns = getEntArray ( "mp_dom_spawn", "targetname" );
	tdmSpawns = getEntArray ( "mp_tdm_spawn", "targetname" );

	// ---- DEFINING GAMETYPE OBJECTS ----
	
	universalExploderAB = getEntArray ( "exploder", "targetname" );
	
	// - CTF -
	flagRemoveAllies = getEntArray ( "ctf_flag_allies", "targetname" );
	flagTrigRemoveAllies = getEntArray ( "ctf_trig_allies", "targetname" );
	flagZoneRemoveAllies = getEntArray ( "ctf_zone_allies", "targetname" );
	flagRemoveAxis = getEntArray ( "ctf_flag_axis", "targetname" );
	flagTrigRemoveAxis = getEntArray ( "ctf_trig_axis", "targetname" );
	flagZoneRemoveAxis = getEntArray ( "ctf_zone_axis", "targetname" );
	
	// - DD -
	ddbombzonesTouchAB = getEntArray ( "dd_bombzone", "targetname" );
	ddbombzonesModelA = getEntArray ( "pf408_auto1", "targetname" ) ;
	ddbombzonesTrigA = getEntArray ( "pf408_auto2", "targetname" );
	ddbombzonesModelB = getEntArray ( "pf409_auto1", "targetname" ) ;
	ddbombzonesTrigB = getEntArray ( "pf409_auto2", "targetname" );
	ddbombzonesCollA = getEntArray ( "dd_bombzone_clip_a", "targetname" );
	ddbombzonesCollB = getEntArray ( "dd_bombzone_clip_b", "targetname" );
	
	// - Dom -
	flagPrimary = getEntArray ( "flag_primary", "targetname" );
	flagDescriptor = getEntArray ("flag_descriptor", "targetname" );
	
	// - Sab -
	sabbombzonesColl = getEntArray ( "sab_bomb_col", "targetname" );
	sabbombzonesTouchAllies = getEntArray ( "sab_bomb_allies", "targetname" );
	sabbombzonesDefuseAllies = getEntArray ( "sab_bomb_defuse_allies", "targetname" );
	sabbombzonesSiteModelAllies = getEntArray ( "pf397_auto1", "targetname" );
	sabbombzonesTouchAxis = getEntArray ( "sab_bomb_axis", "targetname" );
	sabbombzonesDefuseAxis = getEntArray ( "sab_bomb_defuse_axis", "targetname" );
	sabbombzonesSiteModelAxis = getEntArray ( "pf398_auto1", "targetname" );
	
	// - SnD -
	bombzonesTouchAB = getEntArray ( "bombzone", "targetname" );
	bombzonesCollAB = getEntArray ( "bomb_col", "targetname" );
	bombzonesModelA = getEntArray ( "pf393_auto1", "targetname" );
	bombzonesTrigA = getEntArray ( "pf393_auto2", "targetname" );
	bombzonesModelB = getEntArray ( "pf394_auto1", "targetname" );
	bombzonesTrigB = getEntArray ( "pf394_auto2", "targetname" );
	bombzonesBrief = getEntArray ( "sd_bomb", "targetname" );
	bombzonesBriefTrig = getEntArray ( "sd_bomb_pickup_trig", "targetname" );
	
	dmSpawns[6] Delete();
	dmSpawns[7] Delete();
	
	flagRemoveAllies[1] Delete();
	flagTrigRemoveAllies[1] Delete();
	flagZoneRemoveAllies[1] Delete();
	flagRemoveAxis[1] Delete();
	flagTrigRemoveAxis[1] Delete();
	flagZoneRemoveAxis[1] Delete();
	
	ddbombzonesTouchAB[2] Delete();
	ddbombzonesTouchAB[3] Delete();
	ddbombzonesModelA[1] Delete();
	ddbombzonesTrigA[1] Delete();
	ddbombzonesModelB[1] Delete();
	ddbombzonesTrigB[1] Delete();
	universalExploderAB[10] Delete();
	universalExploderAB[11] Delete();
	ddbombzonesCollA[1] Delete();
	ddbombzonesCollB[1] Delete();
	
	flagPrimary[3] Delete();
	flagPrimary[4] Delete();
	flagPrimary[5] Delete();
	flagDescriptor[3] Delete();
	flagDescriptor[4] Delete();
	flagDescriptor[5] Delete();
	domSpawns[4] Delete();
	domSpawns[5] Delete();
	
	sabbombzonesColl[2] Delete();
	sabbombzonesColl[3] Delete();
	sabbombzonesTouchAllies[1] Delete();
	sabbombzonesDefuseAllies[1] Delete();
	sabbombzonesSiteModelAllies[1] Delete();
	sabbombzonesTouchAxis[1] Delete();
	sabbombzonesDefuseAxis[1] Delete();
	sabbombzonesSiteModelAxis[1] Delete();
	universalExploderAB[6] Delete();
	universalExploderAB[7] Delete();
	
	bombzonesTouchAB[2] Delete();
	bombzonesTouchAB[3] Delete();
	universalExploderAB[2] Delete();
	universalExploderAB[3] Delete();
	bombzonesCollAB[2] Delete();
	bombzonesCollAB[3] Delete();
	bombzonesModelA[1] Delete();
	bombzonesModelB[1] Delete();
	bombzonesTrigA[1] Delete();
	bombzonesTrigB[1] Delete();
	bombzonesBrief[1] Delete();
	bombzonesBriefTrig[1] Delete();
	
	tdmSpawns[4] Delete();
	tdmSpawns[5] Delete();
	
	chargeRemove = getEntArray ( "charge_remove", "targetname" );
	
	foreach( ent in chargeRemove )
	{
		ent Delete();
	}
		
	globalIntermission[1] Delete();
}

deleteBarrels()
{	
	globalIntermission = getEntArray ( "mp_global_intermission", "targetname" );
	chaRemove = getEntArray ( "cha", "targetname" );
	
	foreach( ent in chaRemove )
	{
		ent Delete();
	}
	
	globalIntermission[0] Delete();
}