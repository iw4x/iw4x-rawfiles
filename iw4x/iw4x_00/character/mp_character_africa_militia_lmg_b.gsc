// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_africa_militia_lmg_b" );
    codescripts\character::attachhead( "alias_africa_militia_heads_mp", xmodelalias\alias_africa_militia_heads_mp::main() );
    self setviewmodel( "viewhands_african_militia" );
    self.voice = "african";
}

precache()
{
    precachemodel( "mp_body_africa_militia_lmg_b" );
    codescripts\character::precachemodelarray( xmodelalias\alias_africa_militia_heads_mp::main() );
    precachemodel( "viewhands_african_militia" );
}
