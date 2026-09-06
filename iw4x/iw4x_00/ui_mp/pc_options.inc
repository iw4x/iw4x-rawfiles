#define CHOICE_Y(i)									(28 + (i * 20))
#define CHOICE_ORIGIN(i)							-64 CHOICE_Y(i)
#define CHOICE_RECT(i)								CHOICE_ORIGIN(i) 336 20 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP

#define CHOICE_LABEL_ALIGNX							-60
#define CHOICE_CONTROL_ALIGNX						288
#define CHOICE_CONTROL_X							224

#define PANEL_WIDTH									280

#define PC_OPTIONS_SELECTION_BAR \
	itemDef \
	{ \
		rect										-64 0 PANEL_WIDTH 20 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		style										WINDOW_STYLE_SHADER \
		foreColor									0 0 0 1 \
		background									"popup_button_selection_bar" \
		decoration									\
		textScale									0.55 \
		visible										when(localVarBool("ui_optionRowShow")) \
		exp											rect y (localVarFloat("ui_optionRowY")) \
	}

#define PC_OPTIONS_ROW_FOCUS(itemIndex) \
	setLocalVarFloat								PC_OPTIONS_ROW_MEM (CHOICE_Y(itemIndex)); \
	setLocalVarFloat								ui_optionRowY (CHOICE_Y(itemIndex)); \
	setLocalVarBool									ui_optionRowShow 1;

#define PC_OPTIONS_ROW_LEAVE \
	setLocalVarBool									ui_optionRowShow 0;

#define PC_OPTIONS_ROW_RESTORE \
	if (localVarFloat(PC_OPTIONS_ROW_MEM) == 0) \
	{ \
		setLocalVarBool								ui_optionRowShow 0; \
		if (dvarBool("gpad_in_use")) \
		{ \
			focusfirst; \
		} \
	} \
	else \
	{ \
		setLocalVarFloat							ui_optionRowY (localVarFloat(PC_OPTIONS_ROW_MEM)); \
		setLocalVarBool								ui_optionRowShow 1; \
	}

#define PC_OPTIONS_ON_OPEN \
	PC_OPTIONS_ROW_RESTORE \
	exec											"setfromdvar ui_name name"; \
	setLocalVarString								ui_hint_text "@NULL_EMPTY"; \
	setLocalVarBool									ui_hint_display 1; \
	execnow											"profile_menuDvarsSetup; resetViewport";

#define PC_OPTIONS_ON_CLOSE \
	setLocalVarBool									ui_hint_display 0; \
	exec											"setfromdvar name ui_name";

#define PC_OPTIONS_BUTTON_BACK(actionArg) \
	itemDef \
	{ \
		name										"back" \
		group										"mw2_button" \
		rect										-64 -4 PANEL_WIDTH 20 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_BOTTOM \
		style										WINDOW_STYLE_FILLED \
		type										ITEM_TYPE_BUTTON \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								MENU_BUTTON_TEXTCOLOR_DISABLED \
		background									"popup_button_selection_bar" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-4 \
		textScale									CHOICE_TEXTSIZE \
		text										"@PLATFORM_BACK_CAPS" \
		visible										1 \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			setItemColor							self backColor 0 0 0 1; \
			setLocalVarBool							ui_optionRowShow 0; \
		} \
		leaveFocus \
		{ \
			setItemColor							self backColor 0 0 0 0; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			actionArg								\
		} \
	}

#define ACTION_SHOW_APPLY \
	setLocalVarBool ui_showApply (1);

#define PC_OPTIONS_BUTTON_RIGHT(itemIndex, buttonName, textArg, actionArg) \
		PC_OPTIONS_BUTTON_RIGHT_VIS(itemIndex, buttonName, textArg, actionArg, 1)

#define PC_OPTIONS_BUTTON_RIGHT_VIS(itemIndex, buttonName, textArg, actionArg, visArg) \
		PC_OPTIONS_BUTTON_RIGHT_RAW(itemIndex, buttonName, textArg, actionArg, "@NULL_EMPTY", when(0), visArg)

#define PC_OPTIONS_BUTTON_RIGHT_DESC(itemIndex, buttonName, textArg, actionArg, descArg) \
		PC_OPTIONS_BUTTON_RIGHT_DESC_VIS(itemIndex, buttonName, textArg, actionArg, descArg, 1)

