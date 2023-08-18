#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_class;
#include common_scripts\utility;

/*
	Gun Game
	Objective: 	Progress through all weapon tiers by killing enemy players
	Map ends:	When a player progresses through all weapon tiers
	Respawning:	No wait / Away from other players

	Level requirements
	------------------
		Spawnpoints:
			classname		mp_dm_spawn
			All players spawn from these. The spawnpoint chosen is dependent on the current locations of enemies at the time of spawn.
			Players generally spawn away from enemies.

		Spectator Spawnpoints:
			classname		mp_global_intermission
			Spectators spawn from these and intermission is viewed from these positions.
			Atleast one is required, any more and they are randomly chosen between.
*/

/*QUAKED mp_dm_spawn (1.0 0.5 0.0) (-16 -16 0) (16 16 72)
Players spawn away from enemies at one of these positions.*/

main()
{

	maps\mp\gametypes\_globallogic::init();
	maps\mp\gametypes\_callbacksetup::SetupCallbacks();
	maps\mp\gametypes\_globallogic::SetupCallbacks();
	
	//	must be done before scorelimit is set
	setGuns();
	
	scoreLimit = level.gun_guns.size;
	SetDvar( "scr_gun_scorelimit", scoreLimit );
	registerScoreLimitDvar( level.gameType, scoreLimit );	
	SetDvar( "scr_gun_winlimit", 1 );
	registerWinLimitDvar( "gun", 1 );
	SetDvar( "scr_gun_roundlimit", 1 );
	registerRoundLimitDvar( "gun", 1 );
	SetDvar( "scr_gun_halftime", 0 );
	registerHalfTimeDvar( "gun", 0 );
	
	setSpecialLoadout();
	
	level.teamBased = false;
	
	level.doPrematch = true;
	level.killstreakRewards = false;
	level.onPrecacheGameType = ::onPrecacheGameType;
	level.onStartGameType = ::onStartGameType;
	level.onSpawnPlayer = ::onSpawnPlayer;
	level.getSpawnPoint = ::getSpawnPoint;
	level.onPlayerKilled = ::onPlayerKilled;
	level.onTimeLimit = ::onTimeLimit;
	
}

onprecachegametype()
{
    precachestring( &"MP_GUN" );
}

onStartGameType()
{
	setClientNameMode("auto_change");

	setObjectiveText( "allies", &"OBJECTIVES_DM" );
	setObjectiveText( "axis", &"OBJECTIVES_DM" );

	setObjectiveScoreText( "allies", &"OBJECTIVES_DM_SCORE" );
	setObjectiveScoreText( "axis", &"OBJECTIVES_DM_SCORE" );
	
	setObjectiveHintText( "allies", &"OBJECTIVES_DM_HINT" );
	setObjectiveHintText( "axis", &"OBJECTIVES_DM_HINT" );

	level.spawnMins = ( 0, 0, 0 );
	level.spawnMaxs = ( 0, 0, 0 );

	maps\mp\gametypes\_spawnlogic::addSpawnPoints( "allies", "mp_dm_spawn" );
	maps\mp\gametypes\_spawnlogic::addSpawnPoints( "axis", "mp_dm_spawn" );

	level.mapCenter = maps\mp\gametypes\_spawnlogic::findBoxCenter( level.spawnMins, level.spawnMaxs );
	setMapCenter( level.mapCenter );		
	
	maps\mp\gametypes\_rank::registerScoreInfo( "kill", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "assist", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "suicide", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "teamkill", 0 );	
	maps\mp\gametypes\_rank::registerScoreInfo( "headshot", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "execution", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "avenger", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "defender", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "posthumous", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "revenge", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "double", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "triple", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "multi", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "buzzkill", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "firstblood", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "comeback", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "longshot", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "assistedsuicide", 0 );
	maps\mp\gametypes\_rank::registerScoreInfo( "knifethrow", 0 );			
	
	maps\mp\gametypes\_rank::registerScoreInfo( "gained_gun_score", 1 );
	maps\mp\gametypes\_rank::registerScoreInfo( "dropped_gun_score", -1 );
	
	maps\mp\gametypes\_rank::registerScoreInfo( "gained_gun_rank", 100 );
	maps\mp\gametypes\_rank::registerScoreInfo( "dropped_enemy_gun_rank", 100 );

	allowed = [];
	maps\mp\gametypes\_gameobjects::main(allowed);
	
	// Prevent class and team change
	setDvar( "ui_allow_classchange", 0 );
	setdvar( "ui_allow_teamchange", 0 );	

	level.QuickMessageToAll = true;
	level.blockWeaponDrops = true;
	
	//	set index on enter	
	level thread onPlayerConnect();	
	
	level.killstreakRewards = false;
}

