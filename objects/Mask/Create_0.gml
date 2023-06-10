if (live_call()) return live_result;
mask = surface_create(640,480)
global.Mask = surface_create(640,480)
function Draw_Sub_Black()
{
	for (var index = 0; index < instance_number(battle_arena_sub); ++index;)
	{
		var a = instance_find(battle_arena_sub,index)
		draw_sprite_ext(spr_pixel,0,a.x,a.y,a.width/2-5,a.height/2-5,a.image_angle,c_black,1)
	}
}
function Draw_Add_Black()
{
	for (var index = 0; index < instance_number(battle_arena_add); ++index;)
	{
		var a = instance_find(battle_arena_add,index)
		///draw_sprite_ext(pixel_2,0,x,y,Arena_Width/2,Arena_Height/2,image_angle,c_black,Alpha);
		draw_sprite_ext(spr_pixel,0,a.x,a.y,a.width/2,a.height/2,a.image_angle,c_black,1)
	}
}
function Draw_Add_Green()
{
	for (var index = 0; index < instance_number(battle_arena_add); ++index;)
	{
		var a = instance_find(battle_arena_add,index)
		///draw_sprite_ext(pixel_2,0,x,y,Arena_Width/2,Arena_Height/2,image_angle,c_black,Alpha);
		draw_sprite_ext(spr_pixel,0,a.x,a.y,a.width/2,a.height/2,a.image_angle,c_green,1)
	}
}
function Draw_Sub_White()
{
	for (var index = 0; index < instance_number(battle_arena_sub); ++index;)
{
		var a = instance_find(battle_arena_add,index)
		draw_sprite_ext(spr_pixel,0,a.x,a.y,a.width/2,a.height/2,a.image_angle,c_black,1)
}
}
function Draw_Add_White()
{
	for (var index = 0; index < instance_number(battle_arena_add); ++index;)
{
		var a = instance_find(battle_arena_add,index)
		draw_sprite_ext(spr_pixel,0,a.x,a.y,a.width/2+5,a.height/2+5,a.image_angle,c_white,1)
		
}
}
start = true
/*
function Draw_Sub_White()
{
	for (var index = 0; index < instance_number(battle_arena_sub); ++index;)
{
		with(instance_find(battle_arena_sub,index)) {
			draw_sprite_ext(spr_arena,0,x+lengthdir_x(height/2,angle+90),y+lengthdir_y(height/2,angle+90),width/2,5,angle+0+180,c_white,1)
			draw_sprite_ext(spr_arena,0,x+lengthdir_x(height/2,angle+90+180),y+lengthdir_y(height/2,angle+90+180),width/2,5,angle+180+180,c_white,1)
			draw_sprite_ext(spr_arena,0,x+lengthdir_x(width/2,angle),y+lengthdir_y(width/2,angle),height/2,5,angle-90+180,c_white,1)
			draw_sprite_ext(spr_arena,0,x+lengthdir_x(width/2,angle+180),y+lengthdir_y(width/2,angle+180),height/2,5,angle+90+180,c_white,1)
		}	
}
}
function Draw_Add_White()
{
	for (var index = 0; index < instance_number(battle_arena_add); ++index;)
{
	
		with(instance_find(battle_arena_add,index)) {
			draw_sprite_ext(spr_arena,0,x+lengthdir_x(height/2,angle+90),y+lengthdir_y(height/2,angle+90),width/2+5,5,angle+0,c_white,1)
			draw_sprite_ext(spr_arena,0,x+lengthdir_x(height/2,angle+90+180),y+lengthdir_y(height/2,angle+90+180),width/2+5,5,angle+180,c_white,1)
			draw_sprite_ext(spr_arena,0,x+lengthdir_x(width/2,angle),y+lengthdir_y(width/2,angle),height/2+5,5,angle-90,c_white,1)
			draw_sprite_ext(spr_arena,0,x+lengthdir_x(width/2,angle+180),y+lengthdir_y(width/2,angle+180),height/2+5,5,angle+90,c_white,1)
		}	
		
}
}