/// @description ItemMenuDialog
if (live_call()) return live_result;
if State_Start
{
	battle_soul.image_alpha = 0
	Menu_Dialog = MAIN_GAMEDATA.Items[Select].Menu_Text

	//array_resize(MAIN_GAMEDATA.Items,array_length(MAIN_GAMEDATA.Items)-1)
	Dialog = instance_create_depth(global.Main_Arena.x-global.Main_Arena.width/2+40,global.Main_Arena.y-global.Main_Arena.height/2+35,DEPTH.Text,Text)
	Dialog.text = Menu_Dialog
}
State_Start = false
timer ++
next = STATE.EnemyDialog
if !instance_exists(Dialog)
{
	
	//instance_destroy(Dialog)
	//audio_play_sound(menuconfirm,0,0)
	last = now
	now = next
	State_Start = true
}