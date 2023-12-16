// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_gign_paris_assault" );
    self attach( "head_gign_c", "", 1 );
    self.headmodel = "head_gign_c";
    self setviewmodel( "viewhands_sas" );
    self.voice = "french";
}

precache()
{
    precachemodel( "mp_body_gign_paris_assault" );
    precachemodel( "head_gign_c" );
    precachemodel( "viewhands_sas" );
}
