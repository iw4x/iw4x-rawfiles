#define BACKGROUND_IMAGE(imageArg) \
itemDef \
{ \
	rect					-107 0 854 480 HORIZONTAL_ALIGN_SUBLEFT VERTICAL_ALIGN_SUBTOP \
	style					WINDOW_STYLE_SHADER \
	foreColor				1 1 1 1 \
	textscale				0.55 \
	decoration				\
	visible					when (dvarString( "fs_game" ) == "" && !(dvarBool("cl_ingame") || dvarBool("sv_running"))) \
	background				imageArg \
}

#ifdef BACKGROUND_PC_OPTIONS
#undef BACKGROUND_IMAGE
#define BACKGROUND_IMAGE(imageArg) \
itemDef \
{ \
	rect					-107 0 854 480 HORIZONTAL_ALIGN_SUBLEFT VERTICAL_ALIGN_SUBTOP \
	style					WINDOW_STYLE_SHADER \
	foreColor				1 1 1 1 \
	textscale				0.55 \
	decoration				\
	visible					when (!(dvarBool("cl_ingame") || dvarBool("sv_running"))) \
	background				imageArg \
}
#endif

itemDef
{
	rect					-427 -240 854 480 2 2
	decoration
	visible					1
	style					3
	forecolor				0 0 0 0.4
	background				"white"
	textscale				0.55
	visible					when ((dvarBool("cl_ingame") || dvarBool("sv_running")))
}
itemDef
{
	rect					0 0 640 480 4 4
	decoration
	visible					1
	style					3
	forecolor				1 1 1 1
	background				"mw2_main_background"
	textscale				0.55
	visible					when (dvarString( "fs_game" ) == "" && !(dvarBool("cl_ingame") || dvarBool("sv_running")))
}

#ifdef BACKGROUND_PC_OPTIONS
itemDef
{
	rect					0 0 640 480 4 4
	decoration
	visible					1
	style					3
	forecolor				1 1 1 1
	background				"mw2_main_background"
	textscale				0.55
	visible					when (dvarString( "fs_game" ) != "" && !(dvarBool("cl_ingame") || dvarBool("sv_running")))
}
#endif

#ifndef BACKGROUND_PC_OPTIONS
#ifdef BACKGROUND_SP
BACKGROUND_IMAGE("mw2_main_sp_image")
#endif

#ifdef BACKGROUND_CO
BACKGROUND_IMAGE("mw2_main_co_image")
#endif

#ifdef BACKGROUND_MP
BACKGROUND_IMAGE("mw2_main_mp_image")
#endif

#ifdef BACKGROUND_IW4
BACKGROUND_IMAGE("animbg_blur_front")
#endif
#endif

itemDef
{
	rect					0 0 1708 480 0 0
	decoration
	visible					1
	style					3
	forecolor				1 1 1 0.5
	background				"mw2_main_cloud_overlay"
	textscale				0.55
	exp						rect x ((0 - 107 ) - ((float(milliseconds() % 60000 ) / 60000) * (854)))
	visible					when (!(dvarBool("cl_ingame") || dvarBool("sv_running")))
}

itemDef
{
	rect					0 0 -1708 -480 0 0
	decoration
	visible					1
	style					3
	forecolor				1 1 1 0.5
	background				"mw2_main_cloud_overlay"
	textscale				0.55
	exp						rect x ((0 - 107 + 854) + ((float(milliseconds() % 50000) / 50000) * (854)))
	visible					when (!(dvarBool("cl_ingame") || dvarBool("sv_running")))
}

#ifdef BACKGROUND_PC_OPTIONS
#ifdef BACKGROUND_SP
BACKGROUND_IMAGE("mw2_main_sp_image")
#endif

#ifdef BACKGROUND_CO
BACKGROUND_IMAGE("mw2_main_co_image")
#endif

#ifdef BACKGROUND_MP
BACKGROUND_IMAGE("mw2_main_mp_image")
#endif

#ifdef BACKGROUND_IW4
BACKGROUND_IMAGE("animbg_blur_front")
#endif
#endif

