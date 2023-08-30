// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_russian_military_assault_a_airborne" );
    self attach( "head_russian_military_aa", "", 1 );
    self.headmodel = "head_russian_military_aa";
    self setviewmodel( "viewhands_russian_b" );
    self.voice = "russian";
}

precache()
{
    precachemodel( "mp_body_russian_military_assault_a_airborne" );
    precachemodel( "head_russian_military_aa" );
    precachemodel( "viewhands_russian_b" );
}
