#define GPAD_ADV_CLOSE_MENUS \
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
	close "pc_options_look"; \
	close "pc_options_movement"; \
	close "pc_options_multi"; \
	close "pc_options_video"; \
	close "pc_options_voice";

#define GPAD_ADV_PAGE_OPEN \
	(menuisopen("pc_options_gamepad_sticks") || \
	 menuisopen("pc_options_gamepad_triggers") || \
	 menuisopen("pc_options_gamepad_response") || \
	 menuisopen("pc_options_gamepad_feedback") || \
	 menuisopen("pc_options_gamepad_timing"))

#define GPAD_ADV_ON_OPEN \
	GPAD_ADV_CLOSE_MENUS \
	PC_OPTIONS_ROW_RESTORE \
	setLocalVarString								ui_hint_text "@NULL_EMPTY"; \
	setLocalVarBool									ui_hint_display 1; \
	setLocalVarBool									ui_brightness_hint_display 0; \
	execnow											"profile_menuDvarsSetup; resetViewport";

#define GPAD_ADV_ON_CLOSE(parentArg) \
	setLocalVarString								ui_hint_text "@NULL_EMPTY"; \
	setLocalVarBool									ui_hint_display 0; \
	execnow											"profile_menuDvarsFinish; resetViewport"; \
	open											parentArg;

#define GPAD_ADV_ON_ESC \
	close											self;

#define GPAD_ADV_SUBMENU(itemIndex, buttonName, textArg, menuArg, descArg) \
		PC_OPTIONS_BUTTON_RIGHT_RAW(itemIndex, buttonName, textArg, \
			open menuArg; close self;, descArg, when(0), 1)

#define GPAD_ADV_DEFAULTS(itemIndex, commandArg) \
		PC_OPTIONS_BUTTON_RIGHT_RAW(itemIndex, "restoreDefaults", \
			"@MENU_GPAD_ADV_DEFAULTS", exec commandArg;, \
			"@MPUI_DESC_GPAD_ADV_DEFAULTS", when(0), 1)

#define GPAD_ADV_YESNO(itemIndex, textArg, dvarArg, descArg) \
		PC_OPTIONS_DVARYESNO_RAW(itemIndex, textArg, dvarArg, ;, descArg, when(0), 1)

#define GPAD_ADV_YESNO_DIS(itemIndex, textArg, dvarArg, descArg, disArg) \
		PC_OPTIONS_DVARYESNO_RAW(itemIndex, textArg, dvarArg, ;, descArg, disArg, 1)

#define GPAD_ADV_SLIDER(itemIndex, textArg, dvarArg, dvarMin, dvarMax, dvarDef, descArg) \
		GPAD_ADV_SLIDER_DIS(itemIndex, textArg, dvarArg, dvarMin, dvarMax, dvarDef, descArg, when(0))

#define GPAD_ADV_SLIDER_DIS(itemIndex, textArg, dvarArg, dvarMin, dvarMax, dvarDef, descArg, disArg) \
		PC_OPTIONS_DVARSLIDER_RAW(itemIndex, textArg, dvarArg, dvarMin, dvarMax, dvarDef, \
			setLocalVarBool ui_hint_display 1; setLocalVarString ui_hint_text descArg;, \
			setLocalVarBool ui_hint_display 0; setLocalVarString ui_hint_text "@NULL_EMPTY";, \
			;, disArg, 1, 1)

#define GPAD_ADV_LIST(itemIndex, textArg, dvarArg, listArg, descArg) \
		PC_OPTIONS_FLOATLIST_RAW(itemIndex, textArg, dvarArg, listArg, ;, descArg, when(0), 1)

#define GPAD_ADV_LIST_DIS(itemIndex, textArg, dvarArg, listArg, descArg, disArg) \
		PC_OPTIONS_FLOATLIST_RAW(itemIndex, textArg, dvarArg, listArg, ;, descArg, disArg, 1)

#define GPAD_ADV_RESTORE_STICKS \
	"set gpad_stick_deadzone_min 0.2; set gpad_stick_deadzone_max 0.01; set gpad_stick_anti_deadzone 0; set gpad_stick_pressed 0.4; set gpad_stick_pressed_hysteresis 0.1; set input_invertPitch 0; set gpad_sticksConfig thumbstick_default; bindgpsticksconfigs"

