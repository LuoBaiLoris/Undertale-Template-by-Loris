/// @description ItemChoice
if (live_call()) return live_result;
if State_Start
{		
	//Choice = instance_create_depth(global.Main_Arena.x-global.Main_Arena.width/2+40+30,global.Main_Arena.y-global.Main_Arena.height/2+30,layer_get_id("Text"),Text)
	//Choice.text = "{font:font_eng}{*}{noskip}{novoice}{pn:100}"+MAIN_GAMEDATA.Items[0].Name
}
State_Start = false
battle_soul.x_y(global.Main_Arena.x-global.Main_Arena.width/2+40,global.Main_Arena.y-global.Main_Arena.height/2+40*clamp(Select_,0,2)+30)
if Input_Down_Pressed()
{
	Select_ ++
	Select ++
	if Select<=array_length(MAIN_GAMEDATA.Items)-1 audio_play_sound(mmove,0,0);
	if Select_ > 2
	{
		//Anim_Create(id,"y_offset",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,y_offset,-1,10)
		y_target --;
	}
		
}
if Input_Up_Pressed()
{
	Select_ --
	Select --
	if Select>=0 audio_play_sound(mmove,0,0);
	if Select_ < 0
	{
		//Anim_Create(id,"y_offset",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,y_offset,1,10)
		y_target ++;
	}
}
if Input_Cancel_Pressed()
{
	now = last
	Select_ = 0
	Select = 0
	y_offset = 0
	y_target = 0
	State_Start = true
}
	
Select = clamp(Select,0,array_length(MAIN_GAMEDATA.Items)-1)
Select_ = clamp(Select_,0,clamp(array_length(MAIN_GAMEDATA.Items),1,3)-1)
if y_target < -(array_length(MAIN_GAMEDATA.Items)-1)+2
{
	y_target = -(array_length(MAIN_GAMEDATA.Items)-1)+2
}
if y_target > 0
{
	y_target = 0
}
y_offset = Ease(y_offset,0.3,EaseMode.Lerp,y_target)
next = STATE.ItemMenuDialog
if Input_Confirm_Pressed()
{
	//Chosen = MAIN_GAMEDATA.Items[Select]
	audio_play_sound(menuconfirm,0,0)
	
	last = now
	now = next
	State_Start = true
	
}