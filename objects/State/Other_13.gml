/// @description EnemyHurt
if (live_call()) return live_result;
if State_Start
{
	timer = 0
		
	Anim_Destroy(id,"target_choice_x")
	Anim_Create(battle_soul,"image_alpha",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,image_alpha,1-image_alpha,30,clamp(enemy_hurt_time-30,30,infinity))
	Anim_Create(id,"image_xscale",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,image_xscale,-image_xscale/2,30,clamp(enemy_hurt_time-30,30,infinity))
	Anim_Create(id,"image_alpha",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,image_alpha,-image_alpha,30,clamp(enemy_hurt_time-30,30,infinity))
	SetArena_Width(Battle.Arena_Size[0],30,clamp(enemy_hurt_time-30,30,infinity),global.Main_Arena,[7,1])
	SetArena_Height(Battle.Arena_Size[1],30,clamp(enemy_hurt_time-30,30,infinity),global.Main_Arena,[7,1])
	SetArena_X(Battle.Arena_Pos[0],30,clamp(enemy_hurt_time-30,30,infinity),global.Main_Arena,[7,1])
	SetArena_Y(Battle.Arena_Pos[1],30,clamp(enemy_hurt_time-30,30,infinity),global.Main_Arena,[7,1])
}
State_Start = false
timer ++
next = STATE.EnemyDialog
if timer == enemy_hurt_time
{
	last = now
	now = next
	State_Start = true
}
battle_soul.x_y(x,y)