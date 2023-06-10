if (live_call()) return live_result;
if(!surface_exists(global.Mask))
{
	global.Mask = surface_create(640,480);
}


Draw_Add_White()
Draw_Add_Black()

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);

draw_set_alpha(0);

draw_rectangle(0,0, room_width,room_height, false); // draw全屏矩形



draw_set_alpha(1);

Draw_Add_Black() // draw遮罩

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

if(surface_exists(global.Mask))
{
	draw_surface(global.Mask,0,0); // 被遮挡物
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);


gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

surface_set_target(global.Mask)
{
	draw_clear_alpha(0,0);
}

surface_reset_target();
