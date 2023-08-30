// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_gign_paris_lmg" );
    self attach( "head_gign_d", "", 1 );
    self.headmodel = "head_gign_d";
    self setviewmodel( "viewhands_sas" );
    self.voice = "french";
}

precache()
{
    precachemodel( "mp_body_gign_paris_lmg" );
    precachemodel( "head_gign_d" );
    precachemodel( "viewhands_sas" );
}
