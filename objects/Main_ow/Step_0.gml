if (live_call()) return live_result;
if global.Changeing == false {
	if alpha >= 0 {
		alpha -= 0.05
	}
}
else {
	alpha += 0.1
}
if alpha >= 2 {
	room_goto(room_battle)
}
if instance_exists(global.ins_text_ow) {
	texting = true
	timer = -1
}
else if global.Menuing
{
	_menu_timer ++
}
else {
	global.ins_text_ow = noone
	texting = false
	if timer < 10 {
		timer += 1
	}
	if Input_Menu_Pressed()
	{	 
		audio_play_sound(menuconfirm,0,0)
		_menuchoice = 0
		_menuchoice_2 = 0
		_menuchoice_3 = 0
		_menus = -1
		_menu_start = 0
		_menu_timer = -1
		global.Menuing = 1
	}
}
if texting {
	global.ow_canmove = false
}
else if global.Menuing
{
	
	if _menus == -1
	{
		if Input_Down_Pressed()
		{
			_menuchoice ++
			if _menuchoice > 2 _menuchoice = 0
				audio_play_sound(mmove,0,0)
		}
		if Input_Up_Pressed()
		{
			_menuchoice --
			if _menuchoice < 0 _menuchoice = 2
			audio_play_sound(mmove,0,0)
		}
		if Input_Cancel_Pressed() && _menu_timer >= 5
		{
			audio_play_sound(mmove,0,0)
			_menus = -1
			global.Menuing = 0
			_menu_timer = 0
			_menuchoice_2 = 0
		}
		switch _menuchoice
		{
			case 0:
				_menusoul.x = global.Camera_Pos[0]+80-20
				_menusoul.y = global.Camera_Pos[1]+230+10
				if Input_Confirm_Pressed() && _menu_timer >= 5
				{
					audio_play_sound(menuconfirm,0,0)
					_menus = 0
					_menu_timer = 0
				}
			break
			case 1:
				_menusoul.x = global.Camera_Pos[0]+80-20
				_menusoul.y = global.Camera_Pos[1]+230+10+35
				if Input_Confirm_Pressed() && _menu_timer >= 5
				{
					audio_play_sound(menuconfirm,0,0)
					_menus = 3
					_menu_timer = 0
				}
			break
			case 2:
				_menusoul.x = global.Camera_Pos[0]+80-20
				_menusoul.y = global.Camera_Pos[1]+230+10+70
				if Input_Confirm_Pressed() && _menu_timer >= 5
				{
					audio_play_sound(menuconfirm,0,0)
					_menus = 4
					_menu_timer = 0
				}
			break
		}
		
		
	}
	if _menus == 0 
	{
		if Input_Down_Pressed()&& array_length(MAIN_GAMEDATA.Items) > 0
		{
			_menuchoice_2 ++
			if _menuchoice_2 > array_length(MAIN_GAMEDATA.Items)-1 _menuchoice_2 = 0
				audio_play_sound(mmove,0,0)
		}
		if Input_Up_Pressed()&& array_length(MAIN_GAMEDATA.Items) > 0
		{
			_menuchoice_2 --
			if _menuchoice_2 < 0 _menuchoice_2 = array_length(MAIN_GAMEDATA.Items)-1
			audio_play_sound(mmove,0,0)
		}
		if Input_Confirm_Pressed() && _menu_timer >= 5 && array_length(MAIN_GAMEDATA.Items) > 0
		{
			audio_play_sound(menuconfirm,0,0)
			_menus = 1
			_menu_timer = 0
		}
		if Input_Cancel_Pressed() && _menu_timer >= 5
		{
			audio_play_sound(mmove,0,0)
			_menus = -1
			_menu_timer = 0
			_menuchoice_2 = 0
		}
		var xx0 = 320-80
		var yy0 = 240-180
		_menusoul.x = global.Camera_Pos[0]+xx0+40
		_menusoul.y = global.Camera_Pos[1]+yy0+30+12+_menuchoice_2*30
	}
	if _menus == 1
	{
		if Input_Right_Pressed()
		{
			_menuchoice_3 ++
			if _menuchoice_3 > 3-1 _menuchoice_3 = 0
				audio_play_sound(mmove,0,0)
		}
		if Input_Left_Pressed()
		{
			_menuchoice_3 --
			if _menuchoice_3 < 0 _menuchoice_3 = 3-1
			audio_play_sound(mmove,0,0)
		}
		if Input_Cancel_Pressed() && _menu_timer >= 5
		{
			audio_play_sound(mmove,0,0)
			_menus = 0
			_menu_timer = 0
		}
		switch _menuchoice_3
		{
			case 0:
				if Input_Confirm_Pressed() && _menu_timer >= 5
				{
					global.Menuing = 0
					Menu_Dialog = MAIN_GAMEDATA.Items[_menuchoice_2].Menu_Text
					Add_Text_ow(Menu_Dialog,Dir.Down)
					with MAIN_GAMEDATA.Items[_menuchoice_2]
					{
						event_user(0)
						if can_destroy
						{
							array_delete(MAIN_GAMEDATA.Items,other._menuchoice_2,1)
						}
					}
				}
				_menusoul.x = global.Camera_Pos[0]+80+200+30-15
				_menusoul.y = global.Camera_Pos[1]+230+80+12
			break
			case 1:
				if Input_Confirm_Pressed() && _menu_timer >= 5
				{
					global.Menuing = 0
					Menu_Dialog = MAIN_GAMEDATA.Items[_menuchoice_2].Menu_Text
					Add_Text_ow(Menu_Dialog,Dir.Down)
				}
				_menusoul.x = global.Camera_Pos[0]+80+230+90-15
				_menusoul.y = global.Camera_Pos[1]+230+80+12
			break
			case 2:
				if Input_Confirm_Pressed() && _menu_timer >= 5
				{
					global.Menuing = 0
					with MAIN_GAMEDATA.Items[_menuchoice_2]
					{
						Add_Text_ow("你丢弃了"+(MAIN_GAMEDATA.Items[other._menuchoice_2].Name),Dir.Down)
						array_delete(MAIN_GAMEDATA.Items,other._menuchoice_2,1)
					}
				}
				
				_menusoul.x = global.Camera_Pos[0]+80+230+180-15+1
				_menusoul.y = global.Camera_Pos[1]+230+80+12
			break
		}
	}
	if _menus == 3
	{
		if Input_Cancel_Pressed() && _menu_timer >= 5
		{
			audio_play_sound(mmove,0,0)
			_menus = -1
			_menu_timer = 0
		}
	}
	if _menus >= 4 && _menus <= 5
	{
		if Input_Cancel_Pressed() && _menu_timer >= 5
		{
			audio_play_sound(mmove,0,0)
			_menus = -1
			_menu_timer = 0
		}
	}
	if _menus != 3
	{
		_menusoul.image_alpha = 1
	}
	else
	{
		_menusoul.image_alpha = 0
	}
	global.ow_canmove = false
}
else {
	global.ow_canmove = true
}
 
camera_set_view_pos(view_camera[0],clamp(Player_PZ.x-320,0,room_width-640),clamp(Player_PZ.y-240,0,room_height-480))