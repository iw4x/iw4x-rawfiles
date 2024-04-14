#include maps\mp\_utility;

FACTION_REF_COL 					= 0;
FACTION_NAME_COL 					= 1;
FACTION_SHORT_NAME_COL 				= 2;
FACTION_ELIMINATED_COL 				= 3;
FACTION_FORFEITED_COL 				= 4;
FACTION_ICON_COL 					= 5;
FACTION_HUD_ICON_COL 				= 6;
FACTION_VOICE_PREFIX_COL 			= 7;
FACTION_SPAWN_MUSIC_COL 			= 8;
FACTION_WIN_MUSIC_COL 				= 9;
FACTION_FLAG_MODEL_COL 				= 10;
FACTION_FLAG_CARRY_MODEL_COL 		= 11;
FACTION_FLAG_ICON_COL 				= 12;
FACTION_FLAG_FX_COL 				= 13;
FACTION_COLOR_R_COL 				= 14;
FACTION_COLOR_G_COL 				= 15;
FACTION_COLOR_B_COL 				= 16;
FACTION_HEAD_ICON_COL 				= 17;
FACTION_CRATE_MODEL_COL 			= 18;

init()
{
	initScoreBoard();

	level.teamBalance = getDvarInt("scr_teambalance");
	level.maxClients = getDvarInt( "sv_maxclients" );

	level._effect["thermal_beacon"] = loadFx("misc/thermal_beacon_inverted");	
	effect = level._effect["thermal_beacon"];
	PrecacheFxTeamThermal( effect, "J_Spine4" );

	setPlayerModels();

	level.freeplayers = [];

	if( level.teamBased )
	{
		level thread onPlayerConnect();
		level thread updateTeamBalance();

		wait .15;
		level thread updatePlayerTimes();
	}
	else
	{
		level thread onFreePlayerConnect();

		wait .15;
		level thread updateFreePlayerTimes();
	}
}


initScoreBoard()
{
	setDvar("g_TeamName_Allies", getTeamShortName( "allies" ));
	setDvar("g_TeamIcon_Allies", getTeamIcon( "allies" ));
	setDvar("g_TeamIcon_MyAllies", getTeamIcon( "allies" ));
	setDvar("g_TeamIcon_EnemyAllies", getTeamIcon( "allies" ));
	scoreColor = getTeamColor( "allies" );	
	setDvar("g_ScoresColor_Allies", scoreColor[0] + " " + scoreColor[1] + " " + scoreColor[2] );

	setDvar("g_TeamName_Axis", getTeamShortName( "axis" ));
	setDvar("g_TeamIcon_Axis", getTeamIcon( "axis" ));
	setDvar("g_TeamIcon_MyAxis", getTeamIcon( "axis" ));
	setDvar("g_TeamIcon_EnemyAxis", getTeamIcon( "axis" ));
	scoreColor = getTeamColor( "axis" );	
	setDvar("g_ScoresColor_Axis", scoreColor[0] + " " + scoreColor[1] + " " + scoreColor[2] );

	setdvar("g_ScoresColor_Spectator", ".25 .25 .25");
	setdvar("g_ScoresColor_Free", ".76 .78 .10");
	setdvar("g_teamColor_MyTeam", ".6 .8 .6" );
	setdvar("g_teamColor_EnemyTeam", "1 .45 .5" );
	setdvar("g_teamTitleColor_MyTeam", ".6 .8 .6" );
	setdvar("g_teamTitleColor_EnemyTeam", "1 .45 .5" );	
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill( "connected", player );

		player thread onJoinedTeam();
		player thread onJoinedSpectators();
		player thread onPlayerSpawned();

		player thread trackPlayedTime();
	}
}


onFreePlayerConnect()
{
	for(;;)
	{
		level waittill( "connected", player );

		player thread trackFreePlayedTime();
	}
}


onJoinedTeam()
{
	self endon("disconnect");

	for(;;)
	{
		self waittill( "joined_team" );
		//self logString( "joined team: " + self.pers["team"] );
		self updateTeamTime();
	}
}


onJoinedSpectators()
{
	self endon("disconnect");

	for(;;)
	{
		self waittill("joined_spectators");
		self.pers["teamTime"] = undefined;
	}
}


