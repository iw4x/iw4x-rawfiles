#define PC_OPTIONS_BUTTON_LEFT_CHOICE_Y(i)			(28 + (i * 20))
#define PC_OPTIONS_BUTTON_LEFT_CHOICE_ORIGIN(i)		-64 PC_OPTIONS_BUTTON_LEFT_CHOICE_Y(i)
#define PC_OPTIONS_BUTTON_LEFT_CHOICE_RECT(i)		PC_OPTIONS_BUTTON_LEFT_CHOICE_ORIGIN(i) 336 20 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP

#define PC_OPTIONS_BUTTON_LEFT_HR_ORIGIN(i)			0 (PC_OPTIONS_BUTTON_LEFT_CHOICE_Y(i) - 0.5)
#define PC_OPTIONS_BUTTON_LEFT_HR_RECT(i)			PC_OPTIONS_BUTTON_LEFT_HR_ORIGIN(i) 216 1 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP

#define HR_ORIGIN(i)								0 (CHOICE_Y(i) - 0.5)
#define HR_RECT(i)									HR_ORIGIN(i) 216 1 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP

#define PC_OPTIONS_OPTION_HR_ORIGIN(i)				226 (CHOICE_Y(i) - 0.5)
#define PC_OPTIONS_OPTION_HR_RECT(i)				PC_OPTIONS_OPTION_HR_ORIGIN(i) -392 1 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP

#define PC_OPTIONS_CLOSE \
	close "controls_multi"; \
	close "main_controls"; \
	close "main_options"; \
	close "options_control_defaults"; \
	close "options_graphics"; \
	close "options_graphics_defaults"; \
	close "options_graphics_texture"; \
	close "options_multi"; \
	close "options_voice"; \
	close "pc_options_actions"; \
	close "pc_options_advanced_video"; \
	close "pc_options_audio"; \
	close "pc_options_controls"; \
	close "pc_options_game"; \
	close "pc_options_gamepad"; \
	close "pc_options_look"; \
	close "pc_options_movement"; \
	close "pc_options_multi"; \
	close "pc_options_video"; \
	close "pc_options_voice";

#define PC_OPTIONS_BUTTON_LEFT_ACTION(actionArg) \
	PC_OPTIONS_CLOSE \
	setLocalVarString								ui_hint_text "@NULL_EMPTY"; \
	actionArg

#define PC_OPTIONS_TITLE(textArg) \
		PC_OPTIONS_TITLE_VIS(textArg, 1)

#define PC_OPTIONS_TITLE_VIS(textArg, visArg) \
	itemDef \
	{ \
		rect										0 0 272 28 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_TOP \
		foreColor									CHOICE_TEXTCOLOR \
		textFont									9 \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-60 \
		textScale									0.5 \
		decoration									\
		text										textArg \
		visible										visArg \
	}

#define PC_OPTIONS_BUTTON(itemIndex, buttonName, textArg, actionArg) \
		PC_OPTIONS_BUTTON_VIS(itemIndex, buttonName, textArg, actionArg, 1)

#define PC_OPTIONS_BUTTON_VIS(itemIndex, buttonName, textArg, actionArg, visArg) \
		PC_OPTIONS_BUTTON_RAW(itemIndex, buttonName, textArg, actionArg, "@NULL_EMPTY", when(0), visArg)

#define PC_OPTIONS_BUTTON_DESC(itemIndex, buttonName, textArg, actionArg, descArg) \
		PC_OPTIONS_BUTTON_DESC_VIS(itemIndex, buttonName, textArg, actionArg, descArg, 1)

#define PC_OPTIONS_BUTTON_DESC_VIS(itemIndex, buttonName, textArg, actionArg, descArg, visArg) \
		PC_OPTIONS_BUTTON_RAW(itemIndex, buttonName, textArg, actionArg, descArg, when(0), visArg)

