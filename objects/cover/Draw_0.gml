if (live_call()) return live_result;
surface_set_target(sur1)
draw_surface(application_surface,0,0)
surface_reset_target()



for (var i = 0; i < instance_number(battle_arena_add); ++i;)
{
	with(instance_find(battle_arena_add,i))
	{
		draw_sprite_ext(pixel_2,0,x,y,width/2+5,height/2+5,image_angle,c_white,1)
	}
}
for (var i = 0; i < instance_number(battle_arena_add); ++i;)
{
	with(instance_find(battle_arena_add,i))
	{
		draw_set_alpha(0.5)
		draw_self()
		draw_set_alpha(1)
	}
}
surface_set_target(sur2)
for (var i = 0; i < instance_number(battle_arena_add); ++i;)
{
	with(instance_find(battle_arena_add,i))
	{
		draw_sprite_ext(pixel_2,0,x,y,width/2+5,height/2+5,image_angle,c_white,1)
	}
}
for (var i = 0; i < instance_number(battle_arena_add); ++i;)
{
	with(instance_find(battle_arena_add,i))
	{
		draw_set_alpha(0.5)
		draw_self()
		draw_set_alpha(1)
	}
}



gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0, room_width,room_height, false);


draw_set_alpha(1);
for (var i = 0; i < instance_number(battle_arena_add); ++i;)
{
	with(instance_find(battle_arena_add,i))
	{
		draw_self()
	}
}
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);


gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

//draw_sprite(back,0, 0,200);
draw_surface(global.Mask,0,0)
for (var i = 0; i < instance_number(battle_arena_sub); ++i;)
{
	with(instance_find(battle_arena_sub,i))
	{
		draw_sprite_ext(pixel_2,0,x,y,width/2+5,height/2+5,image_angle,c_white,1)
	}
}
surface_set_target(global.Mask)
{
	draw_clear_alpha(0,0);
}

surface_reset_target();



gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
surface_reset_target();
///////////////////////////////////////////////////////////////////

surface_set_target(sur3)
gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0, room_width,room_height, false);


draw_set_alpha(1);

for (var i = 0; i < instance_number(battle_arena_sub); ++i;)
{
	with(instance_find(battle_arena_sub,i))
	{
		draw_self()
	}
}
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);


gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);



draw_surface(sur1,0,0)




gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(sur2,0,0)
draw_surface(sur3,0,0)