itemDef
{
	rect					0 0 640 480 4 4
	decoration
	visible					1
	style					3
	forecolor				1 1 1 0.523696
	background				"mockup_bg_glow"
	textscale				0.55
	exp						forecolor a (((sin(milliseconds() / 1500) + 1) * 0.25) + 0.25)
	visible					when (!(dvarBool("cl_ingame") || dvarBool("sv_running")))
}

itemDef
{
	rect					0 0 640 480 4 4
	decoration
	visible					1
	style					3
	forecolor				1 1 1 0.476023
	background				"mockup_bg_glow"
	textscale				0.55
	exp						forecolor a (((sin(milliseconds() / 480) + 1) * 0.25) + 0.25)
	visible					when (!(dvarBool("cl_ingame") || dvarBool("sv_running")))
}

#ifndef DISABLE_SIDEBAR
itemDef
{
	rect					-64 0 280 480 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_SUBTOP
	style					WINDOW_STYLE_SHADER
	foreColor				1 1 1 0.1
	background				"gradient_bottom"
	decoration
	textScale				0.55
	visible					1
}
#endif

#ifdef SIDEBAR_RIGHT
itemDef
{
	rect					-64 0 280 480 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_SUBTOP
	decoration
	style					WINDOW_STYLE_SHADER
	forecolor				1 1 1 0.1
	background				"gradient_fadein_fadebottom"
	textscale				0.55
	visible					1
}
itemDef
{
	rect					0 0 640 480 HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_FULLSCREEN
	style					WINDOW_STYLE_SHADER
	forecolor				0.25 0.25 0.25 0.75
	background				"gradient_fadein"
	textscale				0.55
	visible					when (dvarInt("cl_ingame") == 0)
}
itemDef
{
	rect					0 0 640 480 HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_FULLSCREEN
	style					WINDOW_STYLE_SHADER
	forecolor				0.25 0.25 0.25 0.75
	background				"gradient_fadein"
	textscale				0.55
	visible					when (dvarInt("cl_ingame") == 0)
}
itemDef
{
	rect					-64 0 280 480 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_SUBTOP
	decoration
	style					WINDOW_STYLE_SHADER
	forecolor				1 1 1 0.1
	background				"gradient_fadein_fadebottom"
	textscale				0.55
	visible					1
}
#endif

#ifdef BACKGROUND_FULL
itemDef
{
	rect					0 0 640 480 HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_SUBTOP
	decoration
	style					WINDOW_STYLE_SHADER
	forecolor				1 1 1 0.1
	background				"gradient_fadein_fadebottom"
	textscale				0.55
	visible					1
}
itemDef
{
	rect					0 0 640 480 HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_FULLSCREEN
	style					WINDOW_STYLE_SHADER
	forecolor				0.25 0.25 0.25 0.75
	background				"gradient_fadein"
	textscale				0.55
	visible					when (dvarInt("cl_ingame") == 0)
}
itemDef
{
	rect					0 0 640 480 HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_FULLSCREEN
	style					WINDOW_STYLE_SHADER
	forecolor				0.25 0.25 0.25 0.75
	background				"gradient_fadein"
	textscale				0.55
	visible					when (dvarInt("cl_ingame") == 0)
}
itemDef
{
	rect					0 0 640 480 HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_SUBTOP
	decoration
	style					WINDOW_STYLE_SHADER
	forecolor				1 1 1 0.1
	background				"gradient_fadein_fadebottom"
	textscale				0.55
	visible					1
}
#endif

#ifndef HIDE_MOD
itemDef
{
	rect					-40 0 300 20 HORIZONTAL_ALIGN_SUBLEFT VERTICAL_ALIGN_TOP
	foreColor				1 1 1 0.8
	textAlignY				-4
	textScale				0.2
	decoration
	text					"@MPUI_MOD"
	visible					when ((dvarString("fs_game") != "") && (dvarInt("cl_ingame") == 0))
}
itemDef
{
	name					"mod"
	rect					-40 0 300 20 HORIZONTAL_ALIGN_SUBLEFT VERTICAL_ALIGN_TOP
	decoration
	foreColor				1 1 1 0.8
	textAlignX				16
	textAlignY				-4
	textScale				0.2
	exp						text dvarString("fs_game")
	visible					when ((dvarString("fs_game") != "") && (dvarInt("cl_ingame") == 0))
}
#endif
