// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_gign_paris_shotgun" );
    self attach( "head_gign_b", "", 1 );
    self.headmodel = "head_gign_b";
    self setviewmodel( "viewhands_sas" );
    self.voice = "french";
}

precache()
{
    precachemodel( "mp_body_gign_paris_shotgun" );
    precachemodel( "head_gign_b" );
    precachemodel( "viewhands_sas" );
}
