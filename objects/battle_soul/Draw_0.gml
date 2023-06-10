if (live_call()) return live_result;
draw_angle += (angle - draw_angle) * 0.25
draw_sprite_ext(spr_battle_soul,0,x,y,image_xscale,image_xscale,draw_angle,color,image_alpha-(IsHurting*0.5))
image_angle = angle