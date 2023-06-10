/// @description Insert description here
// You ca
/*
if surface_exists(mask){
surface_set_target(mask)
{
	draw_sprite_ext(spr_pixel,0,x,y,width/2,height/2,angle,c_black,1);	
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);

	draw_set_alpha(0);
	draw_rectangle(0,0, room_width,room_height, false); // draw全屏矩形
	draw_set_alpha(1);

	draw_sprite_ext(spr_pixel,0,x,y,width / 2, height/2,angle,c_white,1); // draw遮罩

	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);

	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	
		draw_sprite_ext(spr_pixel,0,x,y,width/2+5,height/2+5,angle,c_white,1);
	gpu_set_alphatestenable(true);
	draw_surface(application_surface,0,0)
	gpu_set_alphatestenable(false);
	
	gpu_set_blendmode(bm_normal);

	//draw_sprite_ext(spr_pixel,0,x,y,width/2+5,height/2+5,angle,c_white,1);
	//draw_surface_ext(application_surface,x,y,width/2,height/2,0,c_white,1);
}
surface_reset_target()
}	
