if (live_call()) return live_result;
image_angle = angle
timer ++
image_blend = COLOR_SWITCH()
image_yscale = length/2
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
dest --
if dest < 0
{
	instance_destroy()
}
