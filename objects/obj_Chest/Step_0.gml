if (live_call()) return live_result;


chest_wall.image_xscale = sprite_width/50
chest_wall.image_yscale = sprite_height/50
if place_meeting(x ,y - sprite_height/4,Player_PZ) or place_meeting(x ,y + sprite_height/4,Player_PZ) or place_meeting(x + sprite_width/4,y,Player_PZ) or place_meeting(x - sprite_width/4,y,Player_PZ){
	collision = true
}
else {
	collision = false
}
if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter)) && collision && global.ins_text_ow == noone && Main_ow.timer >= 10 && !global.Menuing{
	if(not instance_exists(global.ins_text_ow))
	{
		Add_Text_ow("中文测试",Dir.Down)
		//Create_OW_Text([camera_get_view_x(view_camera[0]) + 75,camera_get_view_y(view_camera[0]) +240-160-35),DEPTH.Top,"{font:font_eng}{*}")
	}
}
if (keyboard_check_pressed(ord("G")) or keyboard_check_pressed(vk_enter)) && collision && global.ins_text_ow == noone && Main_ow.timer >= 10&& !global.Menuing{
	if(not instance_exists(global.ins_text_ow))
	{
		Add_Text_ow("中文测试",Dir.Up)
		//Create_OW_Text([camera_get_view_x(view_camera[0]) + 75,camera_get_view_y(view_camera[0]) +240-160-35),DEPTH.Top,"{font:font_eng}{*}")
	}
}