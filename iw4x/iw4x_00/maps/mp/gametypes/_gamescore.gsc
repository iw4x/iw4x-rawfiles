#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include common_scripts\utility;


getHighestScoringPlayer()
{
	updatePlacement();
	
	if ( !level.placement["all"].size )
		return ( undefined );
	else 
		return ( level.placement["all"][0] );
}


getLosingPlayers()
{
	updatePlacement();
	
	players = level.placement["all"];
	losingPlayers = [];
	
	foreach ( player in players )
	{
		if ( player == level.placement["all"][0] )
			continue;
		
		losingPlayers[losingPlayers.size] = player;
	}

	return losingPlayers;
}


givePlayerScore( event, player, victim, overrideCheckPlayerScoreLimitSoon, overridePointsPopup )
{
	if ( isDefined( level.nukeIncoming ) )
		return;
	
	if ( !isDefined( overrideCheckPlayerScoreLimitSoon ) )
		overrideCheckPlayerScoreLimitSoon = false;
		
	if ( !isDefined( overridePointsPopup ) )
		overridePointsPopup = false;	
	
	score = player.pers["score"];
	onPlayerScore( event, player, victim );
	
	if ( score == player.pers["score"] )
		return;

	if ( !player rankingEnabled() && !level.hardcoreMode && !overridePointsPopup )
		player thread maps\mp\gametypes\_rank::scorePopup( (player.pers["score"] - score), false, (0.85,0.85,0.85), 0 );
	
	player maps\mp\gametypes\_persistence::statAdd( "score", (player.pers["score"] - score) );
	
	player.score = player.pers["score"];
	player maps\mp\gametypes\_persistence::statSetChild( "round", "score", player.score );
	
	if ( !level.teambased )
		thread sendUpdatedDMScores();
	
	//	player score and team score aren't always the same values towards winning the match
	//	checkScoreLimit() checks team score correctly, checkPlayerScoreLimitSoon() uses player score
	if ( !overrideCheckPlayerScoreLimitSoon )
		player maps\mp\gametypes\_gamelogic::checkPlayerScoreLimitSoon();
		
	scoreEndedMatch = player maps\mp\gametypes\_gamelogic::checkScoreLimit();
	
	if ( scoreEndedMatch && event == "kill" )
		player.finalKill = true;
}


onPlayerScore( event, player, victim )
{
	score = maps\mp\gametypes\_rank::getScoreInfoValue( event );
	
	assert( isDefined( score ) );
	
	player.pers["score"] += score * level.objectivePointsMod;
}


// Seems to only be used for reducing a player's score due to suicide
_setPlayerScore( player, score )
{
	if ( score == player.pers["score"] )
		return;

	player.pers["score"] = score;
	player.score = player.pers["score"];

	player thread maps\mp\gametypes\_gamelogic::checkScoreLimit();
}


_getPlayerScore( player )
{
	return player.pers["score"];
}


giveTeamScoreForObjective( team, score )
{
	if ( isDefined( level.nukeIncoming ) )
		return;

	score *= level.objectivePointsMod;
	
	teamScore = game["teamScores"][team];
	
	otherTeam = level.otherTeam[team];
	
	if ( game["teamScores"][team] > game["teamScores"][otherTeam] )
		level.wasWinning = team;
	else if ( game["teamScores"][otherTeam] > game["teamScores"][team] )
		level.wasWinning = otherTeam;
		
	_setTeamScore( team, _getTeamScore( team ) + score );

	isWinning = "none";
	if ( game["teamScores"][team] > game["teamScores"][otherTeam] )
		isWinning = team;
	else if ( game["teamScores"][otherTeam] > game["teamScores"][team] )
		isWinning = otherTeam;

	if ( !level.splitScreen && isWinning != "none" && isWinning != level.wasWinning && getTime() - level.lastStatusTime  > 5000 && getScoreLimit() != 1 )
	{
		level.lastStatusTime = getTime();
		leaderDialog( "lead_taken", isWinning, "status" );
		if ( level.wasWinning != "none")
			leaderDialog( "lead_lost", level.wasWinning, "status" );
	}

	if ( isWinning != "none" )
		level.wasWinning = isWinning;
}


getWinningTeam()
{
	if ( game["teamScores"]["allies"] > game["teamScores"]["axis"] )
		return ( "allies" );
	else if ( game["teamScores"]["allies"] < game["teamScores"]["axis"] )
		return ( "axis" );
		
	return ( "none" );
}

_setTeamScore( team, teamScore )
{
	if ( teamScore == game["teamScores"][team] )
		return;

	if ( isDefined( level.nukeIncoming ) )
		return;

	game["teamScores"][team] = teamScore;
	
	updateTeamScore( team );
	
	if ( game["status"] == "overtime" )
		thread maps\mp\gametypes\_gamelogic::onScoreLimit();
	else
	{
		thread maps\mp\gametypes\_gamelogic::checkTeamScoreLimitSoon( team );
		thread maps\mp\gametypes\_gamelogic::checkScoreLimit();
	}
}


updateTeamScore( team )
{
	assert( level.teamBased );
	
	teamScore = 0;
	if ( !isRoundBased() || !isObjectiveBased() )
		teamScore = _getTeamScore( team );
	else
		teamScore = game["roundsWon"][team];
	
	setTeamScore( team, teamScore );

	//thread sendUpdatedTeamScores();
}


_getTeamScore( team )
{
	return game["teamScores"][team];
}


sendUpdatedTeamScores()
{
	level notify("updating_scores");
	level endon("updating_scores");
	wait .05;
	
	WaitTillSlowProcessAllowed();

	foreach ( player in level.players )
		player updateScores();
}

