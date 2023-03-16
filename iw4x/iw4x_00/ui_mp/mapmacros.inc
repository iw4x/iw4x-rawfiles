#define LOCAL_MAP_ACTION( mapname ) \
		setdvar ui_mapname mapname; \
		close "settings_map"; \
		close "self"; 

#define LOCAL_MAP_FOCUS( name, desc, icon ) \
		setLocalVarString "ui_info_name" ( name ); \
		setLocalVarString "ui_info_desc" ( desc ); \
		setLocalVarString "ui_info_icon" ( icon ); 

#define LOCAL_MAP_NAME( name ) \
		"@" + name 

#define LOCAL_XDLC_FOCUS \
		setLocalVarString "ui_info_name" ( "PATCH_DLC_MAPS" ); \
		setLocalVarString "ui_info_desc" ( "PATCH_DLC_MAPS_DESC" ); \
		setLocalVarString "ui_info_icon" ( "loadscreen_mp_bonusmaps" );

#define LOCAL_MAP_SELECTION_RECT(i) 220 ( 30 + ( i * 20 ) ) 148 18 1 1

#define LOCAL_MAP_SELECTION(itemIndex, mapname, name, desc, icon, visArg) \
		itemDef \
		{ \
			rect LOCAL_MAP_SELECTION_RECT(itemIndex) \
			forecolor 1 1 1 1 \
			style WINDOW_STYLE_FILLED \
			background "menu_rules_selection_bar" \
			group "mw2_button" \
			type ITEM_TYPE_BUTTON \
			textAlign ITEM_ALIGN_TOP_RIGHT \
			textAlignX -34 \
			textAlignY -1 \
			textScale CHOICE_TEXTSIZE \
			textFont CHOICE_TEXTFONT \
			exp text ( LOCAL_MAP_NAME( name ) ) \
			visible when (visArg) \
			onFocus \
			{ \
				play "mouse_over"; \
				setItemColor self backColor 0 0 0 1; \
				setLocalVarBool "ui_menuAButton" ( 1 ); \
				setLocalVarFloat "ui_popupYPos" ( 0 ); \
				LOCAL_MAP_FOCUS( name, desc, icon ) \
			} \
			leaveFocus \
			{ \
				setItemColor self backColor 0 0 0 0; \
				setLocalVarBool "ui_menuAButton" ( 0 ); \
			} \
			action \
			{ \
				play "mouse_click"; \
				LOCAL_MAP_ACTION( mapname ) \
			} \
		}