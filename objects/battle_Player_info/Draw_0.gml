
// Draw_Player_Info

draw_set_color(c_white)
draw_set_font(font_info)
draw_text_color(x-285,y-8,string(Player.Name),c_white,c_white,c_white,c_white,1)
draw_text(x-285+6*15,y-8,"LV "+string(Player.LV))
draw_sprite(spr_hpname,0,x-285+6*15+string_width("LV 1")+75,y+2.5)

draw_hp_left = x-285+6*15+string_width("LV 1")+70
draw_hp_number_x = draw_hp_left+25+Player.HPMax*1.25+25
draw_kr_y = y + 2.5 - 20
draw_kr_x = draw_hp_number_x - 5

if(Player.KR>0)
{
	hp_number_color = kr_color
}
else
{
	hp_number_color = c_white
}

if(Player.HPMax <= 99)
{
	draw_rectangle_color(draw_hp_left+25,y-9,draw_hp_left+25+Player.HPMax*1.25,y+11,hp_bottom_color,hp_bottom_color,hp_bottom_color,hp_bottom_color,false)
	if(Player.HP > 0)
	{
		draw_rectangle_color(draw_hp_left+25,y-9,draw_hp_left+25+Player.HP*1.25,y+11,hp_color,hp_color,hp_color,hp_color,false)
	}
	if(Player.KR > 0)
	{
		draw_rectangle_color(draw_hp_left+25+Player.HP*1.25+1,y-9,draw_hp_left+25+Player.HP*1.25+Player.KR*1.25,y+11,kr_color,kr_color,kr_color,kr_color,false)
	}
	draw_text_color(draw_hp_number_x+draw_hp_number_move,y-8,string(Player.HP+Player.KR) + " / " + string(Player.HPMax),hp_number_color,hp_number_color,hp_number_color,hp_number_color,1)
}
else
{
	draw_hp_number_x = draw_hp_left+25+99*1.25+25
	draw_kr_x = draw_hp_number_x - 5
	draw_rectangle_color(draw_hp_left+25,y-9,draw_hp_left+25+99*1.25,y+11,hp_bottom_color,hp_bottom_color,hp_bottom_color,hp_bottom_color,false)
	if(Player.HP > 0)
	{
		draw_rectangle_color(draw_hp_left+25,y-9,draw_hp_left+25+(Player.HP/Player.HPMax)*99*1.25,y+11,hp_color,hp_color,hp_color,hp_color,false)
	}
	if(Player.KR > 0)
	{
		draw_rectangle_color(draw_hp_left+25+(Player.HP/Player.HPMax)*99*1.25+1,y-9,draw_hp_left+25+(Player.HP/Player.HPMax)*99*1.25+(Player.KR/Player.HPMax)*99*1.25,y+11,kr_color,kr_color,kr_color,kr_color,false)
	}
	draw_text_color(draw_hp_number_x+draw_hp_number_move,y-8,string(Player.HP+Player.KR) + " / " + string(Player.HPMax),hp_number_color,hp_number_color,hp_number_color,hp_number_color,1)
}


// Draw_KR_Name
switch(Player.HurtMode)
{
	case HurtMode.Normal:
		draw_hp_number_move = Ease(draw_hp_number_move,2,EaseMode.Normal,0)
		draw_kr_move = Ease(draw_kr_move,2,EaseMode.Normal,0)
		draw_kr_alpha = Ease(draw_kr_alpha,0.1,EaseMode.Normal,0)
		break;
	case HurtMode.KR:
		draw_hp_number_move = Ease(draw_hp_number_move,2,EaseMode.Normal,20)
		draw_kr_move = Ease(draw_kr_move,2,EaseMode.Normal,20)
		draw_kr_alpha = Ease(draw_kr_alpha,0.1,EaseMode.Normal,1)
		break;
}

draw_sprite_ext(spr_kr,0,draw_kr_x,draw_kr_y+draw_kr_move,1,1,0,c_white,draw_kr_alpha)
