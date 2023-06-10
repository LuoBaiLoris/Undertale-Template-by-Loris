if (live_call()) return live_result;
timer ++
destroy_time --
if IsCollision(battle_soul_coll)  
{
	if color == Color.Normal
	{
		Player_Hurt(Damage,Time,1,KR)
	}
	else if color == Color.Orange
	{
		if !MOVE()
		{
			Player_Hurt(Damage,Time,1,KR)
		}
	}
	else if color == Color.Blue
	{
		if MOVE()
		{
			Player_Hurt(Damage,Time,1,KR)
		}
	}
}
if destroy_time < 0
{
	instance_destroy()
}
//show_debug_message(1)