if (live_call()) return live_result;
if mask
{
	surface_set_target(global.Mask)
	draw_sprite_ext(spr_bone_wall,0,x+lengthdir_x(irandom_range(-skv,skv),image_angle),y+lengthdir_y(irandom_range(-skv,skv),image_angle),1,1,image_angle,image_blend,image_alpha)
	surface_reset_target()
}
else draw_sprite_ext(spr_bone_wall,0,x+lengthdir_x(irandom_range(-skv,skv),image_angle),y+lengthdir_y(irandom_range(-skv,skv),image_angle),1,1,image_angle,image_blend,image_alpha)