sendUpdatedDMScores()
{
	level notify("updating_dm_scores");
	level endon("updating_dm_scores");
	wait .05;
	
	WaitTillSlowProcessAllowed();
	
	for ( i = 0; i < level.players.size; i++ )
	{
		level.players[i] updateDMScores();
		level.players[i].updatedDMScores = true;
	}
}


removeDisconnectedPlayerFromPlacement()
{
	offset = 0;
	numPlayers = level.placement["all"].size;
	found = false;
	for ( i = 0; i < numPlayers; i++ )
	{
		if ( level.placement["all"][i] == self )
			found = true;
		
		if ( found )
			level.placement["all"][i] = level.placement["all"][ i + 1 ];
	}
	if ( !found )
		return;
	
	level.placement["all"][ numPlayers - 1 ] = undefined;
	assert( level.placement["all"].size == numPlayers - 1 );

	if ( level.teamBased )
	{
		updateTeamPlacement();
		return;
	}
		
	numPlayers = level.placement["all"].size;
	for ( i = 0; i < numPlayers; i++ )
	{
		player = level.placement["all"][i];
		player notify( "update_outcome" );
	}
	
}

updatePlacement()
{
	prof_begin("updatePlacement");
	
	placementAll = [];
	foreach ( player in level.players )
	{
		if ( isDefined( player.connectedPostGame ) || (player.pers["team"] != "allies" && player.pers["team"] != "axis") )
			continue;
			
		placementAll[placementAll.size] = player;
	}
	
	for ( i = 1; i < placementAll.size; i++ )
	{
		player = placementAll[i];
		playerScore = player.score;
//		for ( j = i - 1; j >= 0 && (player.score > placementAll[j].score || (player.score == placementAll[j].score && player.deaths < placementAll[j].deaths)); j-- )
		for ( j = i - 1; j >= 0 && getBetterPlayer( player, placementAll[j] ) == player; j-- )
			placementAll[j + 1] = placementAll[j];
		placementAll[j + 1] = player;
	}
	
	level.placement["all"] = placementAll;
	
	if ( level.teamBased )
		updateTeamPlacement();

	prof_end("updatePlacement");
}


getBetterPlayer( playerA, playerB )
{
	if ( playerA.score > playerB.score )
		return playerA;
		
	if ( playerB.score > playerA.score )
		return playerB;
		
	if ( playerA.deaths < playerB.deaths )
		return playerA;
		
	if ( playerB.deaths < playerA.deaths )
		return playerB;
		
	// TODO: more metrics for getting the better player
		
	if ( cointoss() )
		return playerA;
	else
		return playerB;
}


updateTeamPlacement()
{
	placement["allies"]    = [];
	placement["axis"]      = [];
	placement["spectator"] = [];

	assert( level.teamBased );
	
	placementAll = level.placement["all"];
	placementAllSize = placementAll.size;
	
	for ( i = 0; i < placementAllSize; i++ )
	{
		player = placementAll[i];
		team = player.pers["team"];
		
		placement[team][ placement[team].size ] = player;
	}
	
	level.placement["allies"] = placement["allies"];
	level.placement["axis"]   = placement["axis"];
}


initialDMScoreUpdate()
{
	// the first time we call updateDMScores on a player, we have to send them the whole scoreboard.
	// by calling updateDMScores on each player one at a time,
	// we can avoid having to send the entire scoreboard to every single player
	// the first time someone kills someone else.
	wait .2;
	numSent = 0;
	while(1)
	{
		didAny = false;
		
		players = level.players;
		for ( i = 0; i < players.size; i++ )
		{
			player = players[i];
			
			if ( !isdefined( player ) )
				continue;
			
			if ( isdefined( player.updatedDMScores ) )
				continue;
			
			player.updatedDMScores = true;
			player updateDMScores();
			
			didAny = true;
			wait .5;
		}
		
		if ( !didAny )
			wait 3; // let more players connect
	}
}


processAssist( killedplayer )
{
	self endon("disconnect");
	killedplayer endon("disconnect");
	
	wait .05; // don't ever run on the same frame as the playerkilled callback.
	WaitTillSlowProcessAllowed();
	
	if ( self.pers["team"] != "axis" && self.pers["team"] != "allies" )
		return;
	
	if ( self.pers["team"] == killedplayer.pers["team"] )
		return;
	
	self thread [[level.onXPEvent]]( "assist" );
	self incPersStat( "assists", 1 );
	self.assists = self getPersStat( "assists" );
	self incPlayerStat( "assists", 1 );
	
	givePlayerScore( "assist", self, killedplayer );
	self thread giveAdrenaline( "assist" );
	
	self thread maps\mp\gametypes\_missions::playerAssist();
}

processShieldAssist( killedPlayer )
{
	self endon( "disconnect" );
	killedPlayer endon( "disconnect" );
	
	wait .05; // don't ever run on the same frame as the playerkilled callback.
	WaitTillSlowProcessAllowed();
	
	if ( self.pers["team"] != "axis" && self.pers["team"] != "allies" )
		return;
	
	if ( self.pers["team"] == killedplayer.pers["team"] )
		return;
	
	self thread [[level.onXPEvent]]( "assist" );
	self thread [[level.onXPEvent]]( "assist" );
	self incPersStat( "assists", 1 );
	self.assists = self getPersStat( "assists" );
	self incPlayerStat( "assists", 1 );
	
	givePlayerScore( "assist", self, killedplayer );

	self thread maps\mp\gametypes\_hud_message::SplashNotifyDelayed( "shield_assist" );		
	
	self thread maps\mp\gametypes\_missions::playerAssist();
}