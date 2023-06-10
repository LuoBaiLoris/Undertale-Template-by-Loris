if (live_call()) return live_result;
//draw_set_color(c_white)
draw_set_font(font_ch2)
if surface_exists(global.Mask)
{
surface_set_target(global.Mask)
switch(now)
{
	case STATE.FightChoice:
		for(var i=0;i<array_length(Battle.Enemys);i++)
		{
			draw_set_font(font_ch2)
			draw_text(x-global.Main_Arena.width/2+30+40+15,y-global.Main_Arena.height/2+12+i*40+y_offset*40+5," "+Battle.Enemys[i].Name)
			draw_set_font(font_eng)
			draw_text(x-global.Main_Arena.width/2+30+40,y-global.Main_Arena.height/2+12+i*40+y_offset*40,"*")
		}
	break
	case STATE.ActChoice_Action:
		for(var i=0;i<array_length(Chosen.Actions);i++)
		{
			draw_set_font(font_ch2)
			draw_text(x-global.Main_Arena.width/2+30+40+15,y-global.Main_Arena.height/2+12+i*40+y_offset*40+5," "+Chosen.Actions[i])
			draw_set_font(font_eng)
			draw_text(x-global.Main_Arena.width/2+30+40,y-global.Main_Arena.height/2+12+i*40+y_offset*40,"*")
		}	
	break
	case STATE.ActChoice:
		for(var i=0;i<array_length(Battle.Enemys);i++)
		{
			draw_set_font(font_ch2)
			draw_text(x-global.Main_Arena.width/2+30+40+15,y-global.Main_Arena.height/2+12+i*40+y_offset*40+5," "+Battle.Enemys[i].Name)
			draw_set_font(font_eng)
			draw_text(x-global.Main_Arena.width/2+30+40,y-global.Main_Arena.height/2+12+i*40+y_offset*40,"*")
		}
	break
	case STATE.ItemChoice:
		for(var i=0;i<array_length(MAIN_GAMEDATA.Items);i++)
		{
			draw_set_font(font_ch2)
			draw_text(x-global.Main_Arena.width/2+30+40+15,y-global.Main_Arena.height/2+12+i*40+y_offset*40+5," "+MAIN_GAMEDATA.Items[i].Name)
			draw_set_font(font_eng)
			draw_text(x-global.Main_Arena.width/2+30+40,y-global.Main_Arena.height/2+12+i*40+y_offset*40,"*")
		}
	break
	case STATE.MercyChoice:
		for(var i=0;i<array_length(Battle.Mercy_Menu);i++)
		{
			draw_set_font(font_ch2)
			draw_text_color(x-global.Main_Arena.width/2+30+40+15,y-global.Main_Arena.height/2+12+i*40+y_offset*40+5," "+Battle.Mercy_Menu[i],c_white,c_white,c_white,c_white,1)
			draw_set_font(font_eng)
			draw_text(x-global.Main_Arena.width/2+30+40,y-global.Main_Arena.height/2+12+i*40+y_offset*40,"*")
		}
	break
	case STATE.Attacking:
		draw_sprite_ext(spr_target,0,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
		
	break
	case STATE.EnemyHurt:
		draw_sprite_ext(spr_target,0,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
		
	break
}
surface_reset_target()
}
if (now == STATE.Attacking)
{
	if !State_Start
	draw_sprite_ext(spr_target_choice,0,target_choice_x,target_choice_y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
}
if (now == STATE.EnemyHurt)
{
	draw_sprite_ext(spr_target_choice,current_time/60/2,target_choice_x,target_choice_y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
}