#define PC_OPTIONS_BUTTON_RIGHT_DESC_VIS(itemIndex, buttonName, textArg, actionArg, descArg, visArg) \
		PC_OPTIONS_BUTTON_RIGHT_RAW(itemIndex, buttonName, textArg, actionArg, descArg, when(0), visArg)

#define PC_OPTIONS_BUTTON_RIGHT_RAW(itemIndex, buttonName, textArg, actionArg, descArg, disArg, visArg) \
	itemDef \
	{ \
		name										buttonName \
		group										"mw2_button" \
		rect										CHOICE_RECT(itemIndex) \
		type										ITEM_TYPE_BUTTON \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									CHOICE_LABEL_ALIGNX \
		textScale									CHOICE_TEXTSIZE \
		text										textArg \
		disabled									disArg \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			PC_OPTIONS_ROW_FOCUS(itemIndex) \
			setLocalVarString						ui_hint_text(descArg); \
			setLocalVarFloat						ui_popupYPos (getFocusedItemY()); \
		} \
		leaveFocus \
		{ \
			PC_OPTIONS_ROW_LEAVE \
			setLocalVarString						ui_hint_text("@NULL_EMPTY"); \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			actionArg								\
		} \
	}

#define PC_OPTIONS_SEPERATOR(itemIndex) \
		PC_OPTIONS_SEPERATOR_VIS(itemIndex, 1)

#define PC_OPTIONS_SEPERATOR_VIS(itemIndex, visArg) \
	itemDef \
	{ \
		rect										0 (CHOICE_Y(itemIndex) + 20 - 0.5) 216 1 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		style										WINDOW_STYLE_SHADER \
		foreColor									1 1 1 0.65 \
		background									"line_horizontal" \
		decoration									\
		type										ITEM_TYPE_TEXT \
		textScale									0.55 \
		textFont									UI_FONT_DEFAULT \
		visible										visArg \
	}

#define PC_OPTIONS_SECTION_TITLE(textArg) \
	itemDef \
	{ \
		rect										0 0 272 28 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									9 \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									CHOICE_LABEL_ALIGNX \
		textScale									0.5 \
		decoration									\
		text										textArg \
		visible										1 \
	} \
	PC_OPTIONS_SELECTION_BAR

#define PC_OPTIONS_OPTION_LABEL_RAW(itemIndex, textArg, disArg, visArg) \
	itemDef \
	{ \
		rect										CHOICE_RECT(itemIndex) \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									CHOICE_LABEL_ALIGNX \
		textScale									CHOICE_TEXTSIZE \
		decoration									\
		text										textArg \
		decoration									\
		visible										visArg \
	}

#define PC_OPTIONS_OPTION_LABEL2_RAW(itemIndex, textArg, visArg) \
	itemDef \
	{ \
		rect										CHOICE_RECT(itemIndex) \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									(CHOICE_LABEL_ALIGNX + 10) \
		textScale									CHOICE_TEXTSIZE \
		decoration									\
		text										textArg \
		decoration									\
		visible										visArg \
	}

#define PC_OPTIONS_DVARENUMLIST(itemIndex, textArg, dvarArg, dvarEnumArg, actionArg, disArg) \
		PC_OPTIONS_DVARENUMLIST_RAW(itemIndex, textArg, dvarArg, dvarEnumArg, actionArg, "@MENU_GRAPHICS_WARNING", disArg, 1)

#define PC_OPTIONS_DVARENUMLIST_RAW(itemIndex, textArg, dvarArg, dvarEnumArg, actionArg, descArg, disArg, visArg) \
	itemDef \
	{ \
		rect										CHOICE_RECT(itemIndex) \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		type										ITEM_TYPE_DVARENUM \
		dvar										dvarArg \
		dvarEnumList								dvarEnumArg \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									CHOICE_CONTROL_ALIGNX \
		textScale									CHOICE_TEXTSIZE \
		disabled									disArg \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			PC_OPTIONS_ROW_FOCUS(itemIndex) \
			if (menuisopen("pc_options_video")) \
			{ \
				setLocalVarBool						ui_hint_display 1; \
				setLocalVarBool						ui_brightness_hint_display 1; \
			} \
			else \
			{ \
				setLocalVarBool						ui_hint_display 0; \
				setLocalVarBool						ui_brightness_hint_display 0; \
			} \
			setLocalVarString						ui_hint_text descArg; \
		} \
		leaveFocus \
		{ \
			PC_OPTIONS_ROW_LEAVE \
			setLocalVarBool							ui_hint_display 0; \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			actionArg								\
		} \
	} \
	PC_OPTIONS_OPTION_LABEL_RAW(itemIndex, textArg, disArg, visArg)