trackPlayedTime()
{
	self endon( "disconnect" );

	self.timePlayed["allies"] = 0;
	self.timePlayed["axis"] = 0;
	self.timePlayed["free"] = 0;
	self.timePlayed["other"] = 0;
	self.timePlayed["total"] = 0;

	gameFlagWait( "prematch_done" );

	for ( ;; )
	{
		if ( game["state"] == "playing" )
		{
			if ( self.sessionteam == "allies" )
			{
				self.timePlayed["allies"]++;
				self.timePlayed["total"]++;
			}
			else if ( self.sessionteam == "axis" )
			{
				self.timePlayed["axis"]++;
				self.timePlayed["total"]++;
			}
			else if ( self.sessionteam == "spectator" )
			{
				self.timePlayed["other"]++;
			}

		}

		wait ( 1.0 );
	}
}


updatePlayerTimes()
{
	if ( !level.rankedmatch )
		return;
	
	level endon( "game_ended" );
	
	for ( ;; )
	{
		foreach ( player in level.players )
			player updatePlayedTime();

		wait( 1.0 );
	}
}


updatePlayedTime()
{
	if ( !self rankingEnabled() )
		return;

	if ( self.timePlayed["allies"] )
	{
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedAllies", self.timePlayed["allies"] );
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedTotal", self.timePlayed["allies"] );
		self maps\mp\gametypes\_persistence::statAddChildBuffered( "round", "timePlayed", self.timePlayed["allies"] );
	}

	if ( self.timePlayed["axis"] )
	{
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedOpfor", self.timePlayed["axis"] );
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedTotal", self.timePlayed["axis"] );
		self maps\mp\gametypes\_persistence::statAddChildBuffered( "round", "timePlayed", self.timePlayed["axis"] );
	}

	if ( self.timePlayed["other"] )
	{
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedOther", self.timePlayed["other"] );
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedTotal", self.timePlayed["other"] );
		self maps\mp\gametypes\_persistence::statAddChildBuffered( "round", "timePlayed", self.timePlayed["other"] );
	}

	if ( game["state"] == "postgame" )
		return;

	self.timePlayed["allies"] = 0;
	self.timePlayed["axis"] = 0;
	self.timePlayed["other"] = 0;
}


updateTeamTime()
{
	if ( game["state"] != "playing" )
		return;

	self.pers["teamTime"] = getTime();
}


updateTeamBalanceDvar()
{
	for(;;)
	{
		teambalance = getdvarInt("scr_teambalance");
		if(level.teambalance != teambalance)
			level.teambalance = getdvarInt("scr_teambalance");

		wait 1;
	}
}


updateTeamBalance()
{
	level.teamLimit = level.maxclients / 2;

	level thread updateTeamBalanceDvar();

	wait .15;

	if ( level.teamBalance && isRoundBased() )
	{
    	if( isDefined( game["BalanceTeamsNextRound"] ) )
    		iPrintLnbold( &"MP_AUTOBALANCE_NEXT_ROUND" );

		// TODO: add or change
		level waittill( "restarting" );

		if( isDefined( game["BalanceTeamsNextRound"] ) )
		{
			level balanceTeams();
			game["BalanceTeamsNextRound"] = undefined;
		}
		else if( !getTeamBalance() )
		{
			game["BalanceTeamsNextRound"] = true;
		}
	}
	else
	{
		level endon ( "game_ended" );
		for( ;; )
		{
			if( level.teamBalance )
			{
				if( !getTeamBalance() )
				{
					iPrintLnBold( &"MP_AUTOBALANCE_SECONDS", 15 );
				    wait 15.0;

					if( !getTeamBalance() )
						level balanceTeams();
				}

				wait 59.0;
			}

			wait 1.0;
		}
	}

}


getTeamBalance()
{
	level.team["allies"] = 0;
	level.team["axis"] = 0;

	players = level.players;
	for(i = 0; i < players.size; i++)
	{
		if((isdefined(players[i].pers["team"])) && (players[i].pers["team"] == "allies"))
			level.team["allies"]++;
		else if((isdefined(players[i].pers["team"])) && (players[i].pers["team"] == "axis"))
			level.team["axis"]++;
	}

	if((level.team["allies"] > (level.team["axis"] + level.teamBalance)) || (level.team["axis"] > (level.team["allies"] + level.teamBalance)))
		return false;
	else
		return true;
}


