// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "mp_body_sas_urban_shotgun" );
    codescripts\character::attachhead( "alias_sas_heads", xmodelalias\alias_sas_heads::main() );
    self setviewmodel( "viewhands_sas" );
    self.voice = "british";
}

precache()
{
    precachemodel( "mp_body_sas_urban_shotgun" );
    codescripts\character::precachemodelarray( xmodelalias\alias_sas_heads::main() );
    precachemodel( "viewhands_sas" );
}
