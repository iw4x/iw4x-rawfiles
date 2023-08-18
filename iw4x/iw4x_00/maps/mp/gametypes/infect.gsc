#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include common_scripts\utility;

main()
{
    maps\mp\gametypes\_globallogic::init();
    maps\mp\gametypes\_callbacksetup::SetupCallbacks();
    maps\mp\gametypes\_globallogic::SetupCallbacks();

  
	registerTimeLimitDvar( level.gameType, 10 );
	setDvar( "scorelimit", 0 );
	registerRoundLimitDvar( level.gameType, 1 );
	registerWinLimitDvar( level.gameType, 1 );
	registerNumLivesDvar( level.gameType, 0 );
	registerHalfTimeDvar( level.gameType, 0 ); 
	
	setSpecialLoadouts();
	
	level.teamBased = true;
	// don't sit there waiting for both teams to contain players,
    // as everyone starts a survivor
    level.prematchWaitForTeams = false;
	level.onPrecacheGameType = ::onPrecacheGameType;
	level.onStartGameType = ::onStartGameType;
	level.onSpawnPlayer = ::onSpawnPlayer;
	level.getSpawnPoint = ::getSpawnPoint;
	level.onPlayerKilled = ::onPlayerKilled;
	level.onTimeLimit = ::onTimeLimit;
	
	level.infect_perks = [];
    level.infect_perks[level.infect_perks.size] = "specialty_marathon";
    level.infect_perks[level.infect_perks.size] = "specialty_fastreload";
    level.infect_perks[level.infect_perks.size] = "specialty_scavenger";
    level.infect_perks[level.infect_perks.size] = "specialty_fastmantle";
    level.infect_perks[level.infect_perks.size] = "specialty_quickdraw";
    level.infect_perks[level.infect_perks.size] = "specialty_lightweight";
    level.infect_perks[level.infect_perks.size] = "specialty_hardline";
    level.infect_perks[level.infect_perks.size] = "specialty_coldblooded";
    level.infect_perks[level.infect_perks.size] = "specialty_explosivedamage";
    level.infect_perks[level.infect_perks.size] = "specialty_bombsquad";
    level.infect_perks[level.infect_perks.size] = "specialty_bulletaccuracy";
    level.infect_perks[level.infect_perks.size] = "specialty_localjammer";
    level.infect_perks[level.infect_perks.size] = "specialty_quieter";
	
    level.determineWinningTeam = ::determineWinningTeam;
}

determineWinningTeam()
{
    // if the game's still going on, the allies are winning since they're still alive
    return "allies";
}

onPrecacheGameType()
{
    precachestring( &"MP_CONSCRIPTION_STARTS_IN" );
}

onStartGameType()
{
    setclientnamemode( "auto_change" );
    setObjectiveText( "allies", &"OBJECTIVES_INFECT" );
    setObjectiveText( "axis", &"OBJECTIVES_INFECT" );

    setObjectiveScoreText( "allies", &"OBJECTIVES_INFECT_SCORE" );
    setObjectiveScoreText( "axis", &"OBJECTIVES_INFECT_SCORE" );

    setObjectiveHintText( "allies", &"OBJECTIVES_INFECT_HINT" );
    setObjectiveHintText( "axis", &"OBJECTIVES_INFECT_HINT" );
	
	level.spawnMins = ( 0, 0, 0 );
	level.spawnMaxs = ( 0, 0, 0 );	
	maps\mp\gametypes\_spawnlogic::addSpawnPoints( "allies", "mp_tdm_spawn" );
	maps\mp\gametypes\_spawnlogic::addSpawnPoints( "axis", "mp_tdm_spawn" );
	level.mapCenter = maps\mp\gametypes\_spawnlogic::findBoxCenter( level.spawnMins, level.spawnMaxs );
	setMapCenter( level.mapCenter );

	allowed = [];
	maps\mp\gametypes\_gameobjects::main(allowed);	

    maps\mp\gametypes\_rank::registerScoreInfo( "firstblood", 0 );
    maps\mp\gametypes\_rank::registerScoreInfo( "first_draft", 350 );
    maps\mp\gametypes\_rank::registerScoreInfo( "final_rogue", 200 );
    maps\mp\gametypes\_rank::registerScoreInfo( "kill", 50 );
    maps\mp\gametypes\_rank::registerScoreInfo( "draft_rogue", 200 );
    maps\mp\gametypes\_rank::registerScoreInfo( "survivor", 50 );
	
	level.QuickMessageToAll = true;	
	level.blockWeaponDrops = true;
	level.infect_allowSuicide = false;
	
	SetDvar( "ui_allow_teamchange", 0 );
	SetDvar( "scr_teambalance", 0 );
	
	level.infect_timerDisplay = createServerTimer( "objective", 1.4 );
	level.infect_timerDisplay setPoint( "TOPLEFT", "TOPLEFT", 115, 5 );
	level.infect_timerDisplay.label = &"MP_DRAFT_STARTS_IN";
	level.infect_timerDisplay.alpha = 0;
	level.infect_timerDisplay.archived = false;
	level.infect_timerDisplay.hideWhenInMenu = true;
	
	level.infect_choseFirstInfected = false;
	level.infect_choosingFirstInfected = false;
	level.infect_awardedFinalSurvivor = false;
	level.infect_countdownInProgress = false;
	
 	level.infect_teamScores["axis"] = 0;
	level.infect_teamScores["allies"] = 0;	
	level.infect_players = [];
	
    level thread onPlayerConnect();
    level thread watchInfectForfeit();
}