balanceTeams()
{
	iPrintLnBold( game["strings"]["autobalance"] );
	//Create/Clear the team arrays
	AlliedPlayers = [];
	AxisPlayers = [];

	// Populate the team arrays
	players = level.players;
	for(i = 0; i < players.size; i++)
	{
		if(!isdefined(players[i].pers["teamTime"]))
			continue;

		if((isdefined(players[i].pers["team"])) && (players[i].pers["team"] == "allies"))
			AlliedPlayers[AlliedPlayers.size] = players[i];
		else if((isdefined(players[i].pers["team"])) && (players[i].pers["team"] == "axis"))
			AxisPlayers[AxisPlayers.size] = players[i];
	}

	MostRecent = undefined;

	while((AlliedPlayers.size > (AxisPlayers.size + 1)) || (AxisPlayers.size > (AlliedPlayers.size + 1)))
	{
		if(AlliedPlayers.size > (AxisPlayers.size + 1))
		{
			// Move the player that's been on the team the shortest ammount of time (highest teamTime value)
			for(j = 0; j < AlliedPlayers.size; j++)
			{
				if(isdefined(AlliedPlayers[j].dont_auto_balance))
					continue;

				if(!isdefined(MostRecent))
					MostRecent = AlliedPlayers[j];
				else if(AlliedPlayers[j].pers["teamTime"] > MostRecent.pers["teamTime"])
					MostRecent = AlliedPlayers[j];
			}

			MostRecent [[level.axis]]();
		}
		else if(AxisPlayers.size > (AlliedPlayers.size + 1))
		{
			// Move the player that's been on the team the shortest ammount of time (highest teamTime value)
			for(j = 0; j < AxisPlayers.size; j++)
			{
				if(isdefined(AxisPlayers[j].dont_auto_balance))
					continue;

				if(!isdefined(MostRecent))
					MostRecent = AxisPlayers[j];
				else if(AxisPlayers[j].pers["teamTime"] > MostRecent.pers["teamTime"])
					MostRecent = AxisPlayers[j];
			}

			MostRecent [[level.allies]]();
		}

		MostRecent = undefined;
		AlliedPlayers = [];
		AxisPlayers = [];

		players = level.players;
		for(i = 0; i < players.size; i++)
		{
			if((isdefined(players[i].pers["team"])) && (players[i].pers["team"] == "allies"))
				AlliedPlayers[AlliedPlayers.size] = players[i];
			else if((isdefined(players[i].pers["team"])) &&(players[i].pers["team"] == "axis"))
				AxisPlayers[AxisPlayers.size] = players[i];
		}
	}
}


setGhillieModels( env )
{
	level.environment = env;

	switch ( env )
	{
		default:
		case "iw3":
			game["allies_model"]["GHILLIE"] = game["allies_model"]["SNIPER"];
			game["axis_model"]["GHILLIE"] = game["axis_model"]["SNIPER"];
			break;
	
		case "desert":
			mptype\mptype_ally_ghillie_desert::precache();
			mptype\mptype_opforce_ghillie_desert::precache();
			game["allies_model"]["GHILLIE"] = mptype\mptype_ally_ghillie_desert::main;
			game["axis_model"]["GHILLIE"] = mptype\mptype_opforce_ghillie_desert::main;
			break;
		case "arctic":
			mptype\mptype_ally_ghillie_arctic::precache();
			mptype\mptype_opforce_ghillie_arctic::precache();
			game["allies_model"]["GHILLIE"] = mptype\mptype_ally_ghillie_arctic::main;
			game["axis_model"]["GHILLIE"] = mptype\mptype_opforce_ghillie_arctic::main;
			break;
		case "urban":
			mptype\mptype_ally_ghillie_urban::precache();
			mptype\mptype_opforce_ghillie_urban::precache();
			game["allies_model"]["GHILLIE"] = mptype\mptype_ally_ghillie_urban::main;
			game["axis_model"]["GHILLIE"] = mptype\mptype_opforce_ghillie_urban::main;
			break;
		case "forest":
			mptype\mptype_ally_ghillie_forest::precache();
			mptype\mptype_opforce_ghillie_forest::precache();
			game["allies_model"]["GHILLIE"] = mptype\mptype_ally_ghillie_forest::main;
			game["axis_model"]["GHILLIE"] = mptype\mptype_opforce_ghillie_forest::main;
			break;
	}
}

