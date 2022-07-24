/*
=============
///ScriptDocBegin
"Name: noclip()"
"Summary: noclip used on a player entity will make them fly and clip through walls."
"Module: IW4x Utility"
"CallOn: An entity"
"Example: level.player noclip();"
"SPMP: multiplayer"
///ScriptDocEnd
=============
*/
noclip()
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
"Name: ufo()"
"Summary: ufo used on a player entity will make them fly and clip through walls."
"Module: IW4x Utility"
"CallOn: An entity"
"Example: level.player ufo();"
"SPMP: multiplayer"
///ScriptDocEnd
=============
*/
ufo()
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

	if ( self.entityflags & FL_GODMODE )
	{
		self.entityflags &= ~FL_GODMODE;
	}
	else
	{
		self.entityflags |= FL_GODMODE;
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

	if ( self.entityflags & FL_DEMI_GODMODE )
	{
		self.entityflags &= ~FL_DEMI_GODMODE;
	}
	else
	{
		self.entityflags |= FL_DEMI_GODMODE;
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

	if ( self.entityflags & FL_NOTARGET )
	{
		self.entityflags &= ~FL_NOTARGET;
	}
	else
	{
		self.entityflags |= FL_NOTARGET;
	}
}
