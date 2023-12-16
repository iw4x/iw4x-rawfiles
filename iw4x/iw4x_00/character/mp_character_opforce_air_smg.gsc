// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_russian_military_smg_a_airborne" );
    self attach( "head_russian_military_f", "", 1 );
    self.headmodel = "head_russian_military_f";
    self setviewmodel( "viewhands_russian_b" );
    self.voice = "russian";
}

precache()
{
    precachemodel( "mp_body_russian_military_smg_a_airborne" );
    precachemodel( "head_russian_military_f" );
    precachemodel( "viewhands_russian_b" );
}
