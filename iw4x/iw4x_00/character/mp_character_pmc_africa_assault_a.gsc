// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_pmc_africa_assault_a" );
    codescripts\character::attachhead( "alias_pmc_africa_heads", xmodelalias\alias_pmc_africa_heads::main() );
    self setviewmodel( "viewhands_pmc" );
    self.voice = "russian";
}

precache()
{
    precachemodel( "mp_body_pmc_africa_assault_a" );
    codescripts\character::precachemodelarray( xmodelalias\alias_pmc_africa_heads::main() );
    precachemodel( "viewhands_pmc" );
}
