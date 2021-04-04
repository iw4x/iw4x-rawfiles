#undef TEXTSIZE_DEFAULT
#define TEXTSIZE_DEFAULT 							FONTSCALE_SMALL

#undef TEXTSIZE_TITLE
#define TEXTSIZE_TITLE								0.5

#define WIDESCREEN									dvarBool("wideScreen")

#ifndef CHOICE_GROUP
#define CHOICE_GROUP 								""
#endif

#ifndef CHOICE_HEADERCOLOR
#define CHOICE_HEADERCOLOR							1 1 1 0.75
#endif

#ifndef CHOICE_TEXTCOLOR
#define CHOICE_TEXTCOLOR							1 1 1 1
#endif

#ifndef CHOICE_TEXTCOLOR_CAPT
#define CHOICE_TEXTCOLOR_CAPT						CHOICE_TEXTCOLOR
#endif

#ifndef CHOICE_TEXTCOLOR_DISABLED
#define CHOICE_TEXTCOLOR_DISABLED					1 1 1 0.5
#endif

#ifndef CHOICE_TEXTSTYLE
#define CHOICE_TEXTSTYLE							0
#endif

#ifndef CHOICE_TEXTSIZE
#define CHOICE_TEXTSIZE								TEXTSIZE_DEFAULT
#endif

#ifndef CHOICE_TEXTFONT
#define CHOICE_TEXTFONT								UI_FONT_NORMAL
#endif

#ifndef CHOICE_TITLEFONT
#define CHOICE_TITLEFONT							UI_FONT_NORMAL
#endif

#ifndef CHOICE_FOCUS_SOUND
#define CHOICE_FOCUS_SOUND							"mouse_over"
#endif

#ifndef CHOICE_CLICK_SOUND
#define CHOICE_CLICK_SOUND							"mouse_click"
#endif

#ifndef CHOICE_SEP_BACKGROUND
#define	CHOICE_SEP_BACKGROUND						"gradient_fadein"
#endif

#ifndef HIGHLIGHT_SHADER_ART
#define HIGHLIGHT_SHADER_ART						"menu_button_selection_bar"
#endif

#ifndef NEWSTICKER_BACKGROUND
#define NEWSTICKER_BACKGROUND						"shadow_inset"
#endif

#ifndef NEWSTICKER_SPEED
#define NEWSTICKER_SPEED							20
#endif

#ifndef MENU_BUTTON_TEXTSIZE
#define MENU_BUTTON_TEXTSIZE						(TEXTSIZE_DEFAULT - 0.1)
#endif

#ifndef MENU_BUTTON_TEXTCOLOR
#define MENU_BUTTON_TEXTCOLOR						CHOICE_TEXTCOLOR
#endif

#ifndef MENU_BUTTON_TEXTCOLOR_DISABLED
#define MENU_BUTTON_TEXTCOLOR_DISABLED				0.6 0.55 0.55 1
#endif

#define ITEM_NEWSTICKER_VIS(textArg, visArg, speedArg) \
	itemDef \
	{ \
		name									"ticker_bg" \
		style									WINDOW_STYLE_FILLED \
		rect									-107 -30 900 16 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		backColor								0 0 0 0.2 \
		decoration								\
		visible									visArg \
	} \
	itemDef \
	{ \
		name 									"ticker2" \
		type									ITEM_TYPE_NEWSTICKER \
		style									WINDOW_STYLE_FILLED \
		rect									-107 -30 900 16 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		foreColor								CHOICE_TEXTCOLOR \
		backColor								0 0 0 0.3 \
		textFont								UI_FONT_SMALL \
		textScale								.26 \
		textAlignY								16.5 \
		text									textArg \
		background								NEWSTICKER_BACKGROUND \
		speed									speedArg \
		decoration								\
		visible									visArg \
	}

#define ITEM_BUTTON_BACK(actionArg) \
		ITEM_BUTTON_BACK_VIS(actionArg, 1)