#define PC_OPTIONS_BUTTON_RAW(itemIndex, buttonName, textArg, actionArg, descArg, disArg, visArg) \
	itemDef \
	{ \
		name										buttonName \
		group										"mw2_button" \
		rect										PC_OPTIONS_BUTTON_LEFT_CHOICE_RECT(itemIndex) \
		style										WINDOW_STYLE_FILLED \
		type										ITEM_TYPE_BUTTON \
		foreColor									CHOICE_TEXTCOLOR \
		disableColor								0.6 0.55 0.55 1 \
		background									"menu_button_selection_bar" \
		textFont									UI_FONT_SMALL \
		textAlign									ITEM_ALIGN_TOP_RIGHT \
		textAlignX									-60 \
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
			setItemColor							self backColor 0 0 0 1; \
			setLocalVarString						ui_hint_text(descArg); \
			setLocalVarFloat						ui_popupYPos (getFocusedItemY()); \
		} \
		leaveFocus \
		{ \
			setItemColor							self backColor 0 0 0 0; \
			setLocalVarString						ui_hint_text("@NULL_EMPTY"); \
		} \
		action \
		{ \
			play									CHOICE_CLICK_SOUND; \
			actionArg								\
		} \
	}

PC_OPTIONS_TITLE("@MENU_OPTIONS_CAPS")

PC_OPTIONS_BUTTON(0, "buttonVideo", "@MENU_VIDEO", PC_OPTIONS_BUTTON_LEFT_ACTION(open "pc_options_video";))
PC_OPTIONS_BUTTON(1, "buttonAudio", "@MENU_AUDIO", PC_OPTIONS_BUTTON_LEFT_ACTION(open "pc_options_audio";))
PC_OPTIONS_BUTTON(2, "buttonControls", "@MENU_CONTROLS", PC_OPTIONS_BUTTON_LEFT_ACTION(open "pc_options_controls";))
PC_OPTIONS_BUTTON(3, "buttonMulti", "@MENU_MULTIPLAYER", PC_OPTIONS_BUTTON_LEFT_ACTION(open "pc_options_multi";))
PC_OPTIONS_BUTTON(4, "buttonGame", "@MENU_GAME", PC_OPTIONS_BUTTON_LEFT_ACTION(open "pc_options_game";))
PC_OPTIONS_BUTTON(5, "buttonGamepad", "@MENU_GAMEPAD", PC_OPTIONS_BUTTON_LEFT_ACTION(open "pc_options_gamepad";))

MENU_CHOICE_HORIZONTAL_LINE(6)
PC_OPTIONS_BUTTON_RAW(6, "buttonDefaults", "@MENU_RESET_SYSTEM_DEFAULTS", open "options_graphics_defaults";, "@NULL_EMPTY", when (dvarBool("cl_ingame") || dvarBool("sv_running") || inlobby()), 1)

itemDef
{
	name											"graphic_warning"
	rect											10 -160 206 240 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_BOTTOM
	foreColor										CHOICE_TEXTCOLOR
	textScale										CHOICE_TEXTSIZE
	decoration
	autoWrapped
	text											"@MENU_GRAPHICS_WARNING"
	visible											when(!localvarbool(ui_brightness_hint_display) && !localVarBool(ui_hint_display) && menuisopen("pc_options_video"))
}
itemDef
{
	name											"brightness_hint"
	rect											10 -160 206 240 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_BOTTOM
	foreColor										1 0.8 0.4 1
	textScale										CHOICE_TEXTSIZE
	decoration
	autoWrapped
	text											"@MENU_BRIGHTNESS_HINT_PC"
	visible											when(localvarbool(ui_brightness_hint_display) && !localVarBool(ui_hint_display))
}
itemDef
{
	name											"hint_area"
	rect											10 -160 206 240 HORIZONTAL_ALIGN_LEFT VERTICAL_ALIGN_BOTTOM
	foreColor										CHOICE_TEXTCOLOR
	textScale										CHOICE_TEXTSIZE
	decoration
	autoWrapped
	visible											when(localVarBool(ui_hint_display))
	exp												text(localVarString(ui_hint_text))
}

ITEM_BUTTON_BACK(ON_MENU_ESC)
