#define CAC_PRIMARY_WEAPON(itemNum,weaponArg) \
		itemDef \
		{ \
			name "cac_weapon_" ## weaponArg \
			rect -64 (4 + (itemNum*20)) 336 20 1 1 \
			group "mw2_popup_button" \
			style 1 \
			visible 1 \
			forecolor 1 1 1 1 \
			disablecolor 0.6 0.55 0.55 1 \
			background "popup_button_selection_bar_short" \
			type 1 \
			textfont 3 \
			textalign 4 \
			textalignx 68 \
			textscale 0.375 \
			disabled when ( !isitemunlocked( weaponArg ) ) \
			exp text ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ) \
			execKeyInt 168 \
			{ \
				if ( ( tablelookup( "mp/challengeTable.csv" , 6 , weaponArg , 4 ) ) != "" ) \
				{ \
					setLocalVarString "ui_challengeTierTable" ( tablelookup( "mp/challengeTable.csv" , 6 , weaponArg , 4 ) ); \
					open "menu_challenge_details"; \
				} \
			} \
			action \
			{ \
				play "mouse_click"; \
				if ( localvarint( "ui_tabDepth" ) == 0 ) \
				{ \
					setLocalVarString "ui_tab1Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 1 ) \
				{ \
					setLocalVarString "ui_tab2Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 2 ) \
				{ \
					setLocalVarString "ui_tab3Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 3 ) \
				{ \
					setLocalVarString "ui_tab4Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 4 ) \
				{ \
					setLocalVarString "ui_tab5Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 5 ) \
				{ \
					setLocalVarString "ui_tab6Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "weapon" ) != weaponArg ) \
				{ \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 0 , "none" ); \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 1 , "none" ); \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 0 , "camo" , "none" ); \
				} \
				setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 0 , "weapon" , weaponArg ); \
				setPlayerData( "weaponNew" , weaponArg , "false" ); \
				if ( !( tablelookup( "mp/attachmentTable.csv" , 4 , getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 0 ) , 12 ) != "" || tablelookup( "mp/attachmentTable.csv" , 4 , getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 0 ) , 12 ) != "" ) && ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_gl" || getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_grip" || getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_shotgun" ) || getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_heartbeat" ) \
				{ \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "perks" , 0 , "specialty_null" ); \
				} \
				setLocalVarString "loadoutPrimary" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "weapon" ) ); \
				setLocalVarString "loadoutPrimaryAttachment" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 0 ) ); \
				setLocalVarString "loadoutPrimaryAttachment2" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 1 ) ); \
				if ( localvarstring( "loadoutPrimaryAttachment2" ) == "" ) \
				{ \
					setLocalVarString "loadoutPrimaryAttachment2" ( "none" ); \
				} \
				setLocalVarString "loadoutPrimaryCamo" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "camo" ) ); \
				setLocalVarString "loadoutSecondaryCamo" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "camo" ) ); \
				setLocalVarString "loadoutSecondary" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "weapon" ) ); \
				setLocalVarString "loadoutSecondaryAttachment" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 0 ) ); \
				setLocalVarString "loadoutSecondaryAttachment2" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 1 ) ); \
				if ( localvarstring( "loadoutSecondaryAttachment2" ) == "" ) \
				{ \
					setLocalVarString "loadoutSecondaryAttachment2" ( "none" ); \
				} \
				setLocalVarString "loadoutSecondaryCamo" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "camo" ) ); \
				setLocalVarString "loadoutEquipment" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) ); \
				setLocalVarString "loadoutPerk1" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 1 ) ); \
				setLocalVarString "loadoutPerk2" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 2 ) ); \
				setLocalVarString "loadoutPerk3" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 3 ) ); \
				setLocalVarString "loadoutStreak1" ( getplayerdata( "killstreaks" , 0 ) ); \
				setLocalVarString "loadoutStreak2" ( getplayerdata( "killstreaks" , 1 ) ); \
				setLocalVarString "loadoutStreak3" ( getplayerdata( "killstreaks" , 2 ) ); \
				setLocalVarString "loadoutDeathStreak" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 4 ) ); \
				setLocalVarString "loadoutOffhandSecondary" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "specialGrenade" ) ); \
				setLocalVarString "loadoutClassName" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "name" ) ); \
				if ( 0 == 0 ) \
				{ \
					if ( ( tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 11 ) != "" ) ) \
					{ \
						if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 1 ) == "specialty_bling" ) \
						{ \
							open "popup_primary_attachments_bling"; \
						} \
						else \
						{ \
							open "popup_primary_attachments"; \
						} \
					} \
					else \
					{ \
						open "popup_cac_primary_camo"; \
					} \
				} \
				else \
				{ \
					if ( ( tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 11 ) != "" ) ) \
					{ \
						if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 1 ) == "specialty_bling" && isitemunlocked( "specialty_secondarybling" ) ) \
						{ \
							open "popup_secondary_attachments_bling"; \
						} \
						else \
						{ \
							open "popup_secondary_attachments"; \
						} \
					} \
					else \
					{ \
						close "popup_cac_weapon_primary"; \
						close "popup_primary_attachments"; \
						close "popup_secondary_attachments"; \
						close "popup_cac_weapon_secondary"; \
						close "popup_cac_handgun_secondary"; \
						close "popup_cac_machinePistols_secondary"; \
						close "popup_cac_assault_primary"; \
						close "popup_cac_SMG_primary"; \
						close "popup_cac_LMG_primary"; \
						close "popup_cac_sniper_primary"; \
						close "popup_cac_shotgun_primary"; \
						close "popup_cac_assault_secondary"; \
						close "popup_cac_SMG_secondary"; \
						close "popup_cac_LMG_secondary"; \
						close "popup_cac_sniper_secondary"; \
						close "popup_cac_shotgun_secondary"; \
						close "popup_cac_template"; \
						close "popup_cac_primary_camo"; \
						close "popup_cac_secondary_camo"; \
						close "popup_cac_bling"; \
						close "popup_cac_perk2"; \
						close "popup_cac_rocket_secondary"; \
						close "popup_primary_attachments_bling"; \
						close "popup_secondary_attachments_bling"; \
						close "popup_cac_other_primary"; \
					} \
				} \
			} \
			onFocus \
			{ \
				play "mouse_over"; \
				if ( dvarstring( "gameMode" ) != "mp" ) \
				{ \
					setItemColor "mw2_popup_button" backcolor 0 0 0 0; \
				} \
				setItemColor self backcolor 0 0 0 1; \
				setLocalVarBool "ui_popupAButton" ( 1 ); \
				setLocalVarString "ui_selected_ref" ( weaponArg ); \
			} \
			leaveFocus \
			{ \
				setItemColor self backcolor 1 1 1 0; \
				setLocalVarBool "ui_popupAButton" ( 0 ); \
				setPlayerData( "weaponNew" , weaponArg , "false" ); \
			} \
		} \
		itemDef \
		{ \
			rect 162 (4 + (itemNum*20)) 40 20 1 1 \
			style 3 \
			decoration \
			visible 1 \
			forecolor 1 1 1 1 \
			background "specialty_new" \
			textscale 0.55 \
			visible when ( ( getplayerdata( "weaponNew" , weaponArg ) || getplayerdataanybooltrue( "camoNew" , weaponArg ) || getplayerdataanybooltrue( "attachmentNew" , weaponArg ) ) ) \
		} \
		itemDef \
		{ \
			rect 162 (4 + (itemNum*20)) 40 20 1 1 \
			style 3 \
			decoration \
			visible 1 \
			forecolor 1 1 1 1 \
			background "specialty_locked" \
			textscale 0.55 \
			visible when ( ( isitemunlocked( weaponArg ) == 0 ) ) \
		}

