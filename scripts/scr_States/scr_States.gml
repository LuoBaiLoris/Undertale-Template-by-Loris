function EndWave()
{
	with State
	{
		State_Start = true
		last = now
		now = next
	}
	instance_destroy()
	instance_destroy(battle_bullet)
	instance_destroy(battle_bone_wall)
	instance_destroy(bullet_blade_1)
	instance_destroy(battle_bullet_bone)
	instance_destroy(battle_bullet_bone2)
	SetArena_Width(565,30,0,global.Main_Arena,[7,1])
	SetArena_Height(130,30,0,global.Main_Arena,[7,1])
	SetArena_X(320,30,0,global.Main_Arena,[7,1])
	SetArena_Y(320,30,0,global.Main_Arena,[7,1])
	SetArena_Angle(0,30,0,global.Main_Arena,[7,1])
	
}