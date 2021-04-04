main()
{
	maps\mp\mp_shipment_fx::main();
	maps\createart\mp_shipment_art::main();
	maps\createfx\mp_shipment_fx::main();
	maps\mp\_load::main();
	
	maps\mp\_compass::setupMiniMap("compass_map_mp_shipment");
	
	ambientPlay("ambient_trainer_ext2"); //TODO: get proper ambient

	game["attackers"] = "axis";
	game["defenders"] = "allies";

	setdvar( "r_specularcolorscale", "1.7" );
	setdvar( "r_diffusecolorscale", "1.3" );

	setdvar("compassmaxrange","1400");
	
	level thread deleteChaModels();
}

deleteChaModels()
{	
	count = 0;
	count2 = 0;
	count3 = 0;
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
	
	// ---- DELETING GAMETYPE OBJECTS ----
	
	foreach( ent in dmSpawns )
	{
		count2++;
		if (count2 > 7)
		{
			dmSpawns[count2] Delete();
		}
	}
	
	flagRemoveAllies[0] Delete();
	flagTrigRemoveAllies[0] Delete();
	flagZoneRemoveAllies[0] Delete();
	flagRemoveAxis[0] Delete();
	flagTrigRemoveAxis[0] Delete();
	flagZoneRemoveAxis[0] Delete();
	foreach( ent in domSpawns )
	{
		count++;
		if (count > 7)
		{
			domSpawns[count] Delete();
		}
	}
	
	ddbombzonesTouchAB[0] Delete();
	ddbombzonesTouchAB[1] Delete();
	ddbombzonesModelA[0] Delete();
	ddbombzonesTrigA[0] Delete();
	ddbombzonesModelB[0] Delete();
	ddbombzonesTrigB[0] Delete();
	universalExploderAB[8] Delete();
	universalExploderAB[9] Delete();
	ddbombzonesCollA[0] Delete();
	ddbombzonesCollB[0] Delete();
	
	flagPrimary[0] Delete();
	flagPrimary[1] Delete();
	flagPrimary[2] Delete();
	flagDescriptor[0] Delete();
	flagDescriptor[1] Delete();
	flagDescriptor[2] Delete();
	
	sabbombzonesColl[0] Delete();
	sabbombzonesColl[1] Delete();
	sabbombzonesTouchAllies[0] Delete();
	sabbombzonesDefuseAllies[0] Delete();
	sabbombzonesSiteModelAllies[0] Delete();
	sabbombzonesTouchAxis[0] Delete();
	sabbombzonesDefuseAxis[0] Delete();
	sabbombzonesSiteModelAxis[0] Delete();
	universalExploderAB[4] Delete();
	universalExploderAB[5] Delete();
	
	bombzonesTouchAB[0] Delete();
	bombzonesTouchAB[1] Delete();
	universalExploderAB[0] Delete();
	universalExploderAB[1] Delete();
	bombzonesCollAB[0] Delete();
	bombzonesCollAB[1] Delete();
	bombzonesModelA[0] Delete();
	bombzonesModelB[0] Delete();
	bombzonesTrigA[0] Delete();
	bombzonesTrigB[0] Delete();
	bombzonesBrief[0] Delete();
	bombzonesBriefTrig[0] Delete();
	
	foreach( ent in tdmSpawns )
	{
		count3++;
		if (count3 > 7)
		{
			tdmSpawns[count3] Delete();
		}
	}
	
	
	// - Removing the barrels -
	
	chaRemove = getEntArray ( "cha", "targetname" );
	
	foreach( ent in chaRemove )
	{
		ent Delete();
	}
	
	globalIntermission[0] Delete();
}