setTeamModels( team, charSet )
{
	switch ( charSet )
	{
		case "seals_udt":
			mptype\mptype_seal_udt_sniper::precache();
			mptype\mptype_seal_udt_lmg::precache();
			mptype\mptype_seal_udt_assault::precache();
			mptype\mptype_seal_udt_shotgun::precache();
			mptype\mptype_seal_udt_smg::precache();
			mptype\mptype_seal_udt_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_seal_udt_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_seal_udt_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_seal_udt_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_seal_udt_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_seal_udt_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_seal_udt_riot::main;

			break;
		case "us_army":
			mptype\mptype_us_army_sniper::precache();
			mptype\mptype_us_army_lmg::precache();
			mptype\mptype_us_army_assault::precache();
			mptype\mptype_us_army_shotgun::precache();
			mptype\mptype_us_army_smg::precache();
			mptype\mptype_us_army_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_us_army_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_us_army_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_us_army_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_us_army_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_us_army_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_us_army_riot::main;

			break;
		case "opforce_composite":
			mptype\mptype_opforce_comp_assault::precache();
			mptype\mptype_opforce_comp_lmg::precache();
			mptype\mptype_opforce_comp_shotgun::precache();
			mptype\mptype_opforce_comp_smg::precache();
			mptype\mptype_opforce_comp_sniper::precache();
			mptype\mptype_opforce_comp_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_comp_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_opforce_comp_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_comp_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_comp_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_opforce_comp_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_opforce_comp_riot::main;

			break;
		case "opforce_arctic":
			mptype\mptype_opforce_arctic_assault::precache();
			mptype\mptype_opforce_arctic_lmg::precache();
			mptype\mptype_opforce_arctic_shotgun::precache();
			mptype\mptype_opforce_arctic_smg::precache();
			mptype\mptype_opforce_arctic_sniper::precache();
			mptype\mptype_opforce_arctic_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_arctic_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_opforce_arctic_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_arctic_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_arctic_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_opforce_arctic_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_opforce_arctic_riot::main;

			break;
		case "opforce_airborne":
			mptype\mptype_opforce_airborne_assault::precache();
			mptype\mptype_opforce_airborne_lmg::precache();
			mptype\mptype_opforce_airborne_shotgun::precache();
			mptype\mptype_opforce_airborne_smg::precache();
			mptype\mptype_opforce_airborne_sniper::precache();
			mptype\mptype_opforce_airborne_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_airborne_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_opforce_airborne_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_airborne_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_airborne_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_opforce_airborne_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_opforce_airborne_riot::main;

			break;
		case "militia":
			mptype\mptype_opforce_militia_assault::precache();
			mptype\mptype_opforce_militia_lmg::precache();
			mptype\mptype_opforce_militia_shotgun::precache();
			mptype\mptype_opforce_militia_smg::precache();
			mptype\mptype_opforce_militia_sniper::precache();
			mptype\mptype_opforce_militia_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_militia_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_opforce_militia_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_militia_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_militia_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_opforce_militia_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_opforce_militia_riot::main;

			break;
		case "socom_141":
			mptype\mptype_socom_assault::precache();
			mptype\mptype_socom_lmg::precache();
			mptype\mptype_socom_shotgun::precache();
			mptype\mptype_socom_smg::precache();
			mptype\mptype_socom_sniper::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_socom_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_socom_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_socom_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_socom_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_socom_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_socom_smg::main;

			break;
		case "socom_141_desert":
			mptype\mptype_tf141_desert_assault::precache();
			mptype\mptype_tf141_desert_lmg::precache();
			mptype\mptype_tf141_desert_smg::precache();
			mptype\mptype_tf141_desert_shotgun::precache();
			mptype\mptype_tf141_desert_sniper::precache();
			mptype\mptype_tf141_desert_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_tf141_desert_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_tf141_desert_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_tf141_desert_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_tf141_desert_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_tf141_desert_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_tf141_desert_riot::main;

			break;
		case "socom_141_forest":
			mptype\mptype_tf141_forest_assault::precache();
			mptype\mptype_tf141_forest_lmg::precache();
			mptype\mptype_tf141_forest_smg::precache();
			mptype\mptype_tf141_forest_shotgun::precache();
			mptype\mptype_tf141_forest_sniper::precache();
			mptype\mptype_tf141_forest_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_tf141_forest_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_tf141_forest_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_tf141_forest_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_tf141_forest_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_tf141_forest_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_tf141_forest_riot::main;

			break;
		case "socom_141_arctic":
			mptype\mptype_tf141_arctic_assault::precache();
			mptype\mptype_tf141_arctic_lmg::precache();
			mptype\mptype_tf141_arctic_smg::precache();
			mptype\mptype_tf141_arctic_shotgun::precache();
			mptype\mptype_tf141_arctic_sniper::precache();
			mptype\mptype_tf141_arctic_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_tf141_arctic_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_tf141_arctic_lmg::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_tf141_arctic_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_tf141_arctic_shotgun::main;
			game[team + "_model"]["SMG"] = mptype\mptype_tf141_arctic_smg::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_tf141_arctic_riot::main;

			break;
			
		// IW4x imported from MW3 

		case "iw3_opfor_desert":
			mptype\mptype_axis_sniper::precache();
			mptype\mptype_axis_support::precache();
			mptype\mptype_axis_rifleman::precache();
			mptype\mptype_axis_cqb::precache();
			mptype\mptype_axis_engineer::precache();
			mptype\mptype_opforce_comp_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_axis_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_axis_support::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_axis_rifleman::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_axis_cqb::main;
			game[team + "_model"]["SMG"] = mptype\mptype_axis_engineer::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_opforce_comp_riot::main;

			break; 


		case "iw3_sas_urban":
			mptype\mptype_ally_urban_sniper::precache();
			mptype\mptype_ally_urban_support::precache();
			mptype\mptype_ally_urban_assault::precache();
			mptype\mptype_ally_urban_specops::precache();
			mptype\mptype_ally_urban_recon::precache();
			mptype\mptype_seal_udt_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_ally_urban_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_ally_urban_support::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_ally_urban_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_ally_urban_specops::main;
			game[team + "_model"]["SMG"] = mptype\mptype_ally_urban_recon::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_seal_udt_riot::main;

			break; 


		case "iw3_sas_woodland":
			mptype\mptype_ally_woodland_sniper::precache();
			mptype\mptype_ally_woodland_support::precache();
			mptype\mptype_ally_woodland_assault::precache();
			mptype\mptype_ally_woodland_specops::precache();
			mptype\mptype_ally_woodland_recon::precache();
			mptype\mptype_tf141_forest_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_ally_woodland_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_ally_woodland_support::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_ally_woodland_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_ally_woodland_specops::main;
			game[team + "_model"]["SMG"] = mptype\mptype_ally_woodland_recon::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_tf141_forest_riot::main;

			break; 


		case "iw3_spetsnaz_urban":
			mptype\mptype_axis_urban_sniper::precache();
			mptype\mptype_axis_urban_support::precache();
			mptype\mptype_axis_urban_assault::precache();
			mptype\mptype_axis_urban_cqb::precache();
			mptype\mptype_axis_urban_engineer::precache();
			mptype\mptype_opforce_airborne_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_axis_urban_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_axis_urban_support::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_axis_urban_assault::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_axis_urban_cqb::main;
			game[team + "_model"]["SMG"] = mptype\mptype_axis_urban_engineer::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_opforce_airborne_riot::main;

			break; 


		case "iw3_spetsnaz_woodland":
			mptype\mptype_axis_woodland_sniper::precache();
			mptype\mptype_axis_woodland_support::precache();
			mptype\mptype_axis_woodland_rifleman::precache();
			mptype\mptype_axis_woodland_cqb::precache();
			mptype\mptype_axis_woodland_engineer::precache();
			mptype\mptype_opforce_airborne_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_axis_woodland_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_axis_woodland_support::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_axis_woodland_rifleman::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_axis_woodland_cqb::main;
			game[team + "_model"]["SMG"] = mptype\mptype_axis_woodland_engineer::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_opforce_airborne_riot::main;

			break; 


		case "iw3_usmc_desert":
			mptype\mptype_ally_sniper::precache();
			mptype\mptype_ally_support::precache();
			mptype\mptype_ally_rifleman::precache();
			mptype\mptype_ally_cqb::precache();
			mptype\mptype_ally_engineer::precache();
			mptype\mptype_us_army_riot::precache();

			game[team + "_model"]["SNIPER"] = mptype\mptype_ally_sniper::main;
			game[team + "_model"]["LMG"] = mptype\mptype_ally_support::main;
			game[team + "_model"]["ASSAULT"] = mptype\mptype_ally_rifleman::main;
			game[team + "_model"]["SHOTGUN"] = mptype\mptype_ally_cqb::main;
			game[team + "_model"]["SMG"] = mptype\mptype_ally_engineer::main;
			game[team + "_model"]["RIOT"] = mptype\mptype_us_army_riot::main;

			break; 
			
		case "delta_multicam":
            mptype\mptype_delta_multicam_assault::precache();
            mptype\mptype_delta_multicam_lmg::precache();
            mptype\mptype_delta_multicam_smg::precache();
            mptype\mptype_delta_multicam_shotgun::precache();
            mptype\mptype_delta_multicam_sniper::precache();
            mptype\mptype_delta_multicam_riot::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_delta_multicam_sniper::main;
            game[team + "_model"]["LMG"] = mptype\mptype_delta_multicam_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_delta_multicam_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_delta_multicam_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_delta_multicam_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_delta_multicam_riot::main;
            break;
			
		case "gign_paris":
            mptype\mptype_gign_paris_assault::precache();
            mptype\mptype_gign_paris_lmg::precache();
            mptype\mptype_gign_paris_shotgun::precache();
            mptype\mptype_gign_paris_smg::precache();
            mptype\mptype_gign_paris_sniper::precache();
            mptype\mptype_gign_paris_riot::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_gign_paris_sniper::main;
            game[team + "_model"]["LMG"] = mptype\mptype_gign_paris_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_gign_paris_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_gign_paris_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_gign_paris_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_gign_paris_riot::main;
            break;
			
		case "opforce_africa":
            mptype\mptype_opforce_africa_assault::precache();
            mptype\mptype_opforce_africa_lmg::precache();
            mptype\mptype_opforce_africa_shotgun::precache();
            mptype\mptype_opforce_africa_smg::precache();
            mptype\mptype_opforce_africa_sniper::precache();
            mptype\mptype_opforce_africa_riot::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_africa_lmg::main;
            game[team + "_model"]["LMG"] = mptype\mptype_opforce_africa_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_africa_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_africa_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_opforce_africa_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_opforce_africa_riot::main;
            break;
			
		case "opforce_air":
            mptype\mptype_opforce_air_assault::precache();
            mptype\mptype_opforce_air_lmg::precache();
            mptype\mptype_opforce_air_shotgun::precache();
            mptype\mptype_opforce_air_smg::precache();
            mptype\mptype_opforce_air_sniper::precache();
            mptype\mptype_opforce_air_riot::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_air_sniper::main;
            game[team + "_model"]["LMG"] = mptype\mptype_opforce_air_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_air_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_air_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_opforce_air_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_opforce_air_riot::main;
            break;
			
		case "opforce_henchmen":
            mptype\mptype_opforce_henchmen_assault::precache();
            mptype\mptype_opforce_henchmen_lmg::precache();
            mptype\mptype_opforce_henchmen_shotgun::precache();
            mptype\mptype_opforce_henchmen_smg::precache();
            mptype\mptype_opforce_henchmen_sniper::precache();
            mptype\mptype_opforce_henchmen_riot::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_henchmen_sniper::main;
            game[team + "_model"]["LMG"] = mptype\mptype_opforce_henchmen_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_henchmen_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_henchmen_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_opforce_henchmen_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_opforce_henchmen_riot::main;
            break;
			
		case "opforce_snow":
            mptype\mptype_opforce_snow_assault::precache();
            mptype\mptype_opforce_snow_lmg::precache();
            mptype\mptype_opforce_snow_shotgun::precache();
            mptype\mptype_opforce_snow_smg::precache();
            mptype\mptype_opforce_snow_sniper::precache();
            mptype\mptype_opforce_snow_riot::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_snow_sniper::main;
            game[team + "_model"]["LMG"] = mptype\mptype_opforce_snow_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_snow_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_snow_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_opforce_snow_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_opforce_snow_riot::main;
            break;
			
		case "opforce_urban":
            mptype\mptype_opforce_urban_assault::precache();
            mptype\mptype_opforce_urban_lmg::precache();
            mptype\mptype_opforce_urban_shotgun::precache();
            mptype\mptype_opforce_urban_smg::precache();
            mptype\mptype_opforce_urban_sniper::precache();
            mptype\mptype_opforce_urban_riot::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_urban_sniper::main;
            game[team + "_model"]["LMG"] = mptype\mptype_opforce_urban_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_urban_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_urban_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_opforce_urban_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_opforce_urban_riot::main;
            break;
			
		case "opforce_woodland":
            mptype\mptype_opforce_woodland_assault::precache();
            mptype\mptype_opforce_woodland_lmg::precache();
            mptype\mptype_opforce_woodland_shotgun::precache();
            mptype\mptype_opforce_woodland_smg::precache();
            mptype\mptype_opforce_woodland_sniper::precache();
            mptype\mptype_opforce_woodland_riot::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_opforce_woodland_sniper::main;
            game[team + "_model"]["LMG"] = mptype\mptype_opforce_woodland_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_opforce_woodland_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_opforce_woodland_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_opforce_woodland_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_opforce_woodland_riot::main;
            break;
			
		case "pmc_africa":
            mptype\mptype_pmc_africa_assault::precache();
            mptype\mptype_pmc_africa_lmg::precache();
            mptype\mptype_pmc_africa_smg::precache();
            mptype\mptype_pmc_africa_shotgun::precache();
            mptype\mptype_pmc_africa_sniper::precache();
            mptype\mptype_pmc_africa_riot::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_pmc_africa_sniper::main;
            game[team + "_model"]["LMG"] = mptype\mptype_pmc_africa_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_pmc_africa_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_pmc_africa_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_pmc_africa_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_pmc_africa_riot::main;
            break;
			
		case "sas_urban":
            mptype\mptype_sas_urban_assault::precache();
            mptype\mptype_sas_urban_lmg::precache();
            mptype\mptype_sas_urban_shotgun::precache();
            mptype\mptype_sas_urban_smg::precache();
            mptype\mptype_sas_urban_sniper::precache();
			
            game[team + "_model"]["SNIPER"] = mptype\mptype_sas_urban_sniper::main;
            game[team + "_model"]["LMG"] = mptype\mptype_sas_urban_lmg::main;
            game[team + "_model"]["ASSAULT"] = mptype\mptype_sas_urban_assault::main;
            game[team + "_model"]["SHOTGUN"] = mptype\mptype_sas_urban_shotgun::main;
            game[team + "_model"]["SMG"] = mptype\mptype_sas_urban_smg::main;
            game[team + "_model"]["RIOT"] = mptype\mptype_sas_urban_smg::main;
            break;

	}
}