#define ITEM_BUTTON_BACK_VIS(actionArg, visArg) \
	itemDef \
	{ \
		name									"back" \
		style									WINDOW_STYLE_FILLED \
		rect									-64 -4 336 20 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_BOTTOM \
		group									"mw2_button" \
		foreColor								CHOICE_TEXTCOLOR \
		disableColor							MENU_BUTTON_TEXTCOLOR_DISABLED \
		background								HIGHLIGHT_SHADER_ART \
		type									ITEM_TYPE_BUTTON \
		textFont								UI_FONT_SMALL \
		textAlign								ITEM_ALIGN_TOP_RIGHT \
		textAlignX								-60 \
		textScale								CHOICE_TEXTSIZE \
		text									"@PLATFORM_BACK_CAPS" \
		visible									visArg \
		mouseEnter \
		{ \
			play								CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			setItemColor						self backColor 0 0 0 1; \
		} \
		leaveFocus \
		{ \
			setItemColor						self backColor 0 0 0 0; \
		} \
		action \
		{ \
			play								CHOICE_CLICK_SOUND; \
			actionArg \
		} \
	}

#define	ITEM_BUTTON_FRIENDS(posX) \
	MENU_EXEC_KEY("f", open "popup_friends";) \
	itemDef \
	{ \
		name									"button_friends" \
		rect									(posX) -4 120 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_BOTTOM \
		foreColor								CHOICE_TEXTCOLOR \
		disablecolor							MENU_BUTTON_TEXTCOLOR_DISABLED \
		style									WINDOW_STYLE_FILLED \
		type									ITEM_TYPE_BUTTON \
		textAlign								ITEM_ALIGN_CENTER \
		textAlignY								16 \
		textScale								MENU_BUTTON_TEXTSIZE \
		textFont								9 \
		text									"@PLATFORM_FRIENDS_CAPS" \
		visible									1 \
		mouseEnter \
		{ \
			play								CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			setLocalVarBool						ui_menuAButton 1; \
			setLocalVarFloat					ui_popupYPos 0; \
			setItemColor						self backColor 0 0 0 1; \
			setLocalVarString					ui_hint_text "@MPUI_DESC_FRIENDS"; \
		} \
		leaveFocus \
		{ \
			setItemColor						self backColor 0 0 0 0; \
			setLocalVarBool						ui_menuAButton 1; \
			setLocalVarString					ui_hint_text "@NULL_EMPTY"; \
		} \
		action \
		{ \
			play								CHOICE_CLICK_SOUND; \
			open								"popup_friends"; \
		} \
	}

#define MENU_ON_OPEN(onOpenArg) \
	onOpen \
	{ \
		onOpenArg									\
	}

#define MENU_ON_ESC(onESCArg) \
	onESC \
	{ \
		onESCArg									\
	}

#define MENU_ON_CLOSE(onCloseArg) \
	onClose \
	{ \
		onCloseArg									\
	}

#define MENU_EXEC_KEY(keyArg, execArg) \
	execKey keyArg\
	{ \
		play										CHOICE_CLICK_SOUND; \
		execArg										\
	}

#define MENU_EXEC_KEYINT(keyIntArg, execArg) \
	execKeyInt keyIntArg \
	{ \
		play										CHOICE_CLICK_SOUND; \
		execArg										\
	}

#define MENU_BACKGROUND_FRAME_DROP_SHADOW(posX, posY, width, height, imageArg) \
	itemDef \
	{ \
		rect										posX posY width height HORIZONTAL_ALIGN_FULLSCREEN VERTICAL_ALIGN_TOP \
		style										WINDOW_STYLE_SHADER \
		foreColor									0 0 0 1 \
		background									imageArg \
		textScale									0.55 \
		decoration									\
		visible										1 \
	}

#define MENU_BACKGROUND_FRAME \
	itemDef \
	{ \
		rect										0 28 640 356 4 1 \
		style										WINDOW_STYLE_SHADER \
		foreColor									1 1 1 0.15 \
		background									"white" \
		decoration									\
		textScale									0.55 \
		visible										1 \
	} \	
	MENU_BACKGROUND_FRAME_DROP_SHADOW(-32, -4, 32, 32, "drop_shadow_tl") \
	MENU_BACKGROUND_FRAME_DROP_SHADOW(0, -4, 640, 32, "drop_shadow_t") \
	MENU_BACKGROUND_FRAME_DROP_SHADOW(640, -4, 32, 32, "drop_shadow_tr") \
	MENU_BACKGROUND_FRAME_DROP_SHADOW(640, 28, 32, 356, "drop_shadow_r") \
	MENU_BACKGROUND_FRAME_DROP_SHADOW(640, 384, 32, 32, "drop_shadow_br") \
	MENU_BACKGROUND_FRAME_DROP_SHADOW(0, 384, 640, 32, "drop_shadow_b") \
	MENU_BACKGROUND_FRAME_DROP_SHADOW(-32, 384, 32, 32, "drop_shadow_bl") \
	MENU_BACKGROUND_FRAME_DROP_SHADOW(-32, 28, 32, 356, "drop_shadow_l")

