if (live_call()) return live_result;
//Black
draw_sprite_ext(test,0,0,480,15,10,0,c_black,alpha)
draw_text(x,y,alpha)

global.Camera_Pos = [camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])]
//show_debug_message(camera_get_view_x(view_camera[0]))
//show_debug_message(camera_get_view_y(view_camera[0]))
//show_debug_message(Player_PZ.x)
if view_current != 0
{
    camera_apply(view_camera[0]);
}
camera_set_view_pos(view_camera[0],Player_PZ.x-320,Player_PZ.y-240)
camera_set_view_angle(view_camera[0], image_angle)
//draw_text(mouse_x+20,mouse_y-100,string(mouse_x) +" "+string(mouse_y))
if global.Menuing
{
	var _x = 100
	var _y = 120
	
	draw_circle_color(global.Camera_Pos[0]+_x,global.Camera_Pos[1]+_y,65+10,c_white,c_white,0)
	draw_circle_color(global.Camera_Pos[0]+_x,global.Camera_Pos[1]+_y,60+10,c_black,c_black,0)
	draw_set_font(font_eng)
	draw_text_transformed(global.Camera_Pos[0]+_x-30-15,global.Camera_Pos[1]+_y-30-15,Player.Name,1,1,0)
	draw_set_font(font_info_2)
	draw_text_transformed(global.Camera_Pos[0]+_x-30-15,global.Camera_Pos[1]+_y-30-15+40,"LV   "+string(Player.LV),1,1,0)
	draw_text_transformed(global.Camera_Pos[0]+_x-30-15,global.Camera_Pos[1]+_y-30-15+40+20,"HP   "+string(Player.HP)+"/"+string(Player.HPMax),1,1,0)
	draw_text_transformed(global.Camera_Pos[0]+_x-30-15,global.Camera_Pos[1]+_y-30-15+40+20+20,"G     "+string(Player.Gold),1,1,0)

	draw_set_color(c_white)
	draw_roundrect_ext(global.Camera_Pos[0]+25,global.Camera_Pos[1]+200,global.Camera_Pos[0]+25+150,global.Camera_Pos[1]+400-40,10,10,0)
	draw_set_color(c_black)
	draw_roundrect_ext(global.Camera_Pos[0]+25+5,global.Camera_Pos[1]+200+5,global.Camera_Pos[0]+25+150-5,global.Camera_Pos[1]+400-5-40,10,10,0)
	draw_set_color(c_white)
	
	draw_set_font(font_ch2)
	draw_text_ext_transformed(global.Camera_Pos[0]+80,global.Camera_Pos[1]+230,"物",10,300,1,1,0)
	draw_text_ext_transformed(global.Camera_Pos[0]+80+35,global.Camera_Pos[1]+230,"品",10,300,1,1,0)
	
	draw_text_ext_transformed(global.Camera_Pos[0]+80,global.Camera_Pos[1]+230+35,"状",10,300,1,1,0)
	draw_text_ext_transformed(global.Camera_Pos[0]+80+35,global.Camera_Pos[1]+230+35,"态",10,300,1,1,0)
	
	draw_text_ext_transformed(global.Camera_Pos[0]+80,global.Camera_Pos[1]+230+70,"电",10,300,1,1,0)
	draw_text_ext_transformed(global.Camera_Pos[0]+80+35,global.Camera_Pos[1]+230+70,"话",10,300,1,1,0)
	
		
	if _menus >= 0
	{
		var xx0 = 320-80
		var yy0 = 240-180
		var xx1 = 320+190+80
		var yy1 = 480-120
		draw_set_color(c_white)
		draw_roundrect_ext(global.Camera_Pos[0]+xx0,global.Camera_Pos[1]+yy0,global.Camera_Pos[0]+xx1,global.Camera_Pos[1]+yy1,20,20,0)
		draw_set_color(c_black)
		draw_roundrect_ext(global.Camera_Pos[0]+xx0+5,global.Camera_Pos[1]+yy0+5,global.Camera_Pos[0]+xx1-5,global.Camera_Pos[1]+yy1-5,10,10,0)
		draw_set_color(c_white)
	}
	if _menus >= 0 && _menus <= 2
	{
		
		if _menuchoice == 0
		{
			draw_set_color(c_white)
			draw_set_font(font_ch2)
			draw_text_ext_transformed(global.Camera_Pos[0]+80+200+30,global.Camera_Pos[1]+230+80,"使",10,300,1,1,0)
			draw_text_ext_transformed(global.Camera_Pos[0]+80+35+200+30,global.Camera_Pos[1]+230+80,"用",10,300,1,1,0)
	
			draw_text_ext_transformed(global.Camera_Pos[0]+80+230+90,global.Camera_Pos[1]+230+80,"说",10,300,1,1,0)
			draw_text_ext_transformed(global.Camera_Pos[0]+80+35+230+90,global.Camera_Pos[1]+230+80,"明",10,300,1,1,0)
	
			draw_text_ext_transformed(global.Camera_Pos[0]+80+230+180,global.Camera_Pos[1]+230+80,"丢",10,300,1,1,0)
			draw_text_ext_transformed(global.Camera_Pos[0]+80+35+230+180,global.Camera_Pos[1]+230+80,"弃",10,300,1,1,0)
			for(var i=0;i<array_length(MAIN_GAMEDATA.Items);i++)
			{
				if instance_exists(MAIN_GAMEDATA.Items[i])
				{
					draw_set_font(font_dialogue_ch)
					draw_text(global.Camera_Pos[0]+xx0+60,global.Camera_Pos[1]+yy0+30+i*30,MAIN_GAMEDATA.Items[i].Name)
					}
			}
		}
		draw_set_color(c_white)
		draw_set_font(font_ch2)
		
	}
	if _menus == 3
	{
		draw_set_color(c_white)
		draw_set_font(font_ch2)
		draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+80,Player.Name,1,1,0)
		draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+80+30,"LV "+string(Player.LV),1,1,0)
		
		
		draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+80+60,"血量 "+string(Player.HP)+"/"+string(Player.HPMax),1,1,0)

		draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+80+120+30+7,"武器："+Player.Weapon.Name,1,1,0)
		draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+80+120+30+30+10,"防具："+Player.Armor.Name,1,1,0)
		draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+80+120+30+30+10+30,"金钱："+string(Player.Gold),1,1,0)
		
		draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+80+60+30,"攻击 "+string(Player.ATK)+"("+string(Player.ATK_Pro)+")",1,1,0)
		draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+80+60+30+30,"防御 "+string(Player.DEF)+"("+string(Player.DEF_Pro)+")",1,1,0)
		draw_text_transformed(global.Camera_Pos[0]+80+200+180-30,global.Camera_Pos[1]+80+60+30,"EXP "+string(Player.EXP),1,1,0)
		draw_text_transformed(global.Camera_Pos[0]+80+200+180-30,global.Camera_Pos[1]+80+60+30+30,"下一等级 "+string(Player.NEXT),1,1,0)
		//draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+100,"AT "+string(Player.ATK),1,1,0)
		//draw_text_transformed(global.Camera_Pos[0]+80+200,global.Camera_Pos[1]+100,"'"+Player.Name+"'",1,1,0)
		
	}
	draw_sprite_ext(spr_battle_soul,0,_menusoul.x,_menusoul.y,1,1,0,c_red,_menusoul.image_alpha)
	
	
}