onPlayerConnect()
{
    for (;;)
    {
        level waittill( "connected", player );
		
        player.infect_firstSpawn = true;
		player.infected_Rejoined = false;
		player.infect_JoinedAtStart = true;
		player.hud_EventPopup = player createXpEventPopup();

		if( gameFlag( "prematch_done" ) )
		{
			player.infect_JoinedAtStart = false;
		}
		//	infected who quit and rejoined same game
		if( IsDefined( level.infect_players[player.name] ) )
		{
			player.infected_Rejoined = true;
		}
    }
}

getSpawnPoint()
{
    //	first time here?
	if ( self.infect_firstSpawn )
    {
		self.infect_firstSpawn = false;
		
		//	everyone is a gamemode class in infect, no class selection
		self.pers["class"] = "gamemode";
		self.pers["lastClass"] = "";
		self.class = self.pers["class"];
		self.lastClass = self.pers["lastClass"];	

		// survivors are allies
		teamChoice = "allies";
		
		//	everyone starts as survivors, unless an infected quit and rejoined same game
		if( self.infected_Rejoined )	
		{
			teamChoice = "axis";	
		}
		
		self maps\mp\gametypes\_menus::addToTeam( teamChoice, true );	

        thread onPlayerDisconnect();
    }

	if ( level.inGracePeriod )
	{
		spawnPoints = maps\mp\gametypes\_spawnlogic::getSpawnpointArray( "mp_tdm_spawn" );
		spawnPoint = maps\mp\gametypes\_spawnlogic::getSpawnpoint_Random( spawnPoints );
	}
	else
	{
		spawnPoints = maps\mp\gametypes\_spawnlogic::getTeamSpawnPoints( self.pers["team"] );
		spawnPoint = maps\mp\gametypes\_spawnlogic::getSpawnpoint_NearTeam( spawnPoints );
	}

    return spawnPoint;	
}

