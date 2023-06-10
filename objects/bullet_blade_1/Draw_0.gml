/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;
//show_debug_message(Color)
switch(Color)
{
	case Color.Normal:
		color = [255,255,255]
		break
	case Color.Blue:
		color = [0,162,232];
		break;
	case Color.Orange:
		color = [255,154,34];
		break;
	case Color.Red:
		color = [255,0,0];
		break;
}
if warn_timer > 0 {

	draw_sprite_ext(spr_warn,warn_index,x,y,0.75*width/10,0.75*width/10,image_angle,make_color_rgb(color[0],color[1],color[2]),1)
}
else {
	
	draw_sprite_ext(pixel_2,0,x,y,image_xscale,image_yscale,image_angle,make_color_rgb(color[0],color[1],color[2]),image_alpha)
}