#define PC_OPTIONS_DVARYESNO(itemIndex, textArg, dvarArg, actionArg, disArg) \
		PC_OPTIONS_DVARYESNO_RAW(itemIndex, textArg, dvarArg, actionArg, "@NULL_EMPTY", disArg, 1)

#define PC_OPTIONS_DVARYESNO_RAW(itemIndex, textArg, dvarArg, actionArg, descArg, disArg, visArg) \
	itemDef \
	{ \
		rect										CHOICE_RECT(itemIndex) \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		type										ITEM_TYPE_YESNO \
		dvar										dvarArg \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									CHOICE_CONTROL_ALIGNX \
		textScale									CHOICE_TEXTSIZE \
		disabled									disArg \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			PC_OPTIONS_ROW_FOCUS(itemIndex) \
			setLocalVarBool							ui_hint_display 1; \
			if (menuisopen("pc_options_video")) \
			{ \
				setLocalVarBool						ui_brightness_hint_display 1; \
			} \
			else \
			{ \
				setLocalVarBool						ui_brightness_hint_display 0; \
			} \
			setLocalVarString						ui_hint_text descArg; \
		} \
		leaveFocus \
		{ \
			PC_OPTIONS_ROW_LEAVE \
			setLocalVarBool							ui_hint_display 0; \
			setLocalVarBool							ui_brightness_hint_display 0; \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			actionArg								\
		} \
	} \
	PC_OPTIONS_OPTION_LABEL_RAW(itemIndex, textArg, disArg, visArg)

#define PC_OPTIONS_DVARSLIDER(itemIndex, textArg, dvarArg, dvarMin, dvarMax, dvarDef, focusArg, focusLeaveArg, actionArg, disArg) \
		PC_OPTIONS_DVARSLIDER_RAW(itemIndex, textArg, dvarArg, dvarMin, dvarMax, dvarDef, focusArg, focusLeaveArg, actionArg, disArg, 1, 1)

#define PC_OPTIONS_DVARSLIDER_RAW(itemIndex, textArg, dvarArg, dvarMin, dvarMax, dvarDef, focusArg, focusLeaveArg, actionArg, disArg, visArg, visValue) \
	itemDef \
	{ \
		rect										CHOICE_RECT(itemIndex) \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		type										ITEM_TYPE_SLIDER \
		dvarFloat									dvarArg dvarDef dvarMin dvarMax \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									CHOICE_CONTROL_ALIGNX \
		textAlignY									2 \
		textScale									CHOICE_TEXTSIZE \
		disabled									disArg \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			PC_OPTIONS_ROW_FOCUS(itemIndex) \
			focusArg								\
		} \
		leaveFocus \
		{ \
			PC_OPTIONS_ROW_LEAVE \
			focusLeaveArg							\
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			actionArg								\
		} \
	} \
	PC_OPTIONS_OPTION_LABEL_RAW(itemIndex, textArg, disArg, visArg) \
	itemDef \
	{ \
		rect										CHOICE_CONTROL_X CHOICE_Y(itemIndex) 344 20 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-170 \
		textScale									CHOICE_TEXTSIZE \
		decoration									\
		decoration									\
		visible										visValue \
		exp											text(dvarString(dvarArg)) \
	}

#define PC_OPTIONS_FLOATLIST_RAW(itemIndex, textArg, dvarArg, dvarFloatListArg, actionArg, descArg, disArg, visArg) \
	itemDef \
	{ \
		rect										CHOICE_RECT(itemIndex) \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		type										ITEM_TYPE_MULTI \
		dvar										dvarArg \
		dvarFloatList								dvarFloatListArg \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									CHOICE_CONTROL_ALIGNX \
		textScale									CHOICE_TEXTSIZE \
		disabled									disArg \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			PC_OPTIONS_ROW_FOCUS(itemIndex) \
			setLocalVarBool							ui_hint_display 1; \
			setLocalVarString						ui_hint_text descArg; \
		} \
		leaveFocus \
		{ \
			PC_OPTIONS_ROW_LEAVE \
			setLocalVarBool							ui_hint_display 0; \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			actionArg								\
		} \
	} \
	PC_OPTIONS_OPTION_LABEL_RAW(itemIndex, textArg, disArg, visArg)