onSpawnPlayer()
{
	self.teamChangedThisFrame = undefined;
	self.infect_spawnPos = self.origin;
	
	//	resynch teams
	updateTeamScores();	

	//	let the first spawned player kick this off
	if ( !level.infect_choosingFirstInfected )
	{
		level.infect_choosingFirstInfected = true;
		level thread chooseFirstInfected();
	}	

	//	infected who quit and rejoined same game?
	if( self.infected_Rejoined )
    {
        self.infect_rejoined = undefined;

		//	stop initial infect countdown (if quit/join player was initial and a new coutdown is underway)
		if ( !level.infect_allowSuicide ) 
		{
			level notify( "infect_stopCountdown" );			
			level.infect_choseFirstInfected = true;
			level.infect_allowSuicide = true;
			foreach( player in level.players )
			{
				if ( isDefined( player.infect_isBeingChosen ) )
					player.infect_isBeingChosen = undefined;
			}		
		}

		//	if an initial was already chosen while they were gone and they are still initial, set them to normal
		foreach( player in level.players )
		{
			if ( isDefined( player.isInitialInfected ) )
				player thread setInitialToNormalInfected();
		}

		//	if they're the only infected, then set them as initial infected
		if ( level.infect_teamScores["axis"] == 1 )
			self.isInitialInfected = true;
    }
	
	//	onSpawnPlayer() is called before giveLoadout()
	//	set self.pers["gamemodeLoadout"] for giveLoadout() to use
    if ( isDefined( self.isInitialInfected ) )
        self.pers["gamemodeLoadout"] = level.infect_loadouts["axis_initial"];
    else
        self.pers["gamemodeLoadout"] = level.infect_loadouts[self.pers["team"]];

	self thread onSpawnFinished();
	
	level notify ( "spawned_player" );
}

onSpawnFinished()
{
	self endon( "death" );
	self endon( "disconnect" );
    self waittill( "spawned_player" );

    if ( self.pers["team"] == "axis" )
        thread setInfectedMsg();

    wait 0.05;

    if ( self.pers["team"] == "axis" )
        maps\mp\killstreaks\_killstreaks::clearKillstreaks();

    if ( matchMakingGame() )
    {
        foreach ( player in level.infect_perks )
        {
            if ( _hasPerk( player ) )
            {
                var_2 = tablelookup( "mp/perktable.csv", 1, player, 8 );

                if ( !_hasPerk( var_2 ) )
                   _setPerk( var_2, 0 );
            }
        }

        if ( self.pers["team"] == "allies" ) // SURVIVORS
        {
            if ( !_hasPerk( "specialty_scavenger" ) )
            {
               _setPerk( "specialty_scavenger", 0 );
                var_2 = tablelookup( "mp/perktable.csv", 1, "specialty_scavenger", 8 );

                if ( !_hasPerk( var_2 ) )
                   _setPerk( var_2, 0 );
            }
        }
        else if ( self.pers["team"] == "axis" ) // INFECTED
        {
            if ( isDefined( self.isInitialInfected ) && !_hasPerk( "specialty_marathon" ) )
            {
               _setPerk( "specialty_marathon", 0 );
                var_2 = tablelookup( "mp/perktable.csv", 1, "specialty_marathon", 8 );

                if ( !_hasPerk( var_2 ) )
                   _setPerk( var_2, 0 );
            }

            if ( !_hasPerk( "specialty_falldamage" ) )
               _setPerk( "specialty_falldamage", 0 );

            if ( _hasPerk( "specialty_marathon" ) )
            {
               _setPerk( "specialty_lightweight", 0 );
                self setMoveSpeedScale( 1.2 );
            }
        }
    }
}

setInfectedMsg()
{

	if ( isDefined( self.isInitialInfected ) )
	{
		thread xpEventPopup( &"SPLASHES_FIRST_MERCENARY", ( 1, 0, 0 ), 0.3 );
	}	
	else if ( isDefined( self.changingToRegularInfected ) )
	{
		self.changingToRegularInfected = undefined;
		if ( isDefined( self.changingToRegularInfectedByKill ) )
		{
            self.changingToRegularInfectedByKill = undefined;
            thread xpEventPopup( &"SPLASHES_FIRSTBLOOD" );
            maps\mp\gametypes\_gamescore::givePlayerScore( "first_draft", self );
            thread maps\mp\gametypes\_rank::giveRankXP( "first_draft" );
        }
    }
    else
	{
        thread xpEventPopup( &"SPLASHES_DRAFTED", ( 1, 0, 0 ), 0.3 );
	}
}

