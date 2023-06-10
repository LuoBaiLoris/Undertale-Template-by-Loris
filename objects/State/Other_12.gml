/// @description Attacking
if (live_call()) return live_result;
battle_soul.image_alpha = 0
if State_Start
{	
	alarm[0] = 90
	target_choice_y = y
	target_choice_x = x-global.Main_Arena.width/2
	target = Anim_Create(id,"target_choice_x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,x-global.Main_Arena.width/2,global.Main_Arena.width,80,0)
	image_xscale = 1
	image_alpha = 1
}

State_Start = false
next = STATE.EnemyHurt
if Input_Confirm_Pressed()
{
	last = now
	now = next
	State_Start = true
}