#define PC_OPTIONS_STRLIST_RAW(itemIndex, textArg, dvarArg, dvarStrListArg, actionArg, descArg, disArg, visArg) \
	itemDef \
	{ \
		rect										CHOICE_RECT(itemIndex) \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		type										ITEM_TYPE_MULTI \
		dvar										dvarArg \
		dvarStrList									dvarStrListArg \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									CHOICE_CONTROL_ALIGNX \
		textScale									CHOICE_TEXTSIZE \
		disabled									disArg \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			PC_OPTIONS_ROW_FOCUS(itemIndex) \
			setLocalVarBool							ui_hint_display 1; \
			setLocalVarString						ui_hint_text descArg; \
		} \
		leaveFocus \
		{ \
			PC_OPTIONS_ROW_LEAVE \
			setLocalVarBool							ui_hint_display 0; \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			actionArg								\
		} \
	} \
	PC_OPTIONS_OPTION_LABEL_RAW(itemIndex, textArg, disArg, visArg)

#define PC_OPTIONS_KEYBINDING(itemIndex, textArg, dvarArg) \
		PC_OPTIONS_KEYBINDING_RAW(itemIndex, textArg, dvarArg, 1)

#define PC_OPTIONS_KEYBINDING_RAW(itemIndex, textArg, dvarArg, visArg) \
	itemDef \
	{ \
		rect										CHOICE_RECT(itemIndex) \
		foreColor									CHOICE_TEXTCOLOR \
		type										ITEM_TYPE_BIND \
		dvar										dvarArg \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									CHOICE_CONTROL_ALIGNX \
		textScale									CHOICE_TEXTSIZE \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			PC_OPTIONS_ROW_FOCUS(itemIndex) \
			show									"keyBindStatus"; \
		} \
		leaveFocus \
		{ \
			PC_OPTIONS_ROW_LEAVE \
			hide									"keyBindStatus"; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
		} \
	} \
	PC_OPTIONS_OPTION_LABEL_RAW(itemIndex, textArg, 0, visArg)

#define PC_OPTIONS_KEYBINDSTATUS \
	itemDef \
	{ \
		name										"keyBindStatus" \
		rect										10 20 500 240 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_BOTTOM \
		decoration									\
		autoWrapped									\
		style										WINDOW_STYLE_FILLED \
		ownerdraw									UI_KEYBINDSTATUS \
		forecolor									0.65 0.65 0.65 1 \
		type										ITEM_TYPE_OWNERDRAW \
		textAlign									ITEM_ALIGN_LEGACY_CENTER \
		textscale									CHOICE_TEXTSIZE \
	}

#define PC_OPTIONS_EDITFIELD(itemIndex, textArg, dvarArg, maxCharsArg) \
		PC_OPTIONS_EDITFIELD_RAW(itemIndex, textArg, dvarArg, maxCharsArg, "@NULL_EMPTY", 1)

#define PC_OPTIONS_EDITFIELD_RAW(itemIndex, textArg, dvarArg, maxCharsArg, descArg, visArg) \
	itemDef \
	{ \
		rect										CHOICE_RECT(itemIndex) \
		foreColor									CHOICE_TEXTCOLOR \
		type										ITEM_TYPE_EDITFIELD \
		text										" " \
		dvar										dvarArg \
		maxChars									maxCharsArg \
		maxPaintChars								maxCharsArg \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_LEFT \
		textAlignX									(CHOICE_CONTROL_ALIGNX - 10) \
		textScale									CHOICE_TEXTSIZE \
		visible										visArg \
		mouseEnter \
		{ \
			play									CHOICE_FOCUS_SOUND; \
		} \
		onFocus \
		{ \
			PC_OPTIONS_ROW_FOCUS(itemIndex) \
			setLocalVarBool							ui_hint_display 1; \
			setLocalVarString						ui_hint_text descArg; \
		} \
		leaveFocus \
		{ \
			PC_OPTIONS_ROW_LEAVE \
			setLocalVarBool							ui_hint_display 0; \
			setLocalVarString						ui_hint_text "@NULL_EMPTY"; \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
		} \
	} \
	PC_OPTIONS_OPTION_LABEL_RAW(itemIndex, textArg, 0, visArg)