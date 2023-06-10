if (live_call()) return live_result;

function DRAW_BONE()
{
	draw_sprite_ext(spr_bone_head,0,x+lengthdir_x((length/2-6),image_angle+90),y+lengthdir_y((length/2-6),image_angle+90),1,1,image_angle,image_blend,image_alpha)
	draw_sprite_ext(spr_px2,0,x,y,3,(length/2-6),image_angle,image_blend,image_alpha)
	draw_sprite_ext(spr_bone_head,0,x+lengthdir_x((length/2-6),image_angle+90+180),y+lengthdir_y((length/2-6),image_angle+90+180),1,1,image_angle+180,image_blend,image_alpha)
}

if mask
{
	surface_set_target(global.Mask)
	DRAW_BONE()
	surface_reset_target()
}
else DRAW_BONE()

//draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_blue,image_alpha)