onPlayerConnect()
{
	for ( ;; )
	{
		level waittill( "connected", player );		
		
		player.gun_firstSpawn = true;
		
		player.gunGameGunIndex = 0;
		player.gunGamePrevGunIndex = 0;
		player initGunHUD();
		
		player.hud_xpEventPopup = player createXpEventPopup();
		
		player thread refillAmmo();
		player thread refillSingleCountAmmo();
		
	}
}

getSpawnPoint()
{
	//	first time here?
	if ( self.gun_firstSpawn )
	{
		self.gun_firstSpawn = false;
		
		//	everyone is a gamemode class in gun, no class selection
		self.pers["class"] = "gamemode";
		self.pers["lastClass"] = "";
		self.class = self.pers["class"];
		self.lastClass = self.pers["lastClass"];
		
		//	random team
		if ( cointoss() )
			self maps\mp\gametypes\_menus::addToTeam( "axis", true );
		else
			self maps\mp\gametypes\_menus::addToTeam( "allies", true );		
	}	

	spawnPoints = maps\mp\gametypes\_spawnlogic::getTeamSpawnPoints( self.pers["team"] );
	spawnPoint = maps\mp\gametypes\_spawnlogic::getSpawnpoint_DM( spawnPoints );

	return spawnPoint;
}

onSpawnPlayer()
{
	//	level.onSpawnPlayer() gets called before giveLoadout()
	//	so wait until it is done then override weapons
	self.pers["gamemodeLoadout"] = level.gun_loadouts[self.pers["team"]];
	self thread waitLoadoutDone();
	
	level notify ( "spawned_player" );	
}

waitLoadoutDone()
{	
	level endon( "game_ended" );
	self endon( "disconnect" );
	
	self waittill( "spawned_player" );
	
	self _setPerk( "specialty_bling", false );
	self giveNextGun( true );
}

