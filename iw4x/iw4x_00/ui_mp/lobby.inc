itemDef
{
	name "party_hint_area"
	rect 0 188 216 36 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP
	decoration
	autoWrapped
	visible 1
	foreColor 1 1 1 0.65
	type 21
	textFont UI_FONT_SMALL
	textAlign ITEM_ALIGN_TOP_RIGHT
	textAlignX -2
	textScale CHOICE_TEXTSIZE
	visible when (!localVarBool("ui_centerPopup") && !localVarBool("ui_leftPopup"))
	exp text (localVarString("ui_hint_text"))
}
itemDef
{
	rect -272 0 0 18 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_FILLED
	foreColor CHOICE_TEXTCOLOR
	background "white"
	textfont UI_FONT_SMALL
	textAlign ITEM_ALIGN_TOP_LEFT
	textAlignX 20
	textscale CHOICE_TEXTSIZE
	exp text (getpartystatus())
}
itemDef
{
	rect -272 12 0 18 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_FILLED
	foreColor 1 1 1 0.65
	background "white"
	textfont UI_FONT_SMALL
	textAlign ITEM_ALIGN_TOP_LEFT
	textAlignX 20
	textscale CHOICE_TEXTSIZE
	visible when (!(dvarBool("party_teamsVisible") && dvarBool("party_teamBased")))
	exp text (getsearchparams())
}

