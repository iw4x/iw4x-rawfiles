// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_russian_military_lmg_a_arctic" );
    codescripts\character::attachhead( "alias_russian_military_arctic_heads", xmodelalias\alias_russian_military_arctic_heads::main() );
    self setviewmodel( "viewhands_russian_d" );
    self.voice = "russian";
}

precache()
{
    precachemodel( "mp_body_russian_military_lmg_a_arctic" );
    codescripts\character::precachemodelarray( xmodelalias\alias_russian_military_arctic_heads::main() );
    precachemodel( "viewhands_russian_d" );
}
