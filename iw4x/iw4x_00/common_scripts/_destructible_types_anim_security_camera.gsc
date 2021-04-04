#using_animtree( "destructibles_dlc" );
main()
{
	level._destructible_preanims[ "security_camera_idle" ] = %security_camera_idle;
	level._destructible_preanims[ "security_camera_null" ] = %security_camera_null;
	level._destructible_preanims[ "security_camera_destroy" ] = %security_camera_destroy;
}