setPlayerModels()
{
	//mptype\mptype_us_army_riot::precache();
	//game["allies_model"]["riotshield"] = mptype\mptype_us_army_riot::main;
	//game["axis_model"]["riotshield"] = mptype\mptype_us_army_riot::main;

	setTeamModels( "allies", game["allies"] );
	setTeamModels( "axis", game["axis"] );
	
	setGhillieModels( getMapCustom( "environment" ) );
}


playerModelForWeapon( weapon, secondary )
{
	team = self.team;

	
	if ( isDefined( game[team + "_model"][weapon] ) )
	{
		[[game[team+"_model"][weapon]]]();
		return;
	}
	
	
	weaponClass = tablelookup( "mp/statstable.csv", 4, weapon, 2 );

	switch ( weaponClass )
	{
		case "weapon_smg":
			[[game[team+"_model"]["SMG"]]]();
			break;
		case "weapon_assault":
			weaponClass = tablelookup( "mp/statstable.csv", 4, secondary, 2 );
			if ( weaponClass == "weapon_shotgun" )
				[[game[team+"_model"]["SHOTGUN"]]]();
			else
				[[game[team+"_model"]["ASSAULT"]]]();
			break;
		case "weapon_sniper":
			if ( level.environment != "" && self isItemUnlocked( "ghillie_" + level.environment ) )
				[[game[team+"_model"]["GHILLIE"]]]();
			else
				[[game[team+"_model"]["SNIPER"]]]();
			break;
		case "weapon_lmg":
			[[game[team+"_model"]["LMG"]]]();
			break;
		case "weapon_riot":
			[[game[team+"_model"]["RIOT"]]]();
			break;
		default:
			[[game[team+"_model"]["ASSAULT"]]]();
			break;
	}
}


