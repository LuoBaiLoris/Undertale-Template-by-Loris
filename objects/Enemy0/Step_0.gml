
if (live_call()) return live_result;
if slam {
	slam_timer += anim_speed
	switch(slam_timer)
	{
		case 0:
		{
			_x = 0
			_y = 0
			offset = 5
			switch(slam_dir)
			{
				case 0: 
				{
					body_index = 17
					
					Anim_Create(id,"_y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,-offset,offset*2,slam_timer_max/anim_speed)
					//Anim_Create(id,"_y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,offset*2,-offset*2,slam_timer_max/anim_speed,slam_timer_max/anim_speed)
					//Anim_Create(id,"_y",ANIM_TWEEN.SINE,ANIM_EASE.IN,-lengthdir_y(offset,slam_dir-90)*2+lengthdir_x(offset,slam_dir-90)*4,0-(-lengthdir_x(offset,slam_dir-90)*2+lengthdir_x(offset,slam_dir-90)*4),slam_timer_max/anim_speed,slam_timer_max/anim_speed)
				}
				break;
				case 270: 
				{
					body_index = 21
					Anim_Create(id,"_x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,offset,-offset*2,slam_timer_max/anim_speed)
				}
				break;
				case 180: 
				{
					body_index = 15
					Anim_Create(id,"_y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,offset,-offset*2,slam_timer_max/anim_speed)
				}
				break;
				case 90: 
				{
					body_index = 19
					Anim_Create(id,"_x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,-offset,offset*2,slam_timer_max/anim_speed)
				}
				break;
			}
			
			//Anim_Create(id,"_x",ANIM_TWEEN.SINE,ANIM_EASE.IN,-lengthdir_x(offset,slam_dir-90)*2+lengthdir_x(offset,slam_dir-90)*4,0-(-lengthdir_x(offset,slam_dir-90)*2+lengthdir_x(offset,slam_dir-90)*4),slam_timer_max/anim_speed,slam_timer_max/anim_speed*2)
			//Anim_Create(id,"_y",ANIM_TWEEN.SINE,ANIM_EASE.IN,-lengthdir_y(offset,slam_dir-90)*2+lengthdir_x(offset,slam_dir-90)*4,0-(-lengthdir_x(offset,slam_dir-90)*2+lengthdir_x(offset,slam_dir-90)*4),slam_timer_max/anim_speed,slam_timer_max/anim_speed*2)
		}
		break;
		case 10:
		{
			
			switch(slam_dir)
			{
				case 0: 
				{
					body_index = 18
				}
				break;
				case 270: 
				{
					body_index = 22
				}
				break;
				case 180: 
				{
					body_index = 16
				}
				break;
				case 90: 
				{
					body_index = 20
				}
				break;
			}
		}
		break;
		case 20:
		{
			//a = audio_play_sound(snd_grab)
			//audio_sound_gain(a,0.3,0)
			if canslam {
				////show_debug_message(1)
				SetSoulMode(SoulMode.Slam,slam_dir,slam_speed)
				
			}
			switch(slam_dir)
			{
				case 0: 
				{
					body_index = 19
				}
				break;
				case 270: 
				{
					body_index = 0
				}
				break;
				case 180: 
				{
					body_index = 17
				}
				break;
				case 90: 
				{
					body_index = 21
				}
				break;
			}
		}
		break;
		case 40:
		{
			Anim_Create(id,"_y",ANIM_TWEEN.SINE,ANIM_EASE.IN,_y,(0)-_y,slam_timer_max/anim_speed)
			Anim_Create(id,"_x",ANIM_TWEEN.SINE,ANIM_EASE.IN,_x,(0)-_x,slam_timer_max/anim_speed)
			slam = false
			slam_timer = -1
		}
		break;
	}
}

if sp_anim {
	slam_timer += anim_speed
	////show_debug_message(anim_speed)
	if sp_anim_type == 0
	{
		switch(slam_timer)
		{
			case 0:
			{
				body_index = 0
			}
			break;
			case 10:
			{
				body_index = 9
			
			}
			break;
			case 20:
			{
				body_index = 10
			}
			break;
			case 30:
			{
				sp_anim = false
			}
			break;
		}
	}
	else
	{
		switch(slam_timer)
		{
			case 0:
			{
				body_index = 11
			}
			break;
			case 10:
			{
				body_index = 12
			
			}
			break;
			case 20:
			{
				body_index = 13
			}
			break;
			case 30:
			{
				sp_anim = false
			}
			break;
		}
	}
}

y = global.Main_Arena.y - global.Main_Arena.height / 2 - y_offset 