// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_gign_paris_smg" );
    self attach( "head_gign_saber_gasmask", "", 1 );
    self.headmodel = "head_gign_saber_gasmask";
    self setviewmodel( "viewhands_sas" );
    self.voice = "french";
}

precache()
{
    precachemodel( "mp_body_gign_paris_smg" );
    precachemodel( "head_gign_saber_gasmask" );
    precachemodel( "viewhands_sas" );
}