CountPlayers()
{
	//chad
	players = level.players;
	allies = 0;
	axis = 0;
	for(i = 0; i < players.size; i++)
	{
		if ( players[i] == self )
			continue;

		if((isdefined(players[i].pers["team"])) && (players[i].pers["team"] == "allies"))
			allies++;
		else if((isdefined(players[i].pers["team"])) && (players[i].pers["team"] == "axis"))
			axis++;
	}
	players["allies"] = allies;
	players["axis"] = axis;
	return players;
}


trackFreePlayedTime()
{
	self endon( "disconnect" );

	self.timePlayed["allies"] = 0;
	self.timePlayed["axis"] = 0;
	self.timePlayed["other"] = 0;
	self.timePlayed["total"] = 0;

	for ( ;; )
	{
		if ( game["state"] == "playing" )
		{
			if ( isDefined( self.pers["team"] ) && self.pers["team"] == "allies" && self.sessionteam != "spectator" )
			{
				self.timePlayed["allies"]++;
				self.timePlayed["total"]++;
			}
			else if ( isDefined( self.pers["team"] ) && self.pers["team"] == "axis" && self.sessionteam != "spectator" )
			{
				self.timePlayed["axis"]++;
				self.timePlayed["total"]++;
			}
			else
			{
				self.timePlayed["other"]++;
			}
		}

		wait ( 1.0 );
	}
}