onPlayerKilled( eInflictor, attacker, iDamage, sMeansOfDeath, sWeapon, vDir, sHitLoc, psOffsetTime, deathAnimDuration )
{
	if ( sMeansOfDeath == "MOD_FALLING" || ( isDefined( attacker ) && isPlayer( attacker ) ) )
	{
		isMeleeWeapon = maps\mp\gametypes\_weapons::isRiotShield( sWeapon );
			
		if ( sMeansOfDeath == "MOD_FALLING" || attacker == self || ( sMeansOfDeath == "MOD_MELEE" && !isMeleeWeapon ) )
		{			
			self playLocalSound( "mp_war_objective_lost" );
			
			//	drop level for suicide and getting knifed
			self.gunGamePrevGunIndex = self.gunGameGunIndex;
			self.gunGameGunIndex = int( max( 0, self.gunGameGunIndex-1 ) );	
			
			if ( self.gunGamePrevGunIndex > self.gunGameGunIndex )
			{
				self thread xpEventPopup( &"SPLASHES_DROPPED_GUN_RANK" );
				maps\mp\gametypes\_gamescore::givePlayerScore( "dropped_gun_score", self, undefined, true, true );	
			}
			
			if ( sMeansOfDeath == "MOD_MELEE" )
			{
				if ( self.gunGamePrevGunIndex )
				{
					attacker thread xpEventPopup( &"SPLASHES_DROPPED_ENEMY_GUN_RANK" );
					attacker thread maps\mp\gametypes\_rank::giveRankXP( "dropped_enemy_gun_rank" );	
				}		
			}
		}
		else if ( ( sMeansOfDeath == "MOD_PISTOL_BULLET" ) 
				 || ( sMeansOfDeath == "MOD_RIFLE_BULLET" ) 
				 || ( sMeansOfDeath == "MOD_HEAD_SHOT" ) 
				 || ( sMeansOfDeath == "MOD_PROJECTILE" ) || ( sMeansOfDeath == "MOD_PROJECTILE_SPLASH" ) 
				 || ( sMeansOfDeath == "MOD_IMPACT" ) 
				 || ( sMeansOfDeath == "MOD_GRENADE" ) || ( sMeansOfDeath == "MOD_GRENADE_SPLASH" ) 
				 || ( sMeansOfDeath == "MOD_MELEE" && isMeleeWeapon )
				)
		{
			// Prevent sequential kills from counting by validating the primary weapon
			// Let throwing knife kills count even though they're not the primary weapon
			if ( sWeapon != attacker.primaryWeapon )
				return;		
			
			attacker.gunGamePrevGunIndex = attacker.gunGameGunIndex;
			attacker.gunGameGunIndex++;
			
			attacker thread maps\mp\gametypes\_rank::giveRankXP( "gained_gun_rank" );
			maps\mp\gametypes\_gamescore::givePlayerScore( "gained_gun_score", attacker, self, true, true );
			
			if ( attacker.gunGameGunIndex == level.gun_guns.size-1 )
			{
				playSoundOnPlayers( "mp_enemy_obj_captured" );
				level thread teamPlayerCardSplash( "callout_top_gun_rank", attacker );
			}		
				
			if ( attacker.gunGameGunIndex < level.gun_guns.size )
			{
				attacker thread xpEventPopup( &"SPLASHES_GAINED_GUN_RANK" );
				attacker playLocalSound( "mp_war_objective_taken" );
				attacker giveNextGun();
			}
		}
	}
}

giveNextGun( doSetSpawnWeapon )
{	
	//	get the next one
	newWeapon = level.gun_guns[self.gunGameGunIndex];		

	//	add attachments
	newWeapon = addAttachments( newWeapon );

	//	give gun
	self takeAllWeapons();
	_giveWeapon( newWeapon );		
	
	//	set vars
	if ( isDefined( doSetSpawnWeapon ) )
		self setSpawnWeapon( newWeapon );			
	weaponTokens = StrTok( newWeapon, "_" );	
	weaponName = weaponTokens[0];	
		
	self.pers["primaryWeapon"] = weaponName;	
	self.primaryWeapon = newWeapon;
	
	//	use it!
	self GiveStartAmmo( newWeapon );
	self switchToWeapon( newWeapon );		
	
	//	gain/drop scoring/messaging
	if ( self.gunGamePrevGunIndex > self.gunGameGunIndex )
	{
		//	we dropped :(
		self thread xpEventPopup( &"SPLASHES_DROPPED_GUN_RANK" );		
	}
	else if ( self.gunGamePrevGunIndex < self.gunGameGunIndex )
	{
		//	we gained :)
		self thread xpEventPopup( &"SPLASHES_GAINED_GUN_RANK" );		
	}
	self.gunGamePrevGunIndex = self.gunGameGunIndex;
	
	//	update the personal gun progress hud
	self updateGunHUD();
}

addAttachments( weaponName )
{
	if ( isDefined( level.gun_attachments[weaponName] ) && isDefined( level.gun_attachments[weaponName]["attach1"] ) )
		attach1 = level.gun_attachments[weaponName]["attach1"];
	else
		attach1 = "none";
	
	if ( isDefined( level.gun_attachments[weaponName] ) && isDefined( level.gun_attachments[weaponName]["attach2"] ) )
		attach2 = level.gun_attachments[weaponName]["attach2"];
	else
		attach2 = "none";	
	
	fullWeaponName = buildWeaponName( weaponName, attach1, attach2 );
	return fullWeaponName;	
}

