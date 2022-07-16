#ifndef PLAYERCARD_POS_Y
#define PLAYERCARD_POS_Y							28
#endif

#ifndef MENU_PANEL_STATS_POS_Y
#define MENU_PANEL_STATS_POS_Y						100
#endif

#define MENU_ITEM_PLAYERCARD_BOTTOM \
	itemDef \
	{ \
		name										"playercard_clantag" \
		rect										0 0 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_MIDDLE_LEFT \
		textAlignX									2 \
		textScale									CHOICE_TEXTSIZE \
		exp											rect x ((-208)) \
		exp											rect y ((PLAYERCARD_POS_Y) + 48) \
		visible										when ((getplayercardinfo(0, 1, 0) != 0) && (getplayercardinfo(9, 1, 0) != "")) \
		exp											text ("[" + getplayercardinfo(9, 1, 0) + "]") \
	} \
	itemDef \
	{ \
		name										"playercard_killstreak1" \
		rect										0 0 20 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		style										WINDOW_STYLE_SHADER \
		foreColor									CHOICE_TEXTCOLOR \
		decoration									\
		textScale									0.55 \
		visible										1 \
		exp											material (tableLookup("mp/killstreakTable.csv", 1, (getPlayerData("killstreaks", 0)), 16)) \
		exp											rect x ((-140) + 32) \
		exp											rect y ((PLAYERCARD_POS_Y + 48)) \
	} \
	itemDef \
	{ \
		name										"playercard_killstreak2" \
		rect										0 0 20 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		style										WINDOW_STYLE_SHADER \
		foreColor									CHOICE_TEXTCOLOR \
		decoration									\
		textScale									0.55 \
		visible										1 \
		exp											material (tableLookup("mp/killstreakTable.csv", 1, (getPlayerData("killstreaks", 1)), 16)) \
		exp											rect x ((-140) + 53) \
		exp											rect y ((PLAYERCARD_POS_Y + 48)) \
	} \
	itemDef \
	{ \
		name										"playercard_killstreak3" \
		rect										0 0 20 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		style										WINDOW_STYLE_SHADER \
		foreColor									CHOICE_TEXTCOLOR \
		decoration									\
		textScale									0.55 \
		visible										1 \
		exp											material (tableLookup("mp/killstreakTable.csv", 1, (getPlayerData("killstreaks", 2)), 16)) \
		exp											rect x ((-140) + 74) \
		exp											rect y ((PLAYERCARD_POS_Y + 48)) \
	}

