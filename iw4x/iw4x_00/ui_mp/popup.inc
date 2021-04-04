#define POPUP_BACKGROUND_BASE \
	itemDef \
	{ \
		rect								0 0 POPMENU_WIDTH POPMENU_HEIGHT HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		style								WINDOW_STYLE_FILLED \
		foreColor							CHOICE_TEXTCOLOR \
		backColor							0 0 0 0.35 \
		background							"white" \
		decoration							\
		visible								1 \
	} \
	itemDef \
	{ \
		rect								-1004 -564 1708 960 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		style								WINDOW_STYLE_FILLED \
		foreColor							CHOICE_TEXTCOLOR \
		backColor							1 1 1 1 \
		background							"xpbar_stencilbase" \
		decoration							\
		visible								1 \
	} \
	itemDef \
	{ \
		rect								0 0 POPMENU_WIDTH POPMENU_HEIGHT HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		style								WINDOW_STYLE_FILLED \
		foreColor							CHOICE_TEXTCOLOR \
		backColor							0.5 0.5 0.5 1 \
		background							"white" \
		decoration							\
		visible								1 \
	} \
	itemDef \
	{ \
		rect								-150 -44 1708 480 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							1 1 1 0.75 \
		background							"mw2_popup_bg_fogstencil" \
		exp									rect x (0 - ((float(milliseconds() % 60000) / 60000) * (854))) \
	} \
	itemDef \
	{ \
		rect								-150 -110 -1708 -480 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0.85 0.85 0.85 1 \
		background							"mw2_popup_bg_fogscroll" \
		exp									rect x (0 - ((float(milliseconds() % 60000) / 60000) * (854))) \
	} \
	itemDef \
	{ \
		rect								0 0 POPMENU_WIDTH POPMENU_HEIGHT HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							CHOICE_TEXTCOLOR \
		background							"mockup_popup_bg_stencilfill" \
	} \
	itemDef \
	{ \
		rect								-150 -44 -1708 -480 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							1 1 1 0.75 \
		background							"mw2_popup_bg_fogstencil" \
		exp									rect x ((0 - 854) + ((float(milliseconds() % 50000) / 50000) * (854))) \
	} \
	itemDef \
	{ \
		rect								-150 -110 -1708 -480 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0.85 0.85 0.85 1 \
		background							"mw2_popup_bg_fogscroll" \
		exp									rect x ((0 - 854) + ((float(milliseconds() % 50000) / 50000) * (854))) \
	} \
	itemDef \
	{ \
		rect								-150 -44 POPMENU_WIDTH 0 WINDOW_BORDER_FULL WINDOW_STYLE_FILLED \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							1 1 1 0 \
		background							"small_box_lightfx" \
		exp									rect h ((24 + 3 * 20)) \
	} \
	itemDef \
	{ \
		rect								-64 -64 64 64 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0 0 0 1 \
		background							"drop_shadow_tl" \
	} \
	itemDef \
	{ \
		rect								0 -64 POPMENU_WIDTH 64 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0 0 0 1 \
		background							"drop_shadow_t" \
	} \
	itemDef \
	{ \
		rect								POPMENU_WIDTH -64 64 64 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0 0 0 1 \
		background							"drop_shadow_tr" \
	} \
	itemDef \
	{ \
		rect								POPMENU_WIDTH 0 64 POPMENU_HEIGHT HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0 0 0 1 \
		background							"drop_shadow_r" \
	} \
	itemDef \
	{ \
		rect								POPMENU_WIDTH POPMENU_HEIGHT 64 64 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0 0 0 1 \
		background							"drop_shadow_br" \
	} \
	itemDef \
	{ \
		rect								0 POPMENU_HEIGHT POPMENU_WIDTH 64 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0 0 0 1 \
		background							"drop_shadow_b" \
	} \
	itemDef \
	{ \
		rect								-64 POPMENU_HEIGHT 64 64 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0 0 0 1 \
		background							"drop_shadow_bl" \
	} \
	itemDef \
	{ \
		rect								-64 0 64 POPMENU_HEIGHT HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		decoration							\
		visible								1 \
		style								WINDOW_STYLE_SHADER \
		foreColor							0 0 0 1 \
		background							"drop_shadow_l" \
	}

#define POPUP_TITLE(textArg) \
	itemDef \
	{ \
		rect								0 0 POPMENU_WIDTH 18 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		style								WINDOW_STYLE_FILLED \
		foreColor							CHOICE_TEXTCOLOR \
		backColor							0 0 0 0.7 \
		background							"gradient_fadein" \
		textFont							9 \
		textAlign							ITEM_ALIGN_LEGACY_CENTER \
		textAlignY							18 \
		textScale							CHOICE_TEXTSIZE \
		decoration							\
		visible								1 \
		exp									text(textArg) \
	}

#define POPUP_TITLE2(textArg) \
	itemDef \
	{ \
		rect								0 0 POPMENU_WIDTH 18 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		foreColor							CHOICE_TEXTCOLOR \
		textFont							9 \
		textAlign							ITEM_ALIGN_LEGACY_CENTER \
		textAlignY							18 \
		textScale							CHOICE_TEXTSIZE \
		decoration							\
		visible								1 \
		exp									text(textArg) \
	}

#define POPUP_BUTTON_FOOTER(posY, textArg, actionArg) \
		POPUP_BUTTON_FOOTER_VIS(posY, textArg, actionArg, 1)

#define POPUP_BUTTON_FOOTER_VIS(posY, textArg, actionArg, visArg) \
	itemDef \
	{ \
		rect								6 posY (POPMENU_WIDTH - 8) 20 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER \
		group								"mw2_popup_button" \
		style								WINDOW_STYLE_FILLED \
		type								ITEM_TYPE_BUTTON \
		foreColor							CHOICE_TEXTCOLOR \
		disableColor						0.6 0.55 0.55 1 \
		background							"popup_button_selection_bar" \
		textFont							UI_FONT_SMALL \
		textAlign							ITEM_ALIGN_TOP_RIGHT \
		textAlignX							-24 \
		textScale							CHOICE_TEXTSIZE \
		text								textArg \
		visible								visArg \
		action \
		{ \
			play							CHOICE_CLICK_SOUND; \
			actionArg						\
		} \
		mouseEnter \
		{ \
			play							CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			setItemColor					self backColor 0 0 0 1; \
			setLocalVarBool					"ui_popupAButton" (1); \
		} \
		leaveFocus \
		{ \
			setItemColor					self backColor 0 0 0 0; \
			setLocalVarBool					"ui_popupAButton" (0); \
		} \
	}