#define CAC_SECONDARY_WEAPON(itemNum,weaponArg) \
		itemDef \
		{ \
			name "cac_weapon_" ## weaponArg \
			rect -64 (4 + (itemNum*20)) 336 20 1 1 \
			group "mw2_popup_button" \
			style 1 \
			visible 1 \
			forecolor 1 1 1 1 \
			disablecolor 0.6 0.55 0.55 1       \
			background "popup_button_selection_bar_short" \
			type 1 \
			textfont 3 \
			textalign 4 \
			textalignx 68 \
			textscale 0.375 \
			disabled when ( !isitemunlocked( weaponArg ) ) \
			exp text ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ) \
			execKeyInt 168 \
			{ \
				if ( ( tablelookup( "mp/challengeTable.csv" , 6 , weaponArg , 4 ) ) != "" ) \
				{ \
					setLocalVarString "ui_challengeTierTable" ( tablelookup( "mp/challengeTable.csv" , 6 , weaponArg , 4 ) ); \
					open "menu_challenge_details"; \
				} \
			} \
			action \
			{ \
				play "mouse_click"; \
				if ( localvarint( "ui_tabDepth" ) == 0  ) \
				{ \
					setLocalVarString "ui_tab1Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 1 ) \
				{ \
					setLocalVarString "ui_tab2Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 2 ) \
				{ \
					setLocalVarString "ui_tab3Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 3 ) \
				{ \
					setLocalVarString "ui_tab4Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 4 ) \
				{ \
					setLocalVarString "ui_tab5Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 5 ) \
				{ \
					setLocalVarString "ui_tab6Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "weapon" ) != weaponArg ) \
				{ \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 0 , "none" ); \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 1 , "none" ); \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 1 , "camo" , "none" ); \
				} \
				setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 1 , "weapon" , weaponArg ); \
				setPlayerData( "weaponNew" , weaponArg , "false" ); \
				if ( !( tablelookup( "mp/attachmentTable.csv" , 4 , getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 0 ) , 12 ) != "" || tablelookup( "mp/attachmentTable.csv" , 4 , getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 0 ) , 12 ) != "" ) && ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_gl" || getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_grip" || getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_shotgun" ) || getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_heartbeat" ) \
				{ \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "perks" , 0 , "specialty_null" ); \
				} \
				setLocalVarString "loadoutPrimary" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "weapon" ) ); \
				setLocalVarString "loadoutPrimaryAttachment" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 0 ) ); \
				setLocalVarString "loadoutPrimaryAttachment2" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 1 ) ); \
				if ( localvarstring( "loadoutPrimaryAttachment2" ) == "" ) \
				{ \
					setLocalVarString "loadoutPrimaryAttachment2" ( "none" ); \
				} \
				setLocalVarString "loadoutPrimaryCamo" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "camo" ) ); \
				setLocalVarString "loadoutSecondaryCamo" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "camo" ) ); \
				setLocalVarString "loadoutSecondary" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "weapon" ) ); \
				setLocalVarString "loadoutSecondaryAttachment" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 0 ) ); \
				setLocalVarString "loadoutSecondaryAttachment2" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 1 ) ); \
				if ( localvarstring( "loadoutSecondaryAttachment2" ) == "" ) \
				{ \
					setLocalVarString "loadoutSecondaryAttachment2" ( "none" ); \
				} \
				setLocalVarString "loadoutSecondaryCamo" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "camo" ) ); \
				setLocalVarString "loadoutEquipment" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) ); \
				setLocalVarString "loadoutPerk1" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 1 ) ); \
				setLocalVarString "loadoutPerk2" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 2 ) ); \
				setLocalVarString "loadoutPerk3" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 3 ) ); \
				setLocalVarString "loadoutStreak1" ( getplayerdata( "killstreaks" , 0 ) ); \
				setLocalVarString "loadoutStreak2" ( getplayerdata( "killstreaks" , 1 ) ); \
				setLocalVarString "loadoutStreak3" ( getplayerdata( "killstreaks" , 2 ) ); \
				setLocalVarString "loadoutDeathStreak" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 4 ) ); \
				setLocalVarString "loadoutOffhandSecondary" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "specialGrenade" ) ); \
				setLocalVarString "loadoutClassName" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "name" ) ); \
				if ( 1 == 0 ) \
				{ \
					if ( ( tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 11 ) != "" ) ) \
					{ \
						if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 1 ) == "specialty_bling" ) \
						{ \
							open "popup_primary_attachments_bling"; \
						} \
						else \
						{ \
							open "popup_primary_attachments"; \
						} \
					} \
					else \
					{ \
						open "popup_cac_primary_camo"; \
					} \
				} \
				else \
				{ \
					if ( ( tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 11 ) != "" ) ) \
					{ \
						if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 1 ) == "specialty_bling" && isitemunlocked( "specialty_secondarybling" ) ) \
						{ \
							open "popup_secondary_attachments_bling"; \
						} \
						else \
						{ \
							open "popup_secondary_attachments"; \
						} \
					} \
					else \
					{ \
						close "popup_cac_weapon_primary"; \
						close "popup_primary_attachments"; \
						close "popup_secondary_attachments"; \
						close "popup_cac_weapon_secondary"; \
						close "popup_cac_handgun_secondary"; \
						close "popup_cac_machinePistols_secondary"; \
						close "popup_cac_assault_primary"; \
						close "popup_cac_SMG_primary"; \
						close "popup_cac_LMG_primary"; \
						close "popup_cac_sniper_primary"; \
						close "popup_cac_shotgun_primary"; \
						close "popup_cac_assault_secondary"; \
						close "popup_cac_SMG_secondary";  \
						close "popup_cac_LMG_secondary"; \
						close "popup_cac_sniper_secondary"; \
						close "popup_cac_shotgun_secondary"; \
						close "popup_cac_template"; \
						close "popup_cac_primary_camo"; \
						close "popup_cac_secondary_camo"; \
						close "popup_cac_bling"; \
						close "popup_cac_perk2"; \
						close "popup_cac_rocket_secondary"; \
						close "popup_primary_attachments_bling"; \
						close "popup_secondary_attachments_bling"; \
						close "popup_cac_other_primary"; \
					} \
				} \
			} \
			onFocus \
			{ \
				play "mouse_over"; \
				if ( dvarstring( "gameMode" ) != "mp" ) \
				{ \
					setItemColor "mw2_popup_button" backcolor 0 0 0 0; \
				} \
				setItemColor self backcolor 0 0 0 1; \
				setLocalVarBool "ui_popupAButton" ( 1 ); \
				setLocalVarString "ui_selected_ref" ( weaponArg ); \
			} \
			leaveFocus \
			{ \
				setItemColor self backcolor 1 1 1 0; \
				setLocalVarBool "ui_popupAButton" ( 0 ); \
				setPlayerData( "weaponNew" , weaponArg , "false" ); \
			} \
		} \
		itemDef \
		{ \
			rect 162 (4 + (itemNum*20)) 40 20 1 1 \
			style 3 \
			decoration \
			visible 1 \
			forecolor 1 1 1 1 \
			background "specialty_new" \
			textscale 0.55 \
			visible when ( ( getplayerdata( "weaponNew" , weaponArg ) || getplayerdataanybooltrue( "camoNew" , weaponArg ) || getplayerdataanybooltrue( "attachmentNew" , weaponArg ) ) ) \
		} \
		itemDef \
		{ \
			rect 162 (4 + (itemNum*20)) 40 20 1 1 \
			style 3 \
			decoration \
			visible 1 \
			forecolor 1 1 1 1 \
			background "specialty_locked" \
			textscale 0.55 \
			visible when ( ( isitemunlocked( weaponArg ) == 0 ) ) \
		}
		