onTimeLimit()
{
	level.finalKillCam_winner = "none";
	winners = getHighestProgressedPlayers();
	
	if ( !isDefined( winners ) || !winners.size )
		thread maps\mp\gametypes\_gamelogic::endGame( "tie", game[ "end_reason" ][ "time_limit_reached" ] );	
	else if ( winners.size == 1 )
		thread maps\mp\gametypes\_gamelogic::endGame( winners[0], game[ "end_reason" ][ "time_limit_reached" ] );
	else
	{
		if ( winners[winners.size-1].gunGameGunIndex > winners[winners.size-2].gunGameGunIndex )
			thread maps\mp\gametypes\_gamelogic::endGame( winners[winners.size-1], game[ "end_reason" ][ "time_limit_reached" ] );
		else
			thread maps\mp\gametypes\_gamelogic::endGame( "tie", game[ "end_reason" ][ "time_limit_reached" ] );
	}
}

getHighestProgressedPlayers()
{
	highestProgress = -1;
	highestProgressedPlayers = [];
	foreach( player in level.players )
	{
		if ( isDefined( player.gunGameGunIndex ) && player.gunGameGunIndex >= highestProgress )
		{
			highestProgress = player.gunGameGunIndex;
			highestProgressedPlayers[highestProgressedPlayers.size] = player;
		}
	}
	return highestProgressedPlayers;
}

refillAmmo()
{
	level endon( "game_ended" );
	self  endon( "disconnect" );
	
	while ( true )
	{
		self waittill( "reload" );
		self GiveStartAmmo( self.primaryWeapon );
	}	
}

refillSingleCountAmmo()
{
	level endon( "game_ended" );
	self  endon( "disconnect" );
	
	while ( true )
	{
		if ( isReallyAlive( self ) && self.team != "spectator" && isDefined( self.primaryWeapon ) && self getAmmoCount( self.primaryWeapon ) == 0 )
		{
			//	fake a reload time
			wait( 2 );
			self notify( "reload" );
			wait( 1 );
		}
		else
			wait( 0.05 );
	}	
}

initGunHUD()
{
	self.gun_progressDisplay[0] = self createFontString( "small", 1.6 );	
	self.gun_progressDisplay[0] setPoint( "TOP LEFT", "TOP LEFT", 115, 5 );
	self.gun_progressDisplay[0] setText( &"MP_WEAPON" );
	self.gun_progressDisplay[0].alpha = 1;
	self.gun_progressDisplay[0].archived = false;
	self.gun_progressDisplay[0].hideWhenInMenu = true;	
	
	self.gun_progressDisplay[1] = self createFontString( "small", 1.6 );		
	self.gun_progressDisplay[1] setPoint( "TOP LEFT", "TOP LEFT", 115, 23 );
	self.gun_progressDisplay[1] setText( "1 / " + level.gun_guns.size );
	self.gun_progressDisplay[1].alpha = 1;
	self.gun_progressDisplay[1].archived = false;
	self.gun_progressDisplay[1].hideWhenInMenu = true;	
	
	thread hideOnGameEnd();
	thread hideInKillCam();
}

updateGunHUD()
{
	self.gun_progressDisplay[1] setText( (self.gunGameGunIndex+1) + " / " + level.gun_guns.size );
}

hideInKillCam()
{
    self endon( "disconnect" );
    var_0 = 1;

    for (;;)
    {
        if ( var_0 && ( !isalive( self ) || isinkillcam() ) )
        {
            self.gun_progressdisplay[0].alpha = 0;
            self.gun_progressdisplay[1].alpha = 0;
            var_0 = 0;
        }
        else if ( !var_0 && ( isalive( self ) && !isinkillcam() ) )
        {
            self.gun_progressdisplay[0].alpha = 1;
            self.gun_progressdisplay[1].alpha = 1;
            var_0 = 1;
        }

        wait 0.05;
    }
}

hideOnGameEnd()
{
    self endon( "disconnect" );
    level waittill( "game_ended" );
	
    self.gun_progressDisplay[0].alpha = 0;
    self.gun_progressDisplay[1].alpha = 0;
}

