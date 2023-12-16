// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_ally_pmc_sniper" );
    self setviewmodel( "viewhands_pmc" );
    self.voice = "taskforce";
}

precache()
{
    precachemodel( "mp_body_ally_pmc_sniper" );
    precachemodel( "viewhands_pmc" );
}