#define CAC_SECONDARY_WEAPON_W_GOLD(itemNum,weaponArg) \
		itemDef \
		{ \
			name "cac_weapon_" ## weaponArg \
			rect -64 (4 + (itemNum*20)) 336 20 1 1 \
			group "mw2_popup_button" \
			style 1 \
			visible 1 \
			forecolor 1 1 1 1 \
			disablecolor 0.6 0.55 0.55 1       \
			background "popup_button_selection_bar_short" \
			type 1 \
			textfont 3 \
			textalign 4 \
			textalignx 68 \
			textscale 0.375 \
			disabled when ( !isitemunlocked( weaponArg ) ) \
			exp text ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ) \
			execKeyInt 168 \
			{ \
				if ( ( tablelookup( "mp/challengeTable.csv" , 6 , weaponArg , 4 ) ) != "" ) \
				{ \
					setLocalVarString "ui_challengeTierTable" ( tablelookup( "mp/challengeTable.csv" , 6 , weaponArg , 4 ) ); \
					open "menu_challenge_details"; \
				} \
			} \
			action \
			{ \
				play "mouse_click"; \
				if ( localvarint( "ui_tabDepth" ) == 0  ) \
				{ \
					setLocalVarString "ui_tab1Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 1 ) \
				{ \
					setLocalVarString "ui_tab2Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 2 ) \
				{ \
					setLocalVarString "ui_tab3Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 3 ) \
				{ \
					setLocalVarString "ui_tab4Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 4 ) \
				{ \
					setLocalVarString "ui_tab5Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( localvarint( "ui_tabDepth" ) == 5 ) \
				{ \
					setLocalVarString "ui_tab6Name" ( "@" + tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 3 ) ); \
				} \
				if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "weapon" ) != weaponArg ) \
				{ \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 0 , "none" ); \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 1 , "none" ); \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 1 , "camo" , "none" ); \
				} \
				setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 1 , "weapon" , weaponArg ); \
				setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "weaponSetups" , 1 , "camo" , "gold" ); \
				setPlayerData( "weaponNew" , weaponArg , "false" ); \
				if ( !( tablelookup( "mp/attachmentTable.csv" , 4 , getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 0 ) , 12 ) != "" || tablelookup( "mp/attachmentTable.csv" , 4 , getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 0 ) , 12 ) != "" ) && ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_gl" || getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_grip" || getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_shotgun" ) || getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) == "specialty_null_heartbeat" ) \
				{ \
					setPlayerData( "customClasses" , localVarInt ( "classIndex" ) , "perks" , 0 , "specialty_null" ); \
				} \
				setLocalVarString "loadoutPrimary" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "weapon" ) ); \
				setLocalVarString "loadoutPrimaryAttachment" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 0 ) ); \
				setLocalVarString "loadoutPrimaryAttachment2" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "attachment" , 1 ) ); \
				if ( localvarstring( "loadoutPrimaryAttachment2" ) == "" ) \
				{ \
					setLocalVarString "loadoutPrimaryAttachment2" ( "none" ); \
				} \
				setLocalVarString "loadoutPrimaryCamo" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "camo" ) ); \
				setLocalVarString "loadoutSecondaryCamo" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "camo" ) ); \
				setLocalVarString "loadoutSecondary" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "weapon" ) ); \
				setLocalVarString "loadoutSecondaryAttachment" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 0 ) ); \
				setLocalVarString "loadoutSecondaryAttachment2" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "attachment" , 1 ) ); \
				if ( localvarstring( "loadoutSecondaryAttachment2" ) == "" ) \
				{ \
					setLocalVarString "loadoutSecondaryAttachment2" ( "none" ); \
				} \
				setLocalVarString "loadoutSecondaryCamo" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "camo" ) ); \
				setLocalVarString "loadoutEquipment" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 0 ) ); \
				setLocalVarString "loadoutPerk1" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 1 ) ); \
				setLocalVarString "loadoutPerk2" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 2 ) ); \
				setLocalVarString "loadoutPerk3" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 3 ) ); \
				setLocalVarString "loadoutStreak1" ( getplayerdata( "killstreaks" , 0 ) ); \
				setLocalVarString "loadoutStreak2" ( getplayerdata( "killstreaks" , 1 ) ); \
				setLocalVarString "loadoutStreak3" ( getplayerdata( "killstreaks" , 2 ) ); \
				setLocalVarString "loadoutDeathStreak" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 4 ) ); \
				setLocalVarString "loadoutOffhandSecondary" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "specialGrenade" ) ); \
				setLocalVarString "loadoutClassName" ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "name" ) ); \
				if ( 1 == 0 ) \
				{ \
					if ( ( tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 11 ) != "" ) ) \
					{ \
						if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 1 ) == "specialty_bling" ) \
						{ \
							open "popup_primary_attachments_bling"; \
						} \
						else \
						{ \
							open "popup_primary_attachments"; \
						} \
					} \
					else \
					{ \
						open "popup_cac_primary_camo"; \
					} \
				} \
				else \
				{ \
					if ( ( tablelookup( "mp/statsTable.csv" , 4 , weaponArg , 11 ) != "" ) ) \
					{ \
						if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "perks" , 1 ) == "specialty_bling" && isitemunlocked( "specialty_secondarybling" ) ) \
						{ \
							open "popup_secondary_attachments_bling"; \
						} \
						else \
						{ \
							open "popup_secondary_attachments"; \
						} \
					} \
					else \
					{ \
						close "popup_cac_weapon_primary"; \
						close "popup_primary_attachments"; \
						close "popup_secondary_attachments"; \
						close "popup_cac_weapon_secondary"; \
						close "popup_cac_handgun_secondary"; \
						close "popup_cac_machinePistols_secondary"; \
						close "popup_cac_assault_primary"; \
						close "popup_cac_SMG_primary"; \
						close "popup_cac_LMG_primary"; \
						close "popup_cac_sniper_primary"; \
						close "popup_cac_shotgun_primary"; \
						close "popup_cac_assault_secondary"; \
						close "popup_cac_SMG_secondary";  \
						close "popup_cac_LMG_secondary"; \
						close "popup_cac_sniper_secondary"; \
						close "popup_cac_shotgun_secondary"; \
						close "popup_cac_template"; \
						close "popup_cac_primary_camo"; \
						close "popup_cac_secondary_camo"; \
						close "popup_cac_bling"; \
						close "popup_cac_perk2"; \
						close "popup_cac_rocket_secondary"; \
						close "popup_primary_attachments_bling"; \
						close "popup_secondary_attachments_bling"; \
						close "popup_cac_other_primary"; \
					} \
				} \
			} \
			onFocus \
			{ \
				play "mouse_over"; \
				if ( dvarstring( "gameMode" ) != "mp" ) \
				{ \
					setItemColor "mw2_popup_button" backcolor 0 0 0 0; \
				} \
				setItemColor self backcolor 0 0 0 1; \
				setLocalVarBool "ui_popupAButton" ( 1 ); \
				setLocalVarString "ui_selected_ref" ( weaponArg ); \
			} \
			leaveFocus \
			{ \
				setItemColor self backcolor 1 1 1 0; \
				setLocalVarBool "ui_popupAButton" ( 0 ); \
				setPlayerData( "weaponNew" , weaponArg , "false" ); \
			} \
		} \
		itemDef \
		{ \
			rect 162 (4 + (itemNum*20)) 40 20 1 1 \
			style 3 \
			decoration \
			visible 1 \
			forecolor 1 1 1 1 \
			background "specialty_new" \
			textscale 0.55 \
			visible when ( ( getplayerdata( "weaponNew" , weaponArg ) || getplayerdataanybooltrue( "camoNew" , weaponArg ) || getplayerdataanybooltrue( "attachmentNew" , weaponArg ) ) ) \
		} \
		itemDef \
		{ \
			rect 162 (4 + (itemNum*20)) 40 20 1 1 \
			style 3 \
			decoration \
			visible 1 \
			forecolor 1 1 1 1 \
			background "specialty_locked" \
			textscale 0.55 \
			visible when ( ( isitemunlocked( weaponArg ) == 0 ) ) \
		}
		
#define CLASS_FOCUS(weaponArg) if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 0 , "weapon" ) == weaponArg ) { setfocus "cac_weapon_" ## weaponArg; }
#define CLASS_FOCUS_SECONDARY(weaponArg) if ( getplayerdata( "customClasses" , localvarint( "classIndex" ) , "weaponSetups" , 1 , "weapon" ) == weaponArg ) { setfocus "cac_weapon_" ## weaponArg; }