/#
playerConnectedTest()
{
	if ( getdvarint( "scr_runlevelandquit" ) == 1 )
		return;
	
	level endon( "exitLevel_called" );
	
	// every frame, do a getPlayerData on each player in level.players.
	// this will force a script error if a player in level.players isn't connected.
	for ( ;; )
	{
		foreach ( player in level.players )
		{
			player getPlayerData( "experience" );
		}
		wait .05;
	}
}
#/


updateFreePlayerTimes()
{
	if ( !level.rankedmatch )
		return;
	
	/#
	thread playerConnectedTest();
	#/
	
	nextToUpdate = 0;
	for ( ;; )
	{
		nextToUpdate++;
		if ( nextToUpdate >= level.players.size )
			nextToUpdate = 0;

		if ( isDefined( level.players[nextToUpdate] ) )
			level.players[nextToUpdate] updateFreePlayedTime();

		wait ( 1.0 );
	}
}


updateFreePlayedTime()
{
	if ( !self rankingEnabled() )
		return;

	if ( self.timePlayed["allies"] )
	{
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedAllies", self.timePlayed["allies"] );
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedTotal", self.timePlayed["allies"] );
	}

	if ( self.timePlayed["axis"] )
	{
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedOpfor", self.timePlayed["axis"] );
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedTotal", self.timePlayed["axis"] );
	}

	if ( self.timePlayed["other"] )
	{
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedOther", self.timePlayed["other"] );
		self maps\mp\gametypes\_persistence::statAddBuffered( "timePlayedTotal", self.timePlayed["other"] );
	}

	if ( game["state"] == "postgame" )
		return;

	self.timePlayed["allies"] = 0;
	self.timePlayed["axis"] = 0;
	self.timePlayed["other"] = 0;
}


