// IW5 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    switch ( codescripts\character::get_random_character( 2 ) )
    {
        case 0:
            character\mp_character_opforce_hench_smg_a::main();
            break;
        case 1:
            character\mp_character_opforce_hench_smg_b::main();
            break;
    }
}

precache()
{
    character\mp_character_opforce_hench_smg_a::precache();
    character\mp_character_opforce_hench_smg_b::precache();
}