#define MENU_BACKGROUND_PANEL_RIGHT_WIDTH			292
#define MENU_BACKGROUND_PANEL_RIGHT_HEIGHT			356

#define MENU_BACKGROUND_PANEL_RIGHT \
	itemDef \
	{ \
		rect										(0 - MENU_BACKGROUND_PANEL_RIGHT_WIDTH) 28 MENU_BACKGROUND_PANEL_RIGHT_WIDTH MENU_BACKGROUND_PANEL_RIGHT_HEIGHT HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		style										WINDOW_STYLE_SHADER \
		foreColor									0 0 0 0.7 \
		background									"black" \
		decoration									\
		textScale									0.55 \
		visible										1 \
	} \
	itemDef \
	{ \
		name										"image" \
		rect										(0 - (MENU_BACKGROUND_PANEL_RIGHT_WIDTH - 10)) 50 (MENU_BACKGROUND_PANEL_RIGHT_WIDTH - 20) 127 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		style										WINDOW_STYLE_SHADER \
		foreColor									1 1 1 1 \
		decoration									\
		textScale									0.55 \
		visible										when(localvarstring( "ui_info_icon") != "") \
		exp											material ( localvarstring( "ui_info_icon" )  ) \
	} \
	itemDef \
	{ \
		name										"longname" \
		rect										(0 - (MENU_BACKGROUND_PANEL_RIGHT_WIDTH - 10)) 28 (MENU_BACKGROUND_PANEL_RIGHT_WIDTH - 20) 22 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		foreColor									CHOICE_TEXTCOLOR \
		decoration									\
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textScale									CHOICE_TEXTSIZE \
		textFont									9 \
		visible										1 \
		exp											text ( "@" + localvarstring( "ui_info_name" )  ) \
	} \
	itemDef \
	{ \
		name										"description" \
		rect										(0 - (MENU_BACKGROUND_PANEL_RIGHT_WIDTH - 10)) 180 (MENU_BACKGROUND_PANEL_RIGHT_WIDTH - 20) 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		foreColor									1 1 1 0.65 \
		decoration									\
		autoWrapped									\
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textScale									CHOICE_TEXTSIZE \
		textFont									UI_FONT_SMALL \
		visible										1 \
		exp											text ( "@" + localvarstring( "ui_info_desc" )  ) \
	}

#define MENU_ITEM_TITLE(posX) \
	itemDef \
	{ \
		rect										0 4 272 28 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		foreColor									CHOICE_TEXTCOLOR \
		decoration									\
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-60 \
		textScale									0.5 \
		textFont									9 \
		text										MENU_TITLE \
		visible										1 \
		exp											rect x (posX) \
	}

#define MENU_CHOICE_TITLE(textArg, posY) \
		MENU_CHOICE_TITLE_VIS(textArg, posY, 1)

#define MENU_CHOICE_TITLE_VIS(textArg, posY, visArg) \
		MENU_CHOICE_TITLE_RAW(textArg, posY, TEXTSIZE_TITLE, visArg)

#define MENU_CHOICE_TITLE_RAW(textArg, posY, textSize, visArg) \
	itemDef \
	{ \
		rect										0 posY 272 28 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		foreColor									CHOICE_TEXTCOLOR \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-59 \
		textScale									textSize \
		textFont									9 \
		decoration									\
		autowrapped									\
		exp											text (textArg) \
		visible										visArg \
	}

#define MENU_CHOICE_NEWICON_VIS(itemIndex, visArg) \
	MENU_CHOICE_NEWICON_RAW(itemIndex, "specialty_new", visArg)

#define MENU_CHOICE_NEWICON_RAW(itemIndex, imageArg, visArg) \
	itemDef \
	{ \
		style										WINDOW_STYLE_SHADER \
		rect										236 CHOICE_Y(itemIndex) 40 20 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		exp											material(imageArg) \
		align										ITEM_ALIGN_RIGHT \
		visible										visArg \
		decoration									\
	}

#define MENU_CHOICE_BUTTON(itemIndex, buttonName, textArg, actionArg, descArg) \
		MENU_CHOICE_BUTTON_VIS(itemIndex, buttonName, textArg, actionArg, descArg, 1)

