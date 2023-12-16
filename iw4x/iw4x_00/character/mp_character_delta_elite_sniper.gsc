// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_ally_delta_sniper" );
    self attach( "head_ally_delta_sniper", "", 1 );
    self.headmodel = "head_ally_delta_sniper";
    self setviewmodel( "viewhands_delta" );
    self.voice = "delta";
}

precache()
{
    precachemodel( "mp_body_ally_delta_sniper" );
    precachemodel( "head_ally_delta_sniper" );
    precachemodel( "viewhands_delta" );
}
