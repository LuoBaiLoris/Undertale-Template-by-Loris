/// @description ButtonSelect
if (live_call()) return live_result;
battle_soul.canmove = false
if global.Main_Arena.width == 565
{
if State_Start
{
	Menu_Dialog = Encounter_Dialog
	Select = 0
	Select_ = 0
	x_offset = 0
	x_target = 0
	y_offset = 0
	y_target = 0
	Dialog = instance_create_depth(global.Main_Arena.x-global.Main_Arena.width/2+40,global.Main_Arena.y-global.Main_Arena.height/2+35,DEPTH.Text,Text)
	Dialog.text = Menu_Dialog
	Dialog.candestroy =false
}
State_Start = false
if Button_Select_canmove 
{
		
with battle_soul
{
	if place_meeting(x,y,button_fight)
	{
		State.ButtonChoice = 0
	}
	else if place_meeting(x,y,button_act)
	{
		State.ButtonChoice = 1
	}
	else if place_meeting(x,y,button_item)
	{
		State.ButtonChoice = 2
	}
	else if place_meeting(x,y,button_mercy)
	{
		State.ButtonChoice = 3
	}
	else
	{
		State.ButtonChoice = noone
	}
}
}
else
{
	if Input_Right_Pressed()
	{
		audio_play_sound(mmove,0,0)
		ButtonChoice ++		
	}
	if Input_Left_Pressed()
	{
		audio_play_sound(mmove,0,0)
		ButtonChoice --
	}
	if ButtonChoice > 3
	{
		ButtonChoice = 0
	}
	if ButtonChoice < 0
	{
		ButtonChoice = 3
	}
}
switch(ButtonChoice)
{
	case 0:
		next = STATE.FightChoice	
		battle_soul.x_y_angle(button_fight.x+lengthdir_x(-38,button_fight.angle),button_fight.y+lengthdir_y(-38,button_fight.angle),button_fight.angle)
	break
	case 1:
		next = STATE.ActChoice
		battle_soul.x_y_angle(button_act.x+lengthdir_x(-38,button_act.angle),button_act.y+lengthdir_y(-38,button_act.angle),button_act.angle)
	break
	case 2:
		next = STATE.ItemChoice
		battle_soul.x_y_angle(button_item.x+lengthdir_x(-38,button_item.angle),button_item.y+lengthdir_y(-38,button_item.angle),button_item.angle)
	break
	case 3:
		next = STATE.MercyChoice
		battle_soul.x_y_angle(button_mercy.x+lengthdir_x(-38,button_mercy.angle),button_mercy.y+lengthdir_y(-38,button_mercy.angle),button_mercy.angle)
	break
	case noone:
		next = now
	//battle_soul.x_y_angle(button_fight.x+lengthdir_x(-38,button_fight.angle),button_fight.y+lengthdir_y(-38,button_fight.angle),button_fight.angle)
	break
}
if Input_Confirm_Pressed()
{	
	audio_play_sound(menuconfirm,0,0)
	if !array_length(MAIN_GAMEDATA.Items) && next == STATE.ItemChoice
	{
	}
	else
	{
	instance_destroy(Dialog)
	last = now
	now = next
	State_Start = true
	}
}
}