#define MENU_CHOICE_BUTTON_VIS(itemIndex, buttonName, textArg, actionArg, descArg, visArg) \
		MENU_CHOICE_BUTTON_ADVANCED_VIS(itemIndex, buttonName, textArg, actionArg, ;, ;, descArg, visArg)

#define MENU_CHOICE_BUTTON_ADVANCED(itemIndex, buttonName, textArg, actionArg, icon, namex, descArg) \
		MENU_CHOICE_BUTTON_ADVANCED_VIS(itemIndex, buttonName, textArg, actionArg, icon, namex, descArg, 1)

#define MENU_CHOICE_BUTTON_ADVANCED_VIS(itemIndex, buttonName, textArg, actionArg, icon, namex, descArg, visArg) \
		MENU_CHOICE_BUTTON_ADVANCED_RAW(itemIndex, buttonName, CHOICE_TEXTCOLOR, textArg, actionArg, icon, namex, descArg, visArg)

#define MENU_CHOICE_BUTTON_ADVANCED_RAW(itemIndex, buttonName, forecolorArg, textArg, actionArg, icon, namex, descArg, visArg) \
	itemDef \
	{ \
		name										buttonName \
		rect										CHOICE_RECT(itemIndex) \
		forecolor									forecolorArg \
		style										WINDOW_STYLE_FILLED \
		background									HIGHLIGHT_SHADER_ART \
		group										"mw2_button" \
		type										ITEM_TYPE_BUTTON \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-60 \
		textScale									CHOICE_TEXTSIZE \
		textFont									CHOICE_TEXTFONT \
		text										textArg \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			setItemColor							self backColor 0 0 0 1; \
			setLocalVarBool							ui_menuAButton 1; \
			setLocalVarFloat						ui_popupYPos 0; \
			setLocalVarString						ui_hint_text descArg; \
			setLocalVarString						ui_info_name namex; \
			setLocalVarString						ui_info_desc descArg; \
			setLocalVarString						ui_info_icon icon; \
		} \
		leaveFocus \
		{ \
			setItemColor							self backColor 0 0 0 0; \
			setLocalVarBool							ui_menuAButton 1; \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			actionArg								\
		} \
	}

#define MENU_CHOICE_DBUTTON_VIS(itemIndex, buttonName, textArg, descArg, visArg) \
	itemDef \
	{ \
		name										buttonName \
		rect 										CHOICE_RECT(itemIndex) \
		forecolor 									CHOICE_TEXTCOLOR_DISABLED \
		style										WINDOW_STYLE_FILLED \
		background									HIGHLIGHT_SHADER_ART \
		group										"mw2_button" \
		type										ITEM_TYPE_BUTTON \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-60 \
		textScale									CHOICE_TEXTSIZE \
		textFont									CHOICE_TEXTFONT \
		text										textArg \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			setItemColor							self backColor 0 0 0 1; \
			setLocalVarBool							ui_menuAButton 1; \
			setLocalVarFloat						ui_popupYPos 0; \
			setLocalVarString						ui_hint_text descArg; \
		} \
		leaveFocus \
		{ \
			setItemColor							self backColor 0 0 0 0; \
			setLocalVarBool							ui_menuAButton 1; \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
		} \
	}


#define MENU_CHOICE_HORIZONTAL_LINE(itemIndex) \
		MENU_CHOICE_HORIZONTAL_LINE_VIS(itemIndex, 1)

#define MENU_CHOICE_HORIZONTAL_LINE_VIS(itemIndex, visArg) \
	itemDef \
	{ \
		rect										HR_RECT(itemIndex) \
		style										WINDOW_STYLE_SHADER \
		foreColor									1 1 1 0.65 \
		background									CHOICE_SEP_BACKGROUND \
		decoration									\
		type										ITEM_TYPE_TEXT \
		textScale									0.55 \
		textFont									UI_FONT_DEFAULT \
		visible										visArg \
	}

#define MENU_PARTY_STATUS_STRING \
	itemDef \
	{ \
		rect										-272 0 0 18 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		style										WINDOW_STYLE_FILLED \
		foreColor									1 1 1 0.65 \
		background									"white" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									20 \
		textScale									CHOICE_TEXTSIZE \
		dvar										"party_statusString" \
		visible										when (inLobby()) \
	}
