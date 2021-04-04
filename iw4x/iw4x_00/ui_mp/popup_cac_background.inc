#ifndef ITEMNUM
#define ITEMNUM 10
#endif

itemDef
{
	rect -918 -480 1708 960 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0 0 0 0.35
	background "white"
	visible when ( !localvarint( "ui_centerPopup" ) )
}
itemDef
{
	rect -918 -480 1708 960 1 1
	style 1
	decoration
	visible 1
	forecolor 1 1 1 1
	backcolor 1 1 1 1
	background "xpbar_stencilbase"
}
itemDef
{
	rect -64 0 854 184 1 1
	style 1
	exp rect H(4 + ITEMNUM * 20)
	decoration
	visible 1
	forecolor 1 1 1 1
	backcolor 0.5 0.5 0.5 1
	background "white"
}
itemDef
{
	rect -64 0 1708 480 1 1
	style 3
	decoration
	visible 1
	forecolor 1 1 1 0.75
	background "mw2_popup_bg_fogstencil"
	exp rect x ( 0 - ( ( float( milliseconds( ) % 60000 ) / 60000 ) * ( 854 ) ) )
}
itemDef
{
	rect -64 0 -1708 -480 1 1
	style 3
	decoration
	visible 1
	forecolor 0.85 0.85 0.85 0.85
	background "mw2_popup_bg_fogscroll"
	exp rect x ( 0 - ( ( float( milliseconds( ) % 60000 ) / 60000 ) * ( 854 ) ) )
}
itemDef
{
	rect -64 0 854 0 1 1
	style 3
	decoration
	visible 1
	forecolor 1 1 1 1
	background "mockup_popup_bg_stencilfill"
	exp rect h ( 4 + ITEMNUM * 20 )
}
itemDef 
{
	rect -64 0 -1708 -480 1 1
	style 3
	decoration
	visible 0
	forecolor 1 1 1 1
	background "mw2_popup_bg_fogstencil"
	exp rect x ( ( - 854 ) + ( ( float( milliseconds( ) % 50000 ) / 50000 ) * ( 854 ) ) )
}
itemDef
{
	rect -64 0 -1708 -480 1 1
	style 3
	decoration
	visible 1
	forecolor 0.85 0.85 0.85 1
	background "mw2_popup_bg_fogscroll"
	exp rect x ( ( - 854 ) + ( ( float( milliseconds( ) % 50000 ) / 50000 ) * ( 854 ) ) )
}
itemDef
{
	rect -64 0 854 0 1 1
	style 3
	decoration
	forecolor 1 1 1 0
	background "small_box_lightfx"
	exp rect h ( 4 + ITEMNUM * 20 )
}
itemDef
{
	rect -96 -32 32 32 1 1
	style 3
	decoration
	forecolor 0 0 0 1
	background "drop_shadow_tl"
	visible when ( !localvarint( "ui_centerPopup" ) )
}
itemDef
{
	rect -64 -32 854 32 1 1
	style 3
	decoration
	forecolor 0 0 0 1
	background "drop_shadow_t"
	visible when ( !localvarint( "ui_centerPopup" ) )
}
itemDef
{
	rect 790 -32 32 32 1 1
	style 3
	decoration
	forecolor 0 0 0 1
	background "drop_shadow_tr"
	visible when ( !localvarint( "ui_centerPopup" ) )
}
itemDef
{
	rect 790 0 32 0 1 1
	style 3
	decoration
	forecolor 0 0 0 1
	background "drop_shadow_r"
	exp rect h ( 4 + ITEMNUM * 20 )
	visible when ( !localvarint( "ui_centerPopup" ) )
}
itemDef
{
	rect 790 0 32 32 1 1
	style 3
	decoration
	forecolor 0 0 0 1
	background "drop_shadow_br"
	exp rect y ( 4 + ITEMNUM * 20 )
	visible when ( !localvarint( "ui_centerPopup" ) )
}
itemDef
{
	rect -64 0 854 32 1 1
	style 3
	decoration
	forecolor 0 0 0 1
	background "drop_shadow_b"
	exp rect y ( 4 + ITEMNUM * 20 )
	visible when ( !localvarint( "ui_centerPopup" ) )
}
itemDef
{
	rect -96 0 32 32 1 1
	style 3
	decoration
	forecolor 0 0 0 1
	background "drop_shadow_bl"
	exp rect y ( 4 + ITEMNUM * 20 )
	visible when ( !localvarint( "ui_centerPopup" ) )
}
itemDef
{
	rect -96 0 32 0 1 1
	style 3
	decoration
	forecolor 0 0 0 1
	background "drop_shadow_l"
	exp rect h ( 4 + ITEMNUM * 20 )
	visible when ( !localvarint( "ui_centerPopup" ) )
}
itemDef
{
	rect -64 0 280 184 1 1
	exp rect H( 4 + ITEMNUM * 20 )
	style 1
	decoration
	visible 1
	forecolor 1 1 1 1
	backcolor 1 1 1 0
	background "gradient_fadein"
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0.25 0.25 0.25 1
	background "white"
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 1 ) * 20 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 1 - 1 ) )
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0 0 0 1
	background "gradient_fadein"
	textfont 9
	textalign 4
	textalignx 68
	textscale 0.375
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 1 ) * 20 ) )
	exp forecolor r ( 1 - ( ( localvarint( "ui_tabDepth" ) > 1 ) * 0.35 ) )
	exp forecolor g ( 1 - ( ( localvarint( "ui_tabDepth" ) > 1 ) * 0.35 ) )
	exp forecolor b ( 1 - ( ( localvarint( "ui_tabDepth" ) > 1 ) * 0.35 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 1 - 1 ) )
	exp text ( localvarstring( "ui_tab1Name" ) )
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0.25 0.25 0.25 1
	background "white"
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 2 ) * 20 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 2 - 1 ) )
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0 0 0 1
	background "gradient_fadein"
	textfont 9
	textalign 4
	textalignx 68
	textscale 0.375
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 2 ) * 20 ) )
	exp forecolor r ( 1 - ( ( localvarint( "ui_tabDepth" ) > 2 ) * 0.35 ) )
	exp forecolor g ( 1 - ( ( localvarint( "ui_tabDepth" ) > 2 ) * 0.35 ) )
	exp forecolor b ( 1 - ( ( localvarint( "ui_tabDepth" ) > 2 ) * 0.35 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 2 - 1 ) )
	exp text ( localvarstring( "ui_tab2Name" ) )
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0.25 0.25 0.25 1
	background "white"
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 3 ) * 20 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 3 - 1 ) )
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0 0 0 1
	background "gradient_fadein"
	textfont 9
	textalign 4
	textalignx 68
	textscale 0.375
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 3 ) * 20 ) )
	exp forecolor r ( 1 - ( ( localvarint( "ui_tabDepth" ) > 3 ) * 0.35 ) )
	exp forecolor g ( 1 - ( ( localvarint( "ui_tabDepth" ) > 3 ) * 0.35 ) )
	exp forecolor b ( 1 - ( ( localvarint( "ui_tabDepth" ) > 3 ) * 0.35 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 3 - 1 ) )
	exp text ( localvarstring( "ui_tab3Name" ) )
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0.25 0.25 0.25 1
	background "white"
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 4 ) * 20 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 4 - 1 ) )
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0 0 0 1
	background "gradient_fadein"
	textfont 9
	textalign 4
	textalignx 68
	textscale 0.375
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 4 ) * 20 ) )
	exp forecolor r ( 1 - ( ( localvarint( "ui_tabDepth" ) > 4 ) * 0.35 ) )
	exp forecolor g ( 1 - ( ( localvarint( "ui_tabDepth" ) > 4 ) * 0.35 ) )
	exp forecolor b ( 1 - ( ( localvarint( "ui_tabDepth" ) > 4 ) * 0.35 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 4 - 1 ) )
	exp text ( localvarstring( "ui_tab4Name" ) )
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0.25 0.25 0.25 1
	background "white"
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 5 ) * 20 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 5 - 1 ) )
}
itemDef
{
	rect -64 0 280 20 1 1
	style 1
	decoration
	forecolor 1 1 1 1
	backcolor 0 0 0 1
	background "gradient_fadein"
	textfont 9
	textalign 4
	textalignx 68
	textscale 0.375
	exp rect y ( - 20 - ( ( localvarint( "ui_tabDepth" ) - 5 ) * 20 ) )
	exp forecolor r ( 1 - ( ( localvarint( "ui_tabDepth" ) > 5 ) * 0.35 ) )
	exp forecolor g ( 1 - ( ( localvarint( "ui_tabDepth" ) > 5 ) * 0.35 ) )
	exp forecolor b ( 1 - ( ( localvarint( "ui_tabDepth" ) > 5 ) * 0.35 ) )
	visible when ( localvarint( "ui_tabDepth" ) > ( 5 - 1 ) )
	exp text ( localvarstring( "ui_tab5Name" ) )
}
