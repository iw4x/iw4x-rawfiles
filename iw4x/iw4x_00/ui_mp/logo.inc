#ifndef LOGO_IMAGE
#define LOGO_IMAGE									"logo_cod2"
#endif

#ifndef LOGO_X
#define LOGO_X										304
#endif

#ifndef LOGO_Y
#define LOGO_Y										215
#endif

#ifndef LOGO_WIDTH
#define LOGO_WIDTH									288
#endif

#ifndef LOGO_HEIGHT
#define LOGO_HEIGHT									72
#endif

#ifndef LOGO_RECT
#define LOGO_RECT									LOGO_X LOGO_Y LOGO_WIDTH LOGO_HEIGHT HORIZONTAL_ALIGN_SUBLEFT VERTICAL_ALIGN_SUBTOP
#endif

#define LOGO_GAME \
	itemDef \
	{ \
		rect										LOGO_RECT \
		style										WINDOW_STYLE_SHADER \
		foreColor									CHOICE_TEXTCOLOR \
		background									LOGO_IMAGE \
		decoration									\
		textScale									0.55 \
		visible										1 \
		exp											forecolor a ( ( ( sin ( milliseconds( ) / 1000 ) + 1 ) * 0.250000 ) + 0.500000 ) \
	}