chooseFirstInfected()
{
	level endon( "game_ended" );
	level endon( "infect_stopCountdown" );
	
	level.infect_allowSuicide = false;
	gameFlagWait( "prematch_done" );
	
	level.infect_timerDisplay.label = &"MP_DRAFT_STARTS_IN";
	level.infect_timerDisplay setTimer( 15 );
	level.infect_timerDisplay.alpha = 1;	
	
    maps\mp\gametypes\_hostmigration::waitLongDurationWithHostMigrationPause( 15.0 );
	
	level.infect_timerDisplay.alpha = 0;
	
	possibleInfected = [];
	
	foreach( player in level.players )
	{
		if ( player.team == "spectator" )
			continue;
		
		if ( !player.hasSpawned )
			continue;
				
		possibleInfected[possibleInfected.size] = player;
	}
	
	firstInfectedPlayer = possibleInfected[ randomInt( possibleInfected.size ) ];
	firstInfectedPlayer setFirstInfected( true );
}

setFirstInfected( wasChosen )
{	
	self endon( "disconnect" );
	
	if ( wasChosen )
		self.infect_isBeingChosen = true;

	//	wait alive
	while( !isReallyAlive( self ) || self isUsingRemote() )
		wait( 0.05 );
	
	//	remove placement item if carrying
	if ( IsDefined( self.isCarrying ) && self.isCarrying == true )
	{
		self notify( "force_cancel_placement" );
		wait( 0.05 );
	}
	
	//	not while mantling
	while ( self IsMantling() )
		wait( 0.05 );	
	
	//	not while in air
	while ( !self isOnGround() && !self IsOnLadder() )
		wait( 0.05 );
	
	//	move to other team
	if ( wasChosen )
	{
		self maps\mp\gametypes\_menus::addToTeam( "axis" );
		level.infect_choseFirstInfected = true;
		self.infect_isBeingChosen = undefined;
		
		//	resynch teams
		level notify( "update_game_time" );
		updateTeamScores();					
		
		//	allow suicides now
		level.infect_allowSuicide = true;		
	}

   	//	store initial
	self.isInitialInfected = true;
	
   	//	set the gamemodeloadout for giveLoadout() to use
	self.pers["gamemodeLoadout"] = level.infect_loadouts["axis_initial"];
	
	//	remove old TI if it exists
	if ( isDefined ( self.setSpawnpoint ) )
		self maps\mp\perks\_perkfunctions::deleteTI( self.setSpawnpoint );	

	//	set faux TI to respawn in place
	spawnPoint = spawn( "script_model", self.origin );
	spawnPoint.angles = self.angles;
	spawnPoint.playerSpawnPos = self.origin;
	spawnPoint.notTI = true;		
	self.setSpawnPoint = spawnPoint;
	
	//	faux spawn
	self notify( "faux_spawn" );
	self.faux_spawn_stance = self getStance();
    thread maps\mp\gametypes\_playerlogic::spawnPlayer( true );

	//	store infected
	if ( wasChosen )
		level.infect_players[self.name] = true;
		
	//	tell the world!
    thread teamPlayerCardSplash( "callout_first_mercenary", self );
	playSoundOnPlayers( "mp_enemy_obj_captured" );
}

setInitialToNormalInfected( gotKill )
{
    level endon( "game_ended" );
	
	self.isInitialInfected = undefined;	
	self.changingToRegularInfected = true;	
	if ( isDefined( gotKill ) )
		self.changingToRegularInfectedByKill = true;

	//	wait till we spawn if we died at the same time
	while ( !isReallyAlive( self ) )
		wait( 0.05 );

	//	remove placement item if carrying
	if ( IsDefined( self.isCarrying ) && self.isCarrying == true )
	{
		self notify( "force_cancel_placement" );
		wait( 0.05 );
	}		

	//	not while mantling
	while ( self IsMantling() )
		wait( 0.05 );	
	
	//	not while in air
	while ( !self isOnGround() )
		wait( 0.05 );
	
	//	Gotta check again, more time has passed, wait till we spawn if we died at the same time
	while ( !isReallyAlive( self ) )
		wait( 0.05 );

	//	set the gamemodeloadout for giveLoadout() to use
	self.pers["gamemodeLoadout"] = level.infect_loadouts["axis"];

	//	remove old TI if it exists
	if ( isDefined ( self.setSpawnpoint ) )
		self maps\mp\perks\_perkfunctions::deleteTI( self.setSpawnpoint );	
		
	//	set faux TI to respawn in place	
	spawnPoint = spawn( "script_model", self.origin );
	spawnPoint.angles = self.angles;
	spawnPoint.playerSpawnPos = self.origin;
	spawnPoint.notTI = true;		
	self.setSpawnPoint = spawnPoint;
	
	//	faux spawn
	self notify( "faux_spawn" );
	self.faux_spawn_stance = self getStance();
	
    thread maps\mp\gametypes\_playerlogic::spawnPlayer( true );
}

