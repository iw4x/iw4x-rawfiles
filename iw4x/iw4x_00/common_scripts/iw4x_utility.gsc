/*
=============
///ScriptDocBegin
"Name: _noclip()"
"Summary: noclip used on a player entity will make them fly and clip through walls."
"Module: IW4x Utility"
"CallOn: An entity"
"Example: level.player _noclip();"
"SPMP: multiplayer"
///ScriptDocEnd
=============
*/
_noclip()
{
	if ( self.clientflags & 1 )
	{
		self iprintln( &"GAME_NOCLIPOFF" );
		self.clientflags &= ~1;
	}
	else
	{
		self iprintln( &"GAME_NOCLIPON" );
		self.clientflags |= 1;
	}
}

/*
=============
///ScriptDocBegin
"Name: _ufo()"
"Summary: ufo used on a player entity will make them fly and clip through walls."
"Module: IW4x Utility"
"CallOn: An entity"
"Example: level.player _ufo();"
"SPMP: multiplayer"
///ScriptDocEnd
=============
*/
_ufo()
{
	if ( self.clientflags & 2 )
	{
		self iprintln( &"GAME_UFOOFF" );
		self.clientflags &= ~2;
	}
	else
	{
		self iprintln( &"GAME_UFOON" );
		self.clientflags |= 2;
	}
}

/*
=============
///ScriptDocBegin
"Name: god()"
"Summary: god used on a entity will make them immune to damage."
"Module: IW4x Utility"
"CallOn: An entity"
"Example: level.player god();"
"SPMP: multiplayer"
///ScriptDocEnd
=============
*/
god()
{
	FL_GODMODE = 1 << 0;
	msg = &"";

	if ( self.entityflags & FL_GODMODE )
	{
		msg = &"GAME_GODMODE_OFF";
		self.entityflags &= ~FL_GODMODE;
	}
	else
	{
		msg = &"GAME_GODMODE_ON";
		self.entityflags |= FL_GODMODE;
	}

	if ( isPlayer( self ) )
	{
		self iprintln( msg );
	}
}

/*
=============
///ScriptDocBegin
"Name: demiGod()"
"Summary: demiGod used on a entity will make them immune to damage but will still flinch."
"Module: IW4x Utility"
"CallOn: An entity"
"Example: level.player demiGod();"
"SPMP: multiplayer"
///ScriptDocEnd
=============
*/
demiGod()
{
	FL_DEMI_GODMODE = 1 << 1;
	msg = &"";

	if ( self.entityflags & FL_DEMI_GODMODE )
	{
		msg = &"GAME_DEMI_GODMODE_OFF";
		self.entityflags &= ~FL_DEMI_GODMODE;
	}
	else
	{
		msg = &"GAME_DEMI_GODMODE_ON";
		self.entityflags |= FL_DEMI_GODMODE;
	}

	if ( isPlayer( self ) )
	{
		self iprintln( msg );
	}
}

/*
=============
///ScriptDocBegin
"Name: noTarget()"
"Summary: noTarget used on a entity will make the AI ignore them."
"Module: IW4x Utility"
"CallOn: An entity"
"Example: level.player noTarget();"
"SPMP: singleplayer"
///ScriptDocEnd
=============
*/
noTarget()
{
	FL_NOTARGET = 1 << 2;
	msg = &"";

	if ( self.entityflags & FL_NOTARGET )
	{
		msg = &"GAME_NOTARGETOFF";
		self.entityflags &= ~FL_NOTARGET;
	}
	else
	{
		msg = &"GAME_NOTARGETON";
		self.entityflags |= FL_NOTARGET;
	}

	if ( isPlayer( self ) )
	{
		self iprintln( msg );
	}
}
