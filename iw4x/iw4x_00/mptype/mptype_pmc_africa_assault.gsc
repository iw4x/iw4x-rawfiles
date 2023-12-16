// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    switch ( codescripts\character::get_random_character( 2 ) )
    {
        case 0:
            character\mp_character_pmc_africa_assault_a::main();
            break;
        case 1:
            character\mp_character_pmc_africa_assault_aa::main();
            break;
    }
}

precache()
{
    character\mp_character_pmc_africa_assault_a::precache();
    character\mp_character_pmc_africa_assault_aa::precache();
}