onPlayerKilled( eInflictor, attacker, iDamage, sMeansOfDeath, sWeapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration )
{
	processKill = false;
	wasSuicide = false;
	
	if ( self.team == "allies" && isDefined( attacker ) )
	{
		if ( isPlayer( attacker ) && attacker != self )
			processKill = true;
		else if ( level.infect_allowSuicide && ( attacker == self || !isPlayer( attacker ) ) )
		{
			processKill = true;
			wasSuicide = true;
		}
	}

    if ( processKill )
    {
		//	track team change for this frame (so explosives can't team kill, now that they changed teams)
		self.teamChangedThisFrame = true;
		
		//	move victim to infected
		self maps\mp\gametypes\_menus::addToTeam( "axis" );
		
		//	resynch teams
		updateTeamScores();	
		
		//	store infected
		level.infect_players[self.name] = true;	

		if ( wasSuicide )
		{
			//	set initial infected to regular infected since a survivor just commited suicide and initial infected is no longer alone
			if ( level.infect_teamScores["axis"] > 1 )
			{
				foreach( player in level.players )
				{
					if ( isDefined( player.isInitialInfected ) )
						player thread setInitialToNormalInfected();
				}				
			}
		}
		else
		{
			//	set attacker to regular infected if they were the first infected
			if ( isDefined( attacker.isInitialInfected ) )
				attacker thread setInitialToNormalInfected( true );	
			else
			{				
				//	regular attacker reward
				attacker thread xpEventPopup( &"SPLASHES_DRAFTED" );
				maps\mp\gametypes\_gamescore::givePlayerScore( "draft_rogue", attacker, self, true );
				attacker thread maps\mp\gametypes\_rank::giveRankXP( "draft_rogue" );
			}
		}

		//	generic messages/sounds, and reward survivors
		if ( level.infect_teamScores["allies"] > 1 )
		{
			playSoundOnPlayers( "mp_enemy_obj_captured", "allies" );
			playSoundOnPlayers( "mp_war_objective_taken", "axis" );
			thread teamPlayerCardSplash( "callout_got_drafted", self, "allies" );

			if ( !wasSuicide )
			{
				thread teamPlayerCardSplash( "callout_drafted_rogue", attacker, "axis" );

				foreach ( player in level.players )
				{
					if( !isReallyAlive( player ) || self.sessionstate == "spectator" )
						continue;
						
                    if ( player.team == "allies" && player != self && distance( player.infect_spawnPos, player.origin ) > 32 )
                    {
                        player thread xpEventPopup( &"SPLASHES_SURVIVOR" );
                        maps\mp\gametypes\_gamescore::givePlayerScore( "survivor", player, undefined, 1 );
                        player thread maps\mp\gametypes\_rank::giveRankXP( "survivor" );
                    }
                }
            }
        }
		//	inform/reward last
		else if ( level.infect_teamScores["allies"] == 1 )
		{
			onFinalSurvivor();
		}
		//	infected win
		else if ( level.infect_teamScores["allies"] == 0 )
		{
			onSurvivorsEliminated();
		}
		
    }
}

onFinalSurvivor()
{
	playSoundOnPlayers( "mp_obj_captured" );
	foreach ( player in level.players )
    {
		if( !isDefined(player) )
			continue;
	
        if ( player.team == "allies" )
        {
            player thread xpEventPopup( &"SPLASHES_FINAL_ROGUE" );
            if ( !level.infect_awardedFinalSurvivor )
            {
                if ( player.gameModeJoinedAtStart && isDefined( player.infect_spawnPos ) && distance( player.infect_spawnPos, player.origin ) > 32 )
                {
                    maps\mp\gametypes\_gamescore::givePlayerScore( "final_rogue", player, undefined, 1 );
                    player thread maps\mp\gametypes\_rank::giveRankXP( "final_rogue" );
                }

                level.infect_awardedFinalSurvivor = true;
            }

            thread teamplayercardsplash( "callout_final_rogue", player );

            if (matchMakingGame() )
                level thread finalsurvivoruav( player );

            break;
        }
    }
}

