// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    switch ( codescripts\character::get_random_character( 4 ) )
    {
        case 0:
            character\mp_character_opforce_hench_assault_a::main();
            break;
        case 1:
            character\mp_character_opforce_hench_assault_b::main();
            break;
        case 2:
            character\mp_character_opforce_hench_assault_c::main();
            break;
        case 3:
            character\mp_character_opforce_hench_assault_d::main();
            break;
    }
}

precache()
{
    character\mp_character_opforce_hench_assault_a::precache();
    character\mp_character_opforce_hench_assault_b::precache();
    character\mp_character_opforce_hench_assault_c::precache();
    character\mp_character_opforce_hench_assault_d::precache();
}