#define GPAD_ADV_RESTORE_TRIGGERS \
	"set gpad_button_deadzone 0.13; set gpad_button_deadzone_hysteresis 0.05; set gpad_adaptive_triggers 0; set gpad_adaptive_trigger_strength 1; set gpad_adaptive_trigger_light 7; set gpad_adaptive_trigger_heavy 8; set gpad_adaptive_trigger_light_start 2; set gpad_adaptive_trigger_light_end 5; set gpad_adaptive_trigger_heavy_start 3; set gpad_adaptive_trigger_heavy_end 7; set gpad_adaptive_trigger_ads 0"

#define GPAD_ADV_RESTORE_RESPONSE \
	"set input_viewSensitivity 1; set aim_turnrate_yaw 260; set aim_turnrate_yaw_ads 90; set aim_turnrate_pitch 90; set aim_turnrate_pitch_ads 55; set aim_accel_turnrate_enabled 1; set aim_accel_turnrate_lerp 1200; set aim_input_graph_enabled 1; set aim_input_graph_index 3; set aim_scale_view_axis 1"

#define GPAD_ADV_RESTORE_FEEDBACK \
	"set gpad_rumble 1; set gpad_rumble_scale_low 1; set gpad_rumble_scale_high 1; set gpad_haptics 1; set gpad_haptic_intensity 1; set gpad_output_interval 4; set gpad_light_bar 1; set gpad_light_bar_brightness 1; set gpad_light_bar_r 196; set gpad_light_bar_g 151; set gpad_light_bar_b 54"

#define GPAD_ADV_RESTORE_TIMING \
	"set gpad_use_hold_time 250; set gpad_button_release_delay_enabled 1; set gpad_button_release_delay 50; set gpad_button_release_delay_scale 3.5; set gpad_button_release_delay_sprint_only 1; set gpad_button_release_grace 75; set gpad_menu_scroll_delay_first 420; set gpad_menu_scroll_delay_rest 210; set gpad_menu_scroll_delay_min 50; set gpad_menu_scroll_accel_time 1500"

#define PC_OPTIONS_HINT_RECT						10 -70 206 130

#define GPAD_ADV_STEPS_0_8 \
	{"0" 0 "1" 1 "2" 2 "3" 3 "4" 4 "5" 5 "6" 6 "7" 7 "8" 8}

#define GPAD_ADV_STEPS_0_9 \
	{"0" 0 "1" 1 "2" 2 "3" 3 "4" 4 "5" 5 "6" 6 "7" 7 "8" 8 "9" 9}

#define GPAD_ADV_STEPS_0_3 \
	{"0" 0 "1" 1 "2" 2 "3" 3}

#define GPAD_ADV_STEPS_COLOR \
	{"0" 0 "16" 16 "32" 32 "48" 48 "64" 64 "80" 80 "96" 96 "112" 112 \
	 "128" 128 "144" 144 "160" 160 "176" 176 "192" 192 "196" 196 \
	 "208" 208 "224" 224 "240" 240 "255" 255}

#define GPAD_ADV_STEPS_INTERVAL \
	{"0" 0 "1" 1 "2" 2 "3" 3 "4" 4 "5" 5 "6" 6 "8" 8 "10" 10 "12" 12 \
	 "16" 16 "20" 20 "25" 25 "33" 33 "50" 50}

#define GPAD_ADV_STEPS_DELAY \
	{"0" 0 "10" 10 "20" 20 "30" 30 "40" 40 "50" 50 "60" 60 "70" 70 \
	 "80" 80 "90" 90 "100" 100 "125" 125 "150" 150 "175" 175 "200" 200 \
	 "250" 250 "300" 300 "400" 400 "500" 500}

#define GPAD_ADV_STEPS_GRACE \
	{"0" 0 "10" 10 "25" 25 "50" 50 "75" 75 "100" 100 "125" 125 "150" 150 \
	 "175" 175 "200" 200 "250" 250 "300" 300 "400" 400 "500" 500}

#define GPAD_ADV_STEPS_HOLD \
	{"0" 0 "50" 50 "100" 100 "150" 150 "200" 200 "250" 250 "300" 300 \
	 "350" 350 "400" 400 "500" 500 "600" 600 "750" 750 "1000" 1000}

#define GPAD_ADV_STEPS_SCROLL \
	{"0" 0 "20" 20 "40" 40 "60" 60 "80" 80 "100" 100 "120" 120 "150" 150 \
	 "180" 180 "210" 210 "250" 250 "300" 300 "350" 350 "420" 420 \
	 "500" 500 "600" 600 "750" 750 "1000" 1000}

#define GPAD_ADV_STEPS_ACCEL \
	{"0" 0 "250" 250 "500" 500 "750" 750 "1000" 1000 "1250" 1250 \
	 "1500" 1500 "2000" 2000 "2500" 2500 "3000" 3000 "4000" 4000 "5000" 5000}