finalSurvivorUAV( finalPlayer )
{
	level endon( "game_ended" );
	finalPlayer endon( "disconnect" );
	finalPlayer endon( "eliminated" );
	level endon( "infect_lateJoiner" );
	level thread endUAVonLateJoiner( finalPlayer );
	
	removeUAV = false;
	level.radarMode["axis"] = "normal_radar";	
	foreach ( player in level.players )
	{
		if ( player.team == "axis" )
			player.radarMode = "normal_radar";	
	}
	
	//setTeamRadarStrength( "axis", 1 );	
		
	while( true )
	{		
		prevPos = finalPlayer.origin;
		
		wait( 4 );
		if ( removeUAV )
		{
			setTeamRadar( "axis", 0 );		
			removeUAV = false;
		}
		
		wait( 6 );		
		if ( distance( prevPos, finalPlayer.origin ) < 200 )
		{
			setTeamRadar( "axis", 1 );
			removeUAV = true;
			
			foreach ( player in level.players )
				player playLocalSound( "recondrone_tag" );
		}		
	}
}

endUAVonLateJoiner( finalPlayer )
{
	level endon( "game_ended" );
	finalPlayer endon( "disconnect" );
	finalPlayer endon( "eliminated" );
	
	while( true )
	{
		if ( level.infect_teamScores["allies"] > 1 )
		{
			level notify( "infect_lateJoiner" );
			wait( 0.05 );
			setTeamRadar( "axis", 0 );
			break;
		}
		wait( 0.05 );
	}
}

onPlayerDisconnect()
{
    level endon( "game_ended" );
    self endon( "eliminated" );
	
	self waittill( "disconnect" );
	
	//	resynch teams
	updateTeamScores();

	//	team actions or win condition necessary?
	if ( isDefined( self.infect_isBeingChosen ) || level.infect_choseFirstInfected )
    {
		if ( level.infect_teamScores["axis"] && level.infect_teamScores["allies"] )
		{
			if ( self.team == "allies" && level.infect_teamScores["allies"] == 1 )
			{
				//	final survivor was abandoned: inform, reward, call uav
				onFinalSurvivor();
			}
			else if ( self.team == "axis" && level.infect_teamScores["axis"] == 1 )
			{
				//	final infected was abandoned: inform, set initial
				foreach ( player in level.players )
				{
					if ( player != self && player.team == "axis" )
						player setFirstInfected( false );
				}
			}
		}
		else if ( level.infect_teamScores["allies"] == 0 )
		{
			//	no more survivors, infected win
			onSurvivorsEliminated();	
		}			
		else if ( level.infect_teamScores["axis"] == 0 )
		{
			if ( level.infect_teamScores["allies"] == 1 )
			{
				//	last survivor wins
				level.finalKillCam_winner = "allies";
				level thread maps\mp\gametypes\_gamelogic::endGame( "allies", game[ "end_reason" ][ "axis_eliminated" ] );				
			}			
			else if ( level.infect_teamScores["allies"] > 1 )
			{
				//	pick a new infected and keep the game going					
				level.infect_choseFirstInfected = false;
				level thread chooseFirstInfected();	
			}			
		}	
    }

    //	clear this regardless on the way out
	self.isInitialInfected = undefined;	
}

watchInfectForfeit()
{
    level endon( "game_ended" );
    level.forfeitInProgress = true;

    for (;;)
    {
        if ( !isDefined( level.forfeitInProgress ) )
            level.forfeitInProgress = true;

        wait 0.05;
    }
}

onDeadEvent( team )
{
	//	override default to supress the normal game ending process 
	return;
}

onTimeLimit()
{
	//	survivors win
	level.finalKillCam_winner = "allies";
	level thread maps\mp\gametypes\_gamelogic::endGame( "allies", game[ "end_reason" ][ "time_limit_reached" ] );	
}

