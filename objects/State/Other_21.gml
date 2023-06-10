/// @description EnemyDialog
if (live_call()) return live_result;
if State_Start
{
	
	
	if last != STATE.EnemyHurt
	{
		Anim_Create(battle_soul,"image_alpha",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,image_alpha,1-image_alpha,30,0)
		SetArena_Width(Battle.Arena_Size[0],30,0,global.Main_Arena,[7,1])
		SetArena_Height(Battle.Arena_Size[1],30,0,global.Main_Arena,[7,1])
		SetArena_X(Battle.Arena_Pos[0],30,0,global.Main_Arena,[7,1])
		SetArena_Y(Battle.Arena_Pos[1],30,0,global.Main_Arena,[7,1])
	}
	Enemy_Dialog = Create_EnemyDialog([320+60,140],EnemyDialog)
}
State_Start = false
next = STATE.Defing
battle_soul.x_y(x,y)
if !instance_exists(Enemy_Dialog)
{
	last = now
	now = next
	State_Start = true
}