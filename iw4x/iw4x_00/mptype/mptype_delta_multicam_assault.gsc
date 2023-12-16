// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    switch ( codescripts\character::get_random_character( 4 ) )
    {
        case 0:
            character\mp_character_delta_elite_assault_aa::main();
            break;
        case 1:
            character\mp_character_delta_elite_assault_ab::main();
            break;
        case 2:
            character\mp_character_delta_elite_assault_ba::main();
            break;
        case 3:
            character\mp_character_delta_elite_assault_bb::main();
            break;
    }
}

precache()
{
    character\mp_character_delta_elite_assault_aa::precache();
    character\mp_character_delta_elite_assault_ab::precache();
    character\mp_character_delta_elite_assault_ba::precache();
    character\mp_character_delta_elite_assault_bb::precache();
}