onSurvivorsEliminated()
{
	//	infected win	
	level.finalKillCam_winner = "axis";
	level thread maps\mp\gametypes\_gamelogic::endGame( "axis", game[ "end_reason" ][ "allies_eliminated" ] );	
}

getTeamSize( team )
{
	size = 0;
	
	foreach( player in level.players )
	{
		// Make sure we don't check for spectators
		// Also need to check for if they are in killcam, because player session states are set to spectator when killcam happens
		if ( player.sessionstate == "spectator" && !player.spectatekillcam )
			continue;
	
		if( player.team == team )
			size++;
	}
	
	return size;	
}

updateTeamScores()
{
	// survivors
	level.infect_teamScores["allies"] = getTeamSize( "allies" );
	game["teamScores"]["allies"] = level.infect_teamScores["allies"];
	setTeamScore( "allies", level.infect_teamScores["allies"] );
	
	// infected
	level.infect_teamScores["axis"] = getTeamSize( "axis" );
	game["teamScores"]["axis"] = level.infect_teamScores["axis"];
	setTeamScore( "axis", level.infect_teamScores["axis"] );
}

setSpecialLoadouts()
{
    level.infect_loadouts["axis"]["loadoutPrimary"] = "throwingknife";
    level.infect_loadouts["axis"]["loadoutPrimaryAttachment"] = "none";
    level.infect_loadouts["axis"]["loadoutPrimaryAttachment2"] = "none";
    level.infect_loadouts["axis"]["loadoutPrimaryCamo"] = "none";
	level.infect_loadouts["axis"]["loadoutSecondary"] = "none";
    level.infect_loadouts["axis"]["loadoutSecondaryAttachment"] = "none";
    level.infect_loadouts["axis"]["loadoutSecondaryAttachment2"] = "none";
    level.infect_loadouts["axis"]["loadoutSecondaryCamo"] = "none";
    level.infect_loadouts["axis"]["loadoutEquipment"] = "throwingknife_mp";
    level.infect_loadouts["axis"]["loadoutOffhand"] = "none";
    level.infect_loadouts["axis"]["loadoutPerk1"] = "specialty_marathon";
    level.infect_loadouts["axis"]["loadoutPerk2"] = "specialty_lightweight";
    level.infect_loadouts["axis"]["loadoutPerk3"] = "specialty_heartbreaker";
    level.infect_loadouts["axis"]["loadoutKillstreak1"] = "none";
    level.infect_loadouts["axis"]["loadoutKillstreak2"] = "none";
    level.infect_loadouts["axis"]["loadoutKillstreak3"] = "none";
    level.infect_loadouts["axis"]["loadoutDeathstreak"] = "specialty_grenadepulldeath";

    level.infect_loadouts["axis_initial"]["loadoutPrimary"] = "scar";
    level.infect_loadouts["axis_initial"]["loadoutPrimaryAttachment"] = "reflex";
    level.infect_loadouts["axis_initial"]["loadoutPrimaryAttachment2"] = "xmags";
    level.infect_loadouts["axis_initial"]["loadoutPrimaryCamo"] = "none";
    level.infect_loadouts["axis_initial"]["loadoutSecondary"] = "none";
    level.infect_loadouts["axis_initial"]["loadoutSecondaryAttachment"] = "none";
    level.infect_loadouts["axis_initial"]["loadoutSecondaryAttachment2"] = "none";
    level.infect_loadouts["axis_initial"]["loadoutSecondaryCamo"] = "none";
    level.infect_loadouts["axis_initial"]["loadoutEquipment"] = "throwingknife_mp";
    level.infect_loadouts["axis_initial"]["loadoutOffhand"] = "none";
    level.infect_loadouts["axis_initial"]["loadoutPerk1"] = "specialty_marathon";
    level.infect_loadouts["axis_initial"]["loadoutPerk2"] = "specialty_lightweight";
    level.infect_loadouts["axis_initial"]["loadoutPerk3"] = "specialty_bulletaccuracy";
    level.infect_loadouts["axis_initial"]["loadoutKillstreak1"] = "none";
    level.infect_loadouts["axis_initial"]["loadoutKillstreak2"] = "none";
    level.infect_loadouts["axis_initial"]["loadoutKillstreak3"] = "none";
    level.infect_loadouts["axis_initial"]["loadoutDeathstreak"] = "specialty_grenadepulldeath";
    
    level.infect_loadouts["allies"]["loadoutPrimary"] = "spas12";
    level.infect_loadouts["allies"]["loadoutPrimaryAttachment"] = "xmags";
    level.infect_loadouts["allies"]["loadoutPrimaryAttachment2"] = "grip";
    level.infect_loadouts["allies"]["loadoutPrimaryCamo"] = "none";
    level.infect_loadouts["allies"]["loadoutSecondary"] = "pp2000";
    level.infect_loadouts["allies"]["loadoutSecondaryAttachment"] = "reflex";
    level.infect_loadouts["allies"]["loadoutSecondaryAttachment2"] = "xmags";
    level.infect_loadouts["allies"]["loadoutSecondaryCamo"] = "none";
    level.infect_loadouts["allies"]["loadoutEquipment"] = "claymore_mp";
    level.infect_loadouts["allies"]["loadoutOffhand"] = "flash_grenade_mp";
    level.infect_loadouts["allies"]["loadoutPerk1"] = "specialty_scavenger";
    level.infect_loadouts["allies"]["loadoutPerk2"] = "specialty_lightweight";
    level.infect_loadouts["allies"]["loadoutPerk3"] = "specialty_heartbreaker";
    level.infect_loadouts["allies"]["loadoutDeathstreak"] = "specialty_null";
}