#define MENU_ITEM_PLAYERCARD \
	itemDef \
	{ \
		name										"playercard_background" \
		rect										0 0 208 70 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_SHADER \
		foreColor									0 0 0 0.25 \
		background									"white" \
		textScale									0.55 \
		exp											rect x ((-208)) \
		exp											rect y ((PLAYERCARD_POS_Y)) \
		visible										when (getplayercardinfo(0, 1, 0) != 0) \
	} \
	itemDef \
	{ \
		name										"playercard_foreground" \
		rect										0 0 208 70 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									1 1 1 1 \
		background									"cardtitle_248x48" \
		textFont									UI_FONT_OBJECTIVE \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignY									-20 \
		textScale									CHOICE_TEXTSIZE \
		exp											rect x ((-208)) \
		exp											rect y ((PLAYERCARD_POS_Y)) \
		visible										when (getplayercardinfo(0, 1, 0) != 0) \
	} \
	itemDef \
	{ \
		name										"playercard_title" \
		rect										0 0 160 32 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		type										ITEM_TYPE_BUTTON \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									1 1 1 1 \
		textFont									UI_FONT_SMALL \
		textStyle									8 \
		textAlign									ITEM_ALIGN_MIDDLE_CENTER \
		textScale									CHOICE_TEXTSIZE \
		exp											rect x (-208) \
		exp											rect y (PLAYERCARD_POS_Y - 2) \
		exp											foreColor r (tablelookupbyrow("mp/cardTitleTable.csv", getplayercardinfo(1 ,1 ,0 ), 3)) \
		exp											foreColor g (tablelookupbyrow("mp/cardTitleTable.csv", getplayercardinfo(1 ,1 ,0 ), 4)) \
		exp											foreColor b (tablelookupbyrow("mp/cardTitleTable.csv", getplayercardinfo(1 ,1 ,0 ), 5)) \
		visible										when (getplayercardinfo(0, 1, 0) != 0) \
		exp											text ("@" + tablelookupbyrow("mp/cardTitleTable.csv", getplayercardinfo(1 ,1 ,0), 1)) \
		exp											material (tablelookupbyrow("mp/cardTitleTable.csv", getplayercardinfo(1, 1, 0), 2)) \
		onFocus \
		{ \
			play CHOICE_FOCUS_SOUND; \
			if(isItemUnlocked("playercard_title")) \
			{ \
				setLocalVarString					ui_hint_text "@MPUI_DESC_PLAYERCARD_TITLE"; \
			} \
			else \
			{ \
				setLocalVarString					ui_hint_text "@PERKS_UNLOCKED_BY_CHALLENGE"; \
			} \
			setLocalVarBool							ui_menuAButton 1; \
		} \
		leaveFocus \
		{ \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
			setLocalVarBool							ui_menuAButton 1; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			if (isItemUnlocked("playercard_title")) \
			{ \
				open								"menu_playercard_title_popup"; \
				setPlayerData("featureNew", "playercard_title", "false"); \
			} \
		} \
	} \
	itemDef \
	{ \
		name										"playercard_name" \
		rect										0 0 160 18 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		visible										1 \
		type										ITEM_TYPE_BUTTON \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									10 \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									8 \
		textStyle									8 \
		textScale									0.3333 \
		exp											rect x (-208) \
		exp											rect y (PLAYERCARD_POS_Y + 28) \
		visible										when (getplayercardinfo(0, 1, 0) != 0) \
		exp											text (getplayercardinfo(8, 1, 0)) \
		onFocus \
		{ \
			play									CHOICE_FOCUS_SOUND; \
			setItemColor							self "backcolor" 0 0 0 1; \
			setLocalVarString						ui_hint_text "@MPUI_DESC_CHANGE_NAME"; \
			setLocalVarBool							ui_menuAButton 1; \
		} \
		leaveFocus \
		{ \
			setItemColor							self "backcolor" 0 0 0 0; \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
			setLocalVarBool							ui_menuAButton 1; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			open									"popup_playername"; \
		} \
	} \
	itemDef \
	{ \
		name										"playercard_icon" \
		rect										0 0 48 48 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		visible										1 \
		style										WINDOW_STYLE_SHADER \
		type										ITEM_TYPE_BUTTON \
		foreColor									CHOICE_TEXTCOLOR \
		textScale									0.55 \
		exp											rect x ((-208) + 160) \
		exp											rect y ((PLAYERCARD_POS_Y)) \
		visible										when (getplayercardinfo(0, 1, 0) != 0) \
		exp											material (tablelookupbyrow("mp/cardIconTable.csv", getplayercardinfo(2, 1, 0), 1)) \
		onFocus \
		{ \
			play									CHOICE_FOCUS_SOUND; \
			if(isItemUnlocked("playercard_icon")) \
			{ \
				setLocalVarString					ui_hint_text "@MPUI_DESC_PLAYERCARD_ICON"; \
			} \
			else \
			{ \
				setLocalVarString					ui_hint_text "@PERKS_UNLOCKED_BY_CHALLENGE"; \
			} \
			setLocalVarBool							ui_menuAButton 1; \
		} \
		leaveFocus \
		{ \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
			setLocalVarBool							ui_menuAButton 1; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			if(isItemUnlocked("playercard_icon")) \
			{ \
				open								"menu_playercard_icon_popup"; \
				setPlayerData ("featureNew", "playercard_icon", "false"); \
			} \
		} \
	} \
	itemDef \
	{ \
		name										"playercard_rankicon" \
		rect										0 0 20 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									1 1 1 1 \
		textScale									0.55 \
		exp											rect x ((-208) + 164) \
		exp											rect y ((PLAYERCARD_POS_Y) + 48) \
		visible										when ((getplayercardinfo(0, 1, 0) != 0) && (getplayercardinfo(4, 1, 0) >= 0)) \
		exp											material (tablelookup("mp/rankIconTable.csv", 0, getplayercardinfo(4, 1, 0), (getplayercardinfo(5, 1, 0) + 1))) \
	} \
	itemDef \
	{ \
		name										"playercard_rank" \
		rect										0 0 20 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_MIDDLE_CENTER \
		textAlignX									20 \
		textScale									CHOICE_TEXTSIZE \
		textStyle									8 \
		exp											rect x ((-208) + 164) \
		exp											rect y ((PLAYERCARD_POS_Y) + 48) \
		visible										when ((getplayercardinfo(0, 1, 0) != 0) && (getplayercardinfo(4, 1, 0) >= 0)) \
		exp											text (tablelookup("mp/rankTable.csv", 0, getplayercardinfo(4, 1, 0), 14)) \
	} \
	MENU_ITEM_PLAYERCARD_BOTTOM

