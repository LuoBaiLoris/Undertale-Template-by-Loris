if (live_call()) return live_result;
//show_debug_message(1)
depth = -1000000000
if keyboard_check_pressed(vk_f5) global.debug = !global.debug

if global.debug {
	
	if keyboard_check_pressed(vk_f6) global.debug_wave_bool = !global.debug_wave_bool
	if global.debug_wave_bool
	{
		//Battle_SetTurnNumber(global.debug_wave) 
		if keyboard_check_pressed(ord("O")) {
			global.debug_wave --

		}
		else if keyboard_check_pressed(ord("P")) {
			global.debug_wave ++
		}
	}
	
	draw_set_font(font_info)
	image_angle += 2
	
	draw_text_transformed_color(480+lengthdir_x(30,image_angle+120),390+lengthdir_y(30,image_angle+120),"DEBUG",2,2,0,make_color_rgb(0,162,232),make_color_rgb(0,162,232),make_color_rgb(0,162,232),make_color_rgb(0,162,232),0.8)
	draw_text_transformed_color(480+lengthdir_x(30,image_angle+240),390+lengthdir_y(30,image_angle+240),"DEBUG",2,2,0,make_color_rgb(0,162,232),make_color_rgb(0,162,232),make_color_rgb(0,162,232),make_color_rgb(0,162,232),0.8)
	draw_text_transformed_color(480+lengthdir_x(30,image_angle+360),390+lengthdir_y(30,image_angle+360),"DEBUG",2,2,0,make_color_rgb(0,162,232),make_color_rgb(0,162,232),make_color_rgb(0,162,232),make_color_rgb(0,162,232),0.8)
	draw_text_transformed_color(480,390,"DEBUG",2,2,0,c_white,c_white,c_white,c_white,1)
	draw_text(0,20,"Waves : " + string(Battle.Wave_Count))	
	draw_text(0,40,"Soul_x : " + string(battle_soul.x))
	draw_text(0,60,"Soul_y : " + string(battle_soul.y))
	draw_text(0,80,"FPS : " + string(fps))
	draw_text(0,100,"FPS_Real : " + string(fps_real))
	draw_text_color(0,0,"InstanceCount : " + string(instance_count),c_purple,c_purple,c_gray,c_gray,1)
	draw_text(0,120,"Mouse_x : " + string(mouse_x))
	draw_text(0,140,"Mouse_y : " + string(mouse_y))
	
	if State.now == STATE.Defing
	{
		if instance_exists(State.wave)
		{
			draw_text_color(640-string_width(string((State.wave.timer))),0,string(State.wave.timer),make_color_rgb(0,162,232),make_color_rgb(0,162,232),c_white,c_white,1)
		}
	}
		//draw_text(640-string_width(string((turn.timer))),0,string(turn.timer))
	if(Player.HP <= 1) //&& global.Player.KR <= 0)
	{
		Player.HP = Player.HPMax
	}
	if(keyboard_check_pressed(ord("T")))
	{
		game_set_speed(60,gamespeed_fps)
	}
	if(keyboard_check_pressed(ord("Y")))
	{
		game_set_speed(30,gamespeed_fps)
	}
	if(keyboard_check_pressed(ord("U")))
	{
		game_set_speed(15,gamespeed_fps)
	}
	if(keyboard_check_pressed(ord("I")))
	{
		game_set_speed(120,gamespeed_fps)
	}
}
else {
	//global.Player.CanDeath = true
}

/*
time_source = time_source_create(time_source_game, _seconds, time_source_units_seconds, function()
{
    show_debug_message("BEAT!");
}, [], -1);