setGuns()
{	
	level.gun_guns = [];
	
	//	hand guns
	level.gun_guns[0]  = "deserteagle";	
	//	machine pistols
	level.gun_guns[1]  = "glock";
	level.gun_guns[2]  = "tmp";
	//	sub
	level.gun_guns[3]  = "mp5k";
	level.gun_guns[4]  = "p90";
	level.gun_guns[5]  = "kriss";			
	//	assault - auto
	level.gun_guns[6]  = "ak47";
	level.gun_guns[7]  = "masada";
	level.gun_guns[8]  = "scar";		
	//	lmg
	level.gun_guns[9]  = "sa80";
	level.gun_guns[10] = "aug";
	//	shotgun
	level.gun_guns[11] = "spas12";
	level.gun_guns[12] = "aa12";
	level.gun_guns[13] = "model1887";
	//	assault - burst
	level.gun_guns[14] = "famas";
	level.gun_guns[15] = "m16";	
	//	sniper
	level.gun_guns[16] = "barrett";
	level.gun_guns[17] = "cheytac";	
	//	launcher
	level.gun_guns[18] = "m79";
	level.gun_guns[19] = "javelin";
	
	//	default attachments for all guns that take them
	level.gun_attachments = [];
	//	pistol
	level.gun_attachments["coltanaconda"]["attach1"] = "tactical";
	level.gun_attachments["usp"]["attach1"] = "tactical";
	level.gun_attachments["deserteagle"]["attach1"] = "tactical";
	level.gun_attachments["deserteaglegold"]["attach1"] = "tactical";
	level.gun_attachments["beretta"]["attach1"] = "tactical";
	//	machine pistol
	level.gun_attachments["tmp"]["attach1"] = "reflex";
	level.gun_attachments["glock"]["attach1"] = "reflex";
	level.gun_attachments["pp2000"]["attach1"] = "reflex";
	level.gun_attachments["beretta393"]["attach1"] = "reflex";
	//	smg
	level.gun_attachments["mp5k"]["attach1"] = "reflex";
	level.gun_attachments["mp5k"]["attach2"] = "xmags";
	level.gun_attachments["uzi"]["attach1"] = "reflex";
	level.gun_attachments["uzi"]["attach2"] = "xmags";
	level.gun_attachments["p90"]["attach1"] = "reflex";
	level.gun_attachments["p90"]["attach2"] = "xmags";
	level.gun_attachments["kriss"]["attach1"] = "reflex";
	level.gun_attachments["kriss"]["attach2"] = "xmags";
	level.gun_attachments["ump45"]["attach1"] = "reflex";
	level.gun_attachments["ump45"]["attach2"] = "xmags";
	level.gun_attachments["ak74u"]["attach1"] = "reflex";
	level.gun_attachments["ak74u"]["attach2"] = "xmags";
	//	assault
	level.gun_attachments["ak47"]["attach1"] = "reflex";
	level.gun_attachments["ak47"]["attach2"] = "xmags";
	level.gun_attachments["ak47classic"]["attach1"] = "reflex";
	level.gun_attachments["ak47classic"]["attach2"] = "xmags";
	level.gun_attachments["m16"]["attach1"] = "reflex";
	level.gun_attachments["m16"]["attach2"] = "xmags";
	level.gun_attachments["m4"]["attach1"] = "reflex";
	level.gun_attachments["m4"]["attach2"] = "xmags";
	level.gun_attachments["fn2000"]["attach1"] = "reflex";
	level.gun_attachments["fn2000"]["attach2"] = "xmags";
	level.gun_attachments["masada"]["attach1"] = "reflex";
	level.gun_attachments["masada"]["attach2"] = "xmags";
	level.gun_attachments["famas"]["attach1"] = "reflex";
	level.gun_attachments["famas"]["attach2"] = "xmags";
	level.gun_attachments["fal"]["attach1"] = "reflex";
	level.gun_attachments["fal"]["attach2"] = "xmags";
	level.gun_attachments["scar"]["attach1"] = "reflex";
	level.gun_attachments["scar"]["attach2"] = "xmags";
	level.gun_attachments["tavor"]["attach1"] = "reflex";
	level.gun_attachments["tavor"]["attach2"] = "xmags";
	level.gun_attachments["tavor"]["attach1"] = "reflex";
	level.gun_attachments["tavor"]["attach2"] = "xmags";
	//	sniper
	level.gun_attachments["barrett"]["attach1"] = "xmags";
	level.gun_attachments["wa2000"]["attach1"] = "xmags";
	level.gun_attachments["m21"]["attach1"] = "xmags";
	level.gun_attachments["cheytac"]["attach1"] = "xmags";
	level.gun_attachments["dragunov"]["attach1"] = "xmags";
	level.gun_attachments["m40a3"]["attach1"] = "xmags";
	//	shotgun
	level.gun_attachments["ranger"]["attach1"] = "akimbo";
	level.gun_attachments["model1887"]["attach1"] = "akimbo";
	level.gun_attachments["striker"]["attach1"] = "grip";
	level.gun_attachments["striker"]["attach2"] = "xmags";
	level.gun_attachments["aa12"]["attach1"] = "grip";
	level.gun_attachments["aa12"]["attach2"] = "xmags";
	level.gun_attachments["m1014"]["attach1"] = "grip";
	level.gun_attachments["m1014"]["attach2"] = "xmags";
	level.gun_attachments["spas12"]["attach1"] = "grip";
	level.gun_attachments["spas12"]["attach2"] = "xmags";
	//	lmg
	level.gun_attachments["rpd"]["attach1"] = "grip";
	level.gun_attachments["rpd"]["attach2"] = "reflex";
	level.gun_attachments["sa80"]["attach1"] = "grip";
	level.gun_attachments["sa80"]["attach2"] = "reflex";
	level.gun_attachments["mg4"]["attach1"] = "grip";
	level.gun_attachments["mg4"]["attach2"] = "reflex";
	level.gun_attachments["m240"]["attach1"] = "grip";
	level.gun_attachments["m240"]["attach2"] = "reflex";
	level.gun_attachments["aug"]["attach1"] = "grip";
	level.gun_attachments["aug"]["attach2"] = "reflex";
}