itemDef
{
	rect -272 -24 272 18 HORIZONTAL_ALIGN_RIGHT 3
	decoration
	visible 1
	style 1
	forecolor 1 1 1 0.15
	background "white"
	textfont 9
	textalign 6
	textscale 0.5833
	dvar "party_lobbyPlayerCount"
	visible when ( !( ( getplayercardinfo( 0 , 3 , 17 ) != 0 ) ) )
}
itemDef
{
	rect -272 0 272 28 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	forecolor 1 1 1 0.15
	textfont 3
	textalign 14
	textaligny 3
	textScale CHOICE_TEXTSIZE
	text "@MPUI_SCORE_CAPS"
}
itemDef
{
	rect -272 28 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 0 ) != 0 ) )
}
itemDef
{
	rect -272 48 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 1 ) != 0 ) )
}
itemDef
{
	rect -272 68 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 2 ) != 0 ) )
}
itemDef
{
	rect -272 88 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 3 ) != 0 ) )
}
itemDef
{
	rect -272 108 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 4 ) != 0 ) )
}
itemDef
{
	rect -272 128 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 5 ) != 0 ) )
}
itemDef
{
	rect -272 148 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 6 ) != 0 ) )
}
itemDef
{
	rect -272 168 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 7 ) != 0 ) )
}
itemDef
{
	rect -272 188 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 8 ) != 0 ) )
}
itemDef
{
	rect -272 208 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 9 ) != 0 ) )
}
itemDef
{
	rect -272 228 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 10 ) != 0 ) )
}
itemDef
{
	rect -272 248 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 11 ) != 0 ) )
}
itemDef
{
	rect -272 268 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 12 ) != 0 ) )
}
itemDef
{
	rect -272 288 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 13 ) != 0 ) )
}
itemDef
{
	rect -272 308 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 14 ) != 0 ) )
}
itemDef
{
	rect -272 328 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 15 ) != 0 ) )
}
itemDef
{
	rect -272 348 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 16 ) != 0 ) )
}
itemDef
{
	rect -272 368 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "playercard_short_bg"
	textscale 0.55
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 3 , 17 ) != 0 ) )
}
itemDef
{
	rect -272 28 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 0 ) != 0 ) && 4 == 4 )
}
itemDef
{
	rect -272 28 272 20 3 1
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 0 ) != 0 ) && 4 == 5 )
}
itemDef
{
	rect -272 48 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 1 ) != 0 ) && 4 == 4 )
}
itemDef
{
	rect -272 48 272 20 3 1
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 1 ) != 0 ) && 4 == 5 )
}
itemDef
{
	rect -272 68 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 2 ) != 0 ) && 4 == 4 )
}
itemDef
{
	rect -272 68 272 20 3 1
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 2 ) != 0 ) && 4 == 5 )
}
itemDef
{
	rect -272 88 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 3 ) != 0 ) && 4 == 4 )
}
itemDef
{
	rect -272 88 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 3 ) != 0 ) && 4 == 5 )
}
itemDef
{
	rect -272 108 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 4 ) != 0 ) && 4 == 4 )
}
itemDef
{
	rect -272 108 272 20 3 1
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 4 ) != 0 ) && 4 == 5 )
}
itemDef
{
	rect -272 128 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 5 ) != 0 ) && 4 == 4 )
}
itemDef
{
	rect -272 128 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 5 ) != 0 ) && 4 == 5 )
}
itemDef
{
	rect -272 148 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 6 ) != 0 ) && 4 == 4 )
}
itemDef
{
	rect -272 148 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 6 ) != 0 ) && 4 == 5 )
}
itemDef
{
	rect -272 168 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 7 ) != 0 ) && 4 == 4 )
}
itemDef
{
	rect -272 168 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 7 ) != 0 ) && 4 == 5 )
}
itemDef
{
	rect -272 188 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 8 ) != 0 ) && 4 == 4 )
}
itemDef
{
	rect -272 188 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 4 , 8 ) != 0 ) && 4 == 5 )
}
itemDef
{
	rect -272 208 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 0 ) != 0 ) && 5 == 4 )
}
itemDef
{
	rect -272 208 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 0 ) != 0 ) && 5 == 5 )
}
itemDef
{
	rect -272 228 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 1 ) != 0 ) && 5 == 4 )
}
itemDef
{
	rect -272 228 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 1 ) != 0 ) && 5 == 5 )
}
itemDef
{
	rect -272 248 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 2 ) != 0 ) && 5 == 4 )
}
itemDef
{
	rect -272 248 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 2 ) != 0 ) && 5 == 5 )
}
itemDef
{
	rect -272 268 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 3 ) != 0 ) && 5 == 4 )
}
itemDef
{
	rect -272 268 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 3 ) != 0 ) && 5 == 5 )
}
itemDef
{
	rect -272 288 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 4 ) != 0 ) && 5 == 4 )
}
itemDef
{
	rect -272 288 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 4 ) != 0 ) && 5 == 5 )
}
itemDef
{
	rect -272 308 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 5 ) != 0 ) && 5 == 4 )
}
itemDef
{
	rect -272 308 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 5 ) != 0 ) && 5 == 5 )
}
itemDef
{
	rect -272 328 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 6 ) != 0 ) && 5 == 4 )
}
itemDef
{
	rect -272 328 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 6 ) != 0 ) && 5 == 5 )
}
itemDef
{
	rect -272 348 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 7 ) != 0 ) && 5 == 4 )
}
itemDef
{
	rect -272 348 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 7 ) != 0 ) && 5 == 5 )
}
itemDef
{
	rect -272 368 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 8 ) != 0 ) && 5 == 4 )
}
itemDef
{
	rect -272 368 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.5
	background "playercard_short_bg"
	textscale 0.55
	exp forecolor r ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 14 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 14 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor g ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 15 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 15 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	exp forecolor b ( ( ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "allieschar" ) , 16 ) * ( player( "teamname" ) == "TEAM_AXIS" ) ) + ( tablelookup( "mp/factionTable.csv" , 0 , getmapcustom( "axischar" ) , 16 ) * ( player( "teamname" ) == "TEAM_ALLIES" ) ) ) )
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) && ( getplayercardinfo( 0 , 5 , 8 ) != 0 ) && 5 == 5 )
}
itemDef
{
	rect -272 0 272 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 1
	background "playercard_short_bg"
	textscale 0.55
	exp rect y ( 28 + ( dvarint( "party_selectedIndex" ) * 20 ) )
	visible when ( ( dvarbool( "party_listFocus" ) && !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) ) && ( getplayercardinfo( 0 , 3 , dvarint( "party_selectedIndex" ) ) != 0 ) )
}
itemDef
{
	name "lobbyList"
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_ENEMY_MEMBERS_RANK
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		0		0		1		  0
	noscrollbars
	/*doubleClick
	{
		play "mouse_click"; open "player_popup_publiclobby";
	}*/
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_LOBBY_MEMBERS
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		38		16		40		  0
	noscrollbars
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder 31
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		38		16		40		  0
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny 178
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_MYTEAM_MEMBERS_TALK
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		38		16		40		  0
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textalignx 20
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_ONLINEFRIENDS
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 2		194		20		3		  1
					194		20		3		  1
	noscrollbars
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textalignx 20
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder 42
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 2		194		20		3		  1
					194		20		3		  1
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 207 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textalignx 20
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_PARTY_MEMBERS_RANK
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 2		194		20		3		  1
					194		20		3		  1
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	forecolor 1 1 1 0.65
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_ENEMY_MEMBERS_TALK
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		230		40		4		  2
	noscrollbars
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	forecolor 1 1 1 0.65
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_LOBBY_MEMBERS_STAT
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		230		40		4		  2
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	forecolor 1 1 1 0.65
	type ITEM_TYPE_LISTBOX
	textaligny 178
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_MYTEAM_MEMBERS_STAT
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		230		40		4		  2
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder 45
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		-20		16		40		  2
	noscrollbars
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder 46
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		-20		16		40		  2
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny 178
	textScale CHOICE_TEXTSIZE
	feeder 47
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		-20		16		40		  2
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect 0 0 272 40 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	forecolor 0.25 0.25 0.25 1
	background "playercard_bg"
	textscale 0.55
	exp rect x ( - 268 )
	exp rect y ( 28 + ( dvarint( "party_selectedIndex" ) * 20 ) - 10 )
	visible when ( ( dvarbool( "party_listFocus" ) && !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) ) && ( getplayercardinfo( 0 , 3 , dvarint( "party_selectedIndex" ) ) != 0 ) )
}
itemDef
{
	rect 0 0 160 32 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style 1
	foreColor CHOICE_TEXTCOLOR
	backcolor 1 1 1 1
	textfont 3
	textalign 9
	textScale CHOICE_TEXTSIZE
	exp rect x ( - 248 )
	exp rect y ( 28 + ( dvarint( "party_selectedIndex" ) * 20 ) - 10 - 4 )
	exp forecolor r ( tablelookupbyrow( "mp/cardTitleTable.csv" , getplayercardinfo( 1 , 3 , dvarint( "party_selectedIndex" ) ) , 3 ) )
	exp forecolor g ( tablelookupbyrow( "mp/cardTitleTable.csv" , getplayercardinfo( 1 , 3 , dvarint( "party_selectedIndex" ) ) , 4 ) )
	exp forecolor b ( tablelookupbyrow( "mp/cardTitleTable.csv" , getplayercardinfo( 1 , 3 , dvarint( "party_selectedIndex" ) ) , 5 ) )
	visible when ( ( dvarbool( "party_listFocus" ) && !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) ) && ( getplayercardinfo( 0 , 3 , dvarint( "party_selectedIndex" ) ) != 0 ) )
	exp text ( "@" + tablelookupbyrow( "mp/cardTitleTable.csv" , getplayercardinfo( 1 , 3 , dvarint( "party_selectedIndex" ) ) , 1 ) )
	exp material ( tablelookupbyrow( "mp/cardTitleTable.csv" , getplayercardinfo( 1 , 3 , dvarint( "party_selectedIndex" ) ) , 2 ) )
}
itemDef
{
	rect 0 0 248 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	textfont 10
	textalign 4
	textalignx 10
	textaligny 4
	textscale 0.3333
	exp rect x ( ( - 248 ) )
	exp rect y ( ( 28 + ( dvarint( "party_selectedIndex" ) * 20 ) - 10 ) + 20 )
	visible when ( ( dvarbool( "party_listFocus" ) && !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) ) && ( getplayercardinfo( 0 , 3 , dvarint( "party_selectedIndex" ) ) != 0 ) )
	exp text ( getplayercardinfo( 8 , 3 , dvarint( "party_selectedIndex" ) ) )
}
itemDef
{
	rect 0 0 40 40 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	foreColor CHOICE_TEXTCOLOR
	textscale 0.55
	exp rect x ( ( - 248 ) + 160 )
	exp rect y ( ( 28 + ( dvarint( "party_selectedIndex" ) * 20 ) - 10 ) )
	visible when ( ( dvarbool( "party_listFocus" ) && !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) ) && ( getplayercardinfo( 0 , 3 , dvarint( "party_selectedIndex" ) ) != 0 ) )
	exp material ( tablelookupbyrow( "mp/cardIconTable.csv" , getplayercardinfo( 2 , 3 , dvarint( "party_selectedIndex" ) ) , 1 ) )
}
itemDef
{
	rect 0 0 20 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	style WINDOW_STYLE_SHADER
	foreColor CHOICE_TEXTCOLOR
	textscale 0.55
	exp rect x ( ( - 248 ) + 204 )
	exp rect y ( ( 28 + ( dvarint( "party_selectedIndex" ) * 20 ) - 10 ) )
	visible when ( ( dvarbool( "party_listFocus" ) && !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) ) && ( getplayercardinfo( 0 , 3 , dvarint( "party_selectedIndex" ) ) != 0 ) && ( getplayercardinfo( 4 , 3 , dvarint( "party_selectedIndex" ) ) >= 0 ) )
	exp material ( tablelookup( "mp/rankIconTable.csv" , 0 , getplayercardinfo( 4 , 3 , dvarint( "party_selectedIndex" ) ) , ( getplayercardinfo( 5 , 3 , dvarint( "party_selectedIndex" ) ) + 1 ) ) )
}
itemDef
{
	rect 0 0 20 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	textfont 3
	textalign 9
	textScale CHOICE_TEXTSIZE
	exp rect x ( ( - 248 ) + 222 )
	exp rect y ( ( 28 + ( dvarint( "party_selectedIndex" ) * 20 ) - 10 ) )
	visible when ( ( dvarbool( "party_listFocus" ) && !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) ) && ( getplayercardinfo( 0 , 3 , dvarint( "party_selectedIndex" ) ) != 0 ) && ( getplayercardinfo( 4 , 3 , dvarint( "party_selectedIndex" ) ) >= 0 ) )
	exp text ( tablelookup( "mp/rankTable.csv" , 0 , getplayercardinfo( 4 , 3 , dvarint( "party_selectedIndex" ) ) , 14 ) )
}
itemDef
{
	rect 0 0 40 18 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	textfont 3
	textalign 9
	textScale CHOICE_TEXTSIZE
	exp rect x ( ( - 248 ) + 204 )
	exp rect y ( ( 28 + ( dvarint( "party_selectedIndex" ) * 20 ) - 10 ) + 18 )
	visible when ( ( dvarbool( "party_listFocus" ) && !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) ) && ( getplayercardinfo( 0 , 3 , dvarint( "party_selectedIndex" ) ) != 0 ) && getplayercardinfo( 9 , 3 , dvarint( "party_selectedIndex" ) ) != "" )
	exp text ( "[" + getplayercardinfo( 9 , 3 , dvarint( "party_selectedIndex" ) ) + "]" )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_LOBBY_MEMBERS_TALK
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		0		20		40		  0
	noscrollbars
	visible when ( !( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 27 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_MYTEAM_MEMBERS
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		0		20		40		  0
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -272 207 272 380 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	decoration
	visible 1
	foreColor CHOICE_TEXTCOLOR
	type ITEM_TYPE_LISTBOX
	textaligny -2
	textScale CHOICE_TEXTSIZE
	feeder FEEDER_ENEMY_MEMBERS
	elementWidth 272
	elementHeight 20
//	numcol			xpos	xwidth	textlen	  alignment
	columns 1		0		20		40		  0
	noscrollbars
	visible when ( ( dvarbool( "party_teamsVisible" ) && dvarbool( "party_teamBased" ) ) )
}
itemDef
{
	rect -128 -17 1280 18 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_BOTTOM
	decoration
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.25
	background "white"
	textscale 0.55
}
itemDef
{
	rect -128 -17 1280 18 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_BOTTOM
	decoration
	style WINDOW_STYLE_SHADER
	forecolor 0 0 0 0.45
	background "shadow_inset"
	textscale 0.55
}
itemDef
{
	rect 0 -18 726 18 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_BOTTOM
	decoration
	forecolor 1 1 1 0.9
	bordercolor 0 0 0 0.5
	background "gradient"
	type 20
	textScale CHOICE_TEXTSIZE
	newsfeed 1
	speed 50
	spacing 30
	exp rect w ( 544 + ( dvarint( "wideScreen" ) * 182 ) )
}