// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_russian_military_lmg_a" );
    self attach( "head_russian_military_b", "", 1 );
    self.headmodel = "head_russian_military_b";
    self setviewmodel( "viewhands_russian_a" );
    self.voice = "russian";
}

precache()
{
    precachemodel( "mp_body_russian_military_lmg_a" );
    precachemodel( "head_russian_military_b" );
    precachemodel( "viewhands_russian_a" );
}