#define MENU_ITEM_PLAYERSTATS \
	itemDef \
	{ \
		rect										-208 MENU_PANEL_STATS_POS_Y -208 260 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_SHADER \
		foreColor									1 1 1 0.1 \
		background									"gradient_fadein" \
		textScale									0.55 \
	} \
	itemDef \
	{ \
		rect										-208 MENU_PANEL_STATS_POS_Y -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									0 0 0 0.35 \
		background									"white" \
		textfont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		visible										1 \
		exp											text ("@MPUI_RANK_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 MENU_PANEL_STATS_POS_Y 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignx									-22 \
		textscale									CHOICE_TEXTSIZE \
		exp											text ("@" + tablelookup("mp/ranktable.csv", 0, levelforexperience(getplayerdata("experience")), 5)) \
	} \
	itemDef \
	{ \
		rect										-18 (MENU_PANEL_STATS_POS_Y + 1) 18 18 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_SHADER \
		foreColor									CHOICE_TEXTCOLOR \
		textScale									0.55 \
		exp											material (tablelookup("mp/rankIconTable.csv", 0, levelforexperience(getplayerdata("experience")) , getplayerdata("prestige") + 1)) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 20) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ( "@MPUI_XP_PRE" ) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 20) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("experience")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 40) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									0 0 0 0.35 \
		background									"white" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textscale									CHOICE_TEXTSIZE \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) && (getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1)) && levelforexperience(getplayerdata("experience")) == int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1))) == 0) \
		exp											text ("@MPUI_NEXT_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 40) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-22 \
		textScale									CHOICE_TEXTSIZE \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) && (getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1)) && levelforexperience(getplayerdata("experience")) == int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1))) == 0) \
		exp											text ("@" + tablelookup("mp/ranktable.csv", 0, levelforexperience(getplayerdata("experience")) + 1, 5)) \
	} \
	itemDef \
	{ \
		rect										-18 (MENU_PANEL_STATS_POS_Y + 41) 18 18 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_SHADER \
		foreColor									CHOICE_TEXTCOLOR \
		textscale									0.55 \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) && (getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1)) && levelforexperience(getplayerdata("experience")) == int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1))) == 0) \
		exp											material (tablelookup("mp/rankIconTable.csv", 0, levelforexperience(getplayerdata("experience")) + 1, getplayerdata("prestige") + 1)) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 40) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									0 0 0 0.35 \
		background									"white" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) && (getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1)) && levelforexperience(getplayerdata("experience")) == int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)))) \
		exp											text ("@MPUI_NEXT_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 40) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-22 \
		textScale									CHOICE_TEXTSIZE \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) && (getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1)) && levelforexperience(getplayerdata("experience")) == int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)))) \
		exp											text ("@MPUI_PRESTIGE") \
	} \
	itemDef \
	{ \
		rect										-18 (MENU_PANEL_STATS_POS_Y + 41) 18 18 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_SHADER \
		foreColor									CHOICE_TEXTCOLOR \
		textScale									0.55 \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) && (getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1)) && levelforexperience(getplayerdata("experience")) == int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)))) \
		exp											material (tablelookup("mp/rankIconTable.csv", 0, 0, getplayerdata("prestige") + 2)) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 40) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									0 0 0 0.35 \
		background									"white" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) && (getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1)) && levelforexperience(getplayerdata("experience")) == int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)))) \
		exp											text ("@MPUI_NEXT_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 40) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-22 \
		textScale									CHOICE_TEXTSIZE \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) && (getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1)) && levelforexperience(getplayerdata("experience")) == int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)))) \
		exp											text ("@MPUI_PRESTIGE") \
	} \
	itemDef \
	{ \
		rect										-18 (MENU_PANEL_STATS_POS_Y + 41) 18 18 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_SHADER \
		foreColor									CHOICE_TEXTCOLOR \
		textScale									0.55 \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) && (getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1)) && levelforexperience(getplayerdata("experience")) == int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)))) \
		exp											material (tablelookup("mp/rankIconTable.csv", 0, 0, getplayerdata("prestige") + 2)) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 40) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									0 0 0 0.35 \
		background									"white" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) == 0) \
		exp											text ("@MPUI_NEXT_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 40) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		visible										when ((levelforexperience(getplayerdata("experience")) < int(tablelookup("mp/rankTable.csv", 0, "maxrank", 1)) || getplayerdata("prestige") < int(tablelookup("mp/rankIconTable.csv", 0, "maxprestige", 1))) == 0) \
		exp											text ("@MPUI_NONE") \
	}\
	itemDef \
	{ \
		rect										-80 (MENU_PANEL_STATS_POS_Y + 62) 80 16 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_SHADER \
		foreColor									1 1 1 0.35 \
		background									"black" \
		textScale									0.55 \
	} \
	itemDef \
	{ \
		rect										-80 (MENU_PANEL_STATS_POS_Y + 64) 25 12 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_SHADER \
		foreColor									1 0.9 0.5 0.6 \
		background									"gradient_fadein" \
		textScale									0.55 \
		exp											rect w (0 - 80 * (int(tablelookup("mp/rankTable.csv", 0, levelforexperience(getplayerdata("experience")), 2)) - getplayerdata("experience")) / int(tablelookup("mp/rankTable.csv", 0, levelforexperience(getplayerdata("experience")), 3))) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 60) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_XP_REQUIRED_PRE") \
	} \
	itemDef \
	{ \
		rect -208 (MENU_PANEL_STATS_POS_Y + 60) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (int(tablelookup("mp/rankTable.csv", 0, levelforexperience(getplayerdata("experience")), 7) - getplayerdata("experience"))) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 80) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									0 0 0 0.35 \
		background									"white" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_SCORE_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 80) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("score")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 100) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_WINS_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 100) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("wins")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 120) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_LOSSES_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 120) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("losses")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 140) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_TIES_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 140) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("ties")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 160) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_WINSTREAK_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 160) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("winStreak")) \
	} \
	itemDef \
	{ \
		rect -208 (MENU_PANEL_STATS_POS_Y + 180) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									0 0 0 0.35 \
		background									"white" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_KILLS_PRE") \
	} \
	itemDef \
	{ \
		rect -208 (MENU_PANEL_STATS_POS_Y + 180) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("kills")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 200) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_HEADSHOTS_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 200) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("headshots")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 220) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_ASSISTS_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 220) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("assists")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 240) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_STREAK_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 240) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									1 1 1 0.65 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("killStreak")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 260) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									0 0 0 0.35 \
		background									"white" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_DEATHS_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 260) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (getplayerdata("deaths")) \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 280) -208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		style										WINDOW_STYLE_FILLED \
		foreColor									CHOICE_TEXTCOLOR \
		backColor									0 0 0 0.35 \
		background									"white" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text ("@MPUI_TIME_PLAYED_PRE") \
	} \
	itemDef \
	{ \
		rect										-208 (MENU_PANEL_STATS_POS_Y + 280) 208 20 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP \
		decoration									\
		visible										1 \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		exp											text (secondsastime(getplayerdata("timePlayedAllies") + getplayerdata("timePlayedOpfor") + getplayerdata("timePlayedOther"))) \
	}