function Game_Restart()
{
	//instance_destroy(all)
	room_goto(room_init)
	Anim_Uninit()
	game_restart()
}