setSpecialLoadout()
{	
	//	no killstreaks defined for special classes		
	level.gun_loadouts["axis"]["loadoutPrimary"] = "masada";	//  can't use "none" for primary, this is replaced on spawn anyway
	level.gun_loadouts["axis"]["loadoutPrimaryAttachment"] = "none";
	level.gun_loadouts["axis"]["loadoutPrimaryAttachment2"] = "none";
	level.gun_loadouts["axis"]["loadoutPrimaryCamo"] = "none";
	
	level.gun_loadouts["axis"]["loadoutSecondary"] = "none";
	level.gun_loadouts["axis"]["loadoutSecondaryAttachment"] = "none";
	level.gun_loadouts["axis"]["loadoutSecondaryAttachment2"] = "none";
	level.gun_loadouts["axis"]["loadoutSecondaryCamo"] = "none";
	
	level.gun_loadouts["axis"]["loadoutEquipment"] = "specialty_null";
	level.gun_loadouts["axis"]["loadoutOffhand"] = "none";
	level.gun_loadouts["axis"]["loadoutPerk1"] = "specialty_null";
    level.gun_loadouts["axis"]["loadoutPerk2"] = "specialty_null";
    level.gun_loadouts["axis"]["loadoutPerk3"] = "specialty_null";
	
	//	FFA games don't have teams, but players are allowed to choose team on the way in
	//	just for character model and announcer voice variety.  Same loadout for both.	
	level.gun_loadouts["allies"] = level.gun_loadouts["axis"];
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

xpEventPopup( event, hudColor, glowAlpha )
{
	self endon( "disconnect" );
	self endon( "joined_team" );
	self endon( "joined_spectators" );

	self notify( "xpEventPopup" );
	self endon( "xpEventPopup" );

	wait ( 0.05 );
		
	if ( !isDefined( hudColor ) )
		hudColor = (1,1,0.5);
	if ( !isDefined( glowAlpha ) )
		glowAlpha = 0;

	self.hud_xpEventPopup.color = hudColor;
	self.hud_xpEventPopup.glowColor = hudColor;
	self.hud_xpEventPopup.glowAlpha = glowAlpha;

	self.hud_xpEventPopup setText(event);
	self.hud_xpEventPopup.alpha = 0.85;

	wait ( 1.0 );
	
	self.hud_xpEventPopup fadeOverTime( 0.75 );
	self.hud_xpEventPopup.alpha = 0;	
}