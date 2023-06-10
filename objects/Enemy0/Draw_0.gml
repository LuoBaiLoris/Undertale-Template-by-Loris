if (live_call()) return live_result;
if !(slam || sp_anim) && cananim
{
	anim_timer += 0.1
}
else
{
	anim_timer = 0
}
;
cananim = 1
//draw_sprite_ext(sansall,0,x,y+56,image_xscale*2,image_yscale*2,0,c_white,image_alpha)
////show_debug_message(head_index)
//draw_sprite_ext(legs,0,x,y,image_xscale/2,image_yscale/2,0,c_white,image_alpha)
//draw_sprite_ext(scraf,0,x+20+_x,y-sin(anim_timer)*3+_y,2,2,0-sin(anim_timer+0.2)*5,c_white,1)
switch(body_index)
{
	case 9:
	case 10:
	case 11:
	case 12:
	case 13:
	break
	default:
		draw_sprite_ext(spr_sans_other,0,x+sin(anim_timer*0.5-1.5)*2+_x,y-sin(anim_timer)*3-70+_y+30+30+3,2,2,0,c_white,image_alpha)
	break
}

y = 120
var __x = x-(48)//320-48
var __y = y-(120-198)//198
draw_sprite_pos(legs,0,__x+sin(anim_timer*0.5-1.5)*2+_x,__y-sin(anim_timer)*3+_y,__x+48*2+sin(anim_timer*0.5-1.5)*2+_x,__y-sin(anim_timer)*3+_y,__x+48*2,__y+26*2,__x,__y+26*2,image_alpha)

draw_sprite_ext(body,body_index,x+sin(anim_timer*0.5-1.5)*2+_x,y-sin(anim_timer)*3+_y+30+30+3,2,2,0,c_white,image_alpha)

draw_sprite_ext(head,head_index,x+sin(anim_timer*0.5-1.5-0.1)*2+_x,y-sin(anim_timer-0.1)*3+_y-60+60+7,2,2,0,c_white,image_alpha)