createXpEventPopup()
{
	hud_xpEventPopup = newClientHudElem( self );
	hud_xpEventPopup.children = [];		
	hud_xpEventPopup.horzAlign = "center";
	hud_xpEventPopup.vertAlign = "middle";
	hud_xpEventPopup.alignX = "center";
	hud_xpEventPopup.alignY = "middle";
	hud_xpEventPopup.x = 55;
	hud_xpEventPopup.y = -35;
	hud_xpEventPopup.font = "hudbig";
	hud_xpEventPopup.fontscale = 0.65;
	hud_xpEventPopup.archived = false;
	hud_xpEventPopup.color = (0.5,0.5,0.5);
	hud_xpEventPopup.sort = 10000;
	hud_xpEventPopup.elemType = "msgText";
	hud_xpEventPopup maps\mp\gametypes\_hud::fontPulseInit( 3.0 );
	return hud_xpEventPopup;
}

xpEventPopupFinalize( event, hudColor, glowAlpha )
{
	self endon( "disconnect" );
	self endon( "joined_team" );
	self endon( "joined_spectators" );

	self notify( "xpEventPopup" );
	self endon( "xpEventPopup" );

    if ( level.hardcoremode )
        return;

    wait ( 0.05 );

	if ( !isDefined( hudColor ) )
		hudColor = (1,1,0.5);
	if ( !isDefined( glowAlpha ) )
		glowAlpha = 0;

    if ( !isDefined( self ) )
        return;

	self.hud_xpEventPopup.color = hudColor;
	self.hud_xpEventPopup.glowColor = hudColor;
	self.hud_xpEventPopup.glowAlpha = glowAlpha;

	self.hud_xpEventPopup setText(event);
	self.hud_xpEventPopup.alpha = 0.85;

	wait ( 1.0 );

    if ( !isDefined( self ) )
        return;

	self.hud_xpEventPopup fadeOverTime( 0.75 );
	self.hud_xpEventPopup.alpha = 0;	
    self notify( "PopComplete" );
}

xpEventPopupTerminate()
{
    self endon( "PopComplete" );
    
	waittill_any( "joined_team", "joined_spectators" );
	
    self.hud_xpEventPopup  fadeOverTime( 0.05 );
    self.hud_xpEventPopup .alpha = 0;
}

xpEventPopup( event, hudColor, glowAlpha )
{
    thread xpEventPopupFinalize( event, hudColor, glowAlpha );
    thread xpEventPopupTerminate();
}