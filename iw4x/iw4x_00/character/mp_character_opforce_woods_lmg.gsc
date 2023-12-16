// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_russian_military_lmg_a_woodland" );
    self attach( "head_russian_military_a", "", 1 );
    self.headmodel = "head_russian_military_a";
    self setviewmodel( "viewhands_russian_c" );
    self.voice = "russian";
}

precache()
{
    precachemodel( "mp_body_russian_military_lmg_a_woodland" );
    precachemodel( "head_russian_military_a" );
    precachemodel( "viewhands_russian_c" );
}