getJoinTeamPermissions( team )
{
	teamcount = 0;

	players = level.players;
	for(i = 0; i < players.size; i++)
	{
		player = players[i];

		if((isdefined(player.pers["team"])) && (player.pers["team"] == team))
			teamcount++;
	}

	if( teamCount < level.teamLimit )
		return true;
	else
		return false;
}


onPlayerSpawned()
{
	level endon ( "game_ended" );

	for ( ;; )
	{
		self waittill ( "spawned_player" );
	}
}

getTeamName( teamRef )
{
	return ( tableLookupIString( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_NAME_COL ) );
}

getTeamShortName( teamRef )
{
	return ( tableLookupIString( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_SHORT_NAME_COL ) );
}

getTeamForfeitedString( teamRef )
{
	return ( tableLookupIString( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_FORFEITED_COL ) );
}

getTeamEliminatedString( teamRef )
{
	return ( tableLookupIString( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_ELIMINATED_COL ) );
}

getTeamIcon( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_ICON_COL ) );
}

getTeamHudIcon( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_HUD_ICON_COL ) );
}

getTeamHeadIcon( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_HEAD_ICON_COL ) );
}

getTeamVoicePrefix( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_VOICE_PREFIX_COL ) );
}

getTeamSpawnMusic( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_SPAWN_MUSIC_COL ) );
}

getTeamWinMusic( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_WIN_MUSIC_COL ) );
}

getTeamFlagModel( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_FLAG_MODEL_COL ) );
}

getTeamFlagCarryModel( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_FLAG_CARRY_MODEL_COL ) );
}

getTeamFlagIcon( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_FLAG_ICON_COL ) );
}

getTeamFlagFX( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_FLAG_FX_COL ) );
}

getTeamColor( teamRef )
{
	return ( (stringToFloat( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_COLOR_R_COL ) ),
				stringToFloat( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_COLOR_G_COL ) ),
				stringToFloat( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_COLOR_B_COL ) ))
			);
}

getTeamCrateModel( teamRef )
{
	return ( tableLookup( "mp/factionTable.csv", FACTION_REF_COL, game[teamRef], FACTION_CRATE_MODEL_COL ) );	
}
