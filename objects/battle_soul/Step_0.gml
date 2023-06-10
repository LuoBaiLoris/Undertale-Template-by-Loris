if (live_call()) return live_result;
sprite_index = spr_battle_soul
	
if canmove	
{
switch(mode)
{
	case SoulMode.Red:
	{
		color = make_color_rgb(255,0,0)
		SPD=2.25
		SPD_v1 = 0.1
		SPD_v2 = 1/SPD_v1
		SPD=(Input_Cancel_Press() ? SPD/2 : SPD);
		
		for (var i=0;i<SPD*SPD_v2;i++){
			if(keyboard_check(vk_up)){
			if(!place_meeting(x,y-lengthdir_x(SPD_v1,angle),obj_block)){
				x += lengthdir_y(SPD_v1,angle)
				y -= lengthdir_x(SPD_v1,angle)
			}
			else {
				x += lengthdir_y(SPD_v1,angle)
				y -= lengthdir_x(SPD_v1,angle)
			}
		}
		if(keyboard_check(vk_down)){
			if(!place_meeting(x,y+lengthdir_x(SPD_v1,angle),obj_block)){
				x -= lengthdir_y(SPD_v1,angle)
				y += lengthdir_x(SPD_v1,angle)
			}
			else {
				x -= lengthdir_y(SPD_v1,angle)
				y += lengthdir_x(SPD_v1,angle)
			}
		}
		if(keyboard_check(vk_left)){
			if(!place_meeting(x-lengthdir_x(SPD_v1,angle),y,obj_block)){
				x -= lengthdir_x(SPD_v1,angle)
				y -= lengthdir_y(SPD_v1,angle)
			}
			else {
				x -= lengthdir_x(SPD_v1,angle)
				y -= lengthdir_y(SPD_v1,angle)
			}
		}
		if(keyboard_check(vk_right)){
			if(!place_meeting(x+lengthdir_x(SPD_v1,angle),y,obj_block)){
				x += lengthdir_x(SPD_v1,angle)
				y += lengthdir_y(SPD_v1,angle)
			}
			else {
				x += lengthdir_x(SPD_v1,angle)
				y += lengthdir_y(SPD_v1,angle)
			}
			
		}
		}
		break;
	}
	case SoulMode.Blue:
	{
		color = make_color_rgb(0,100,240)
		SPD=2.25
		SPD_v1 = 0.1
		SPD_v2 = 1/SPD_v1
		SPD=(Input_Cancel_Press() ? SPD/2 : SPD);
		for (var i=0;i<SPD*SPD_v2;i++){
		
		if(keyboard_check(Key_Left()))
		{
			x -= lengthdir_x(SPD_v1,angle)
			y -= lengthdir_y(SPD_v1,angle)
		}
		if(keyboard_check(Key_Right()))
		{
			x += lengthdir_x(SPD_v1,angle)
			y += lengthdir_y(SPD_v1,angle)
		}
		}
		
		if(global.touchdown)
		{
			canjump = true
			jumping = false
			fallspeed = 0
			fall = false
		}
		else
		{
			canjump = false
		}
		if(keyboard_check(Key_Up()) and canjump)
		{
			canjump = false
			jumping = true
			jumpspeed = 4
		}
		if(jumping)
		{
			x += lengthdir_y(jumpspeed,angle)
			y -= lengthdir_x(jumpspeed,angle)
			if(keyboard_check(Key_Up()))
			{
				jumpspeed -= 0.125
			}
			else
			{
				alarm[1] = 6
				jumping = false
			}
			if(jumpspeed >= 0)
			{
				fallspeed = 0
			}
			else
			{
				fallspeed = -jumpspeed
				jumping = false
			}
		}
		else
		{
			x -= lengthdir_y(fallspeed,angle)
			y += lengthdir_x(fallspeed,angle)
			if(!global.touchdown)
			{
				if alarm[1] < 0
				{
					if(fallspeed < 4)
					{
						fallspeed = fallspeed + 0.15
					}
				}
			}
		}
		
	}
	break
	case SoulMode.Slam :
	{
		slamtimer ++
		color = make_color_rgb(0,100,240)
		if slamtimer <= 0
		{
			slamspd = slamsp	
		}
		else
		{
			slamspd += slamgra
		}
		var sPD = 1
		var sPD_v1 = 0.1
		var sPD_v2 = 1/sPD_v1
		//SPD=(Input_Cancel_Press() ? SPD/2 : SPD);
		
		for (var i=0;i<sPD*sPD_v2;i++){
			if(!global.touchdown ){
				x -= lengthdir_y(sPD_v1*slamspd,angle)
				y += lengthdir_x(sPD_v1*slamspd,angle)
			}
			else {
				
				if (battle_soul_touchdown.image_angle == angle)
				{
				if slamsnd
				{
					snd = audio_play_sound(snd_slam,0,0)
					audio_sound_gain(snd,3,0)
					snd = audio_play_sound(snd_slam,0,0)
					audio_sound_gain(snd,3,0)
					snd = audio_play_sound(snd_slam,0,0)
					audio_sound_gain(snd,3,0)
					snd = audio_play_sound(snd_slam,0,0)
					audio_sound_gain(snd,3,0)
					snd = audio_play_sound(snd_slam,0,0)
					audio_sound_gain(snd,3,0)
					snd = audio_play_sound(snd_slam,0,0)
					audio_sound_gain(snd,3,0)
				}
				mode = SoulMode.Blue
				Camera_Shake_2(10,10)
				slamtimer = -1
				}
				break
			}
		}
	}
	break
}
}	
_touchdown.x = x
		_touchdown.y = y
		_touchdown.image_angle = angle