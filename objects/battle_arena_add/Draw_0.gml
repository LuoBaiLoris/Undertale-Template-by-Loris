/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(spr_pixel,0,x,y,width/2+5,height/2+5,angle,c_white,1)
//shader_set(Shader1);
/*
event_perform_object(battle_arena_sub,ev_user0,1)
draw_line_width_color(global.arena.x,global.arena.y,global.arena.x+lengthdir_x(global.arena.height/2,angle+90),global.arena.y+lengthdir_y(global.arena.height/2,angle+90),2,c_blue,c_blue)
draw_line_width_color(global.arena.x,global.arena.y,global.arena.x+lengthdir_x(global.arena.height/2,angle+90+180),global.arena.y+lengthdir_y(global.arena.height/2,angle+90+180),2,c_blue,c_blue)

draw_line_width_color(global.arena.x,global.arena.y,global.arena.x+lengthdir_x(global.arena.width/2,angle),global.arena.y+lengthdir_y(global.arena.width/2,angle),2,c_blue,c_blue)
draw_line_width_color(global.arena.x,global.arena.y,global.arena.x+lengthdir_x(global.arena.width/2,angle+180),global.arena.y+lengthdir_y(global.arena.width/2,angle+180),2,c_blue,c_blue)

/*
draw_circle_color(global.arena.x+lengthdir_x(global.arena.width/2,angle),global.arena.y+lengthdir_y(global.arena.height/2,angle),2,c_red,c_red,0)
draw_circle_color(global.arena.x+lengthdir_x(global.arena.width/2,angle),global.arena.y+lengthdir_y(global.arena.height/2,angle),2,c_red,c_red,0)
draw_circle_color(global.arena.x+lengthdir_x(global.arena.width/2,angle),global.arena.y+lengthdir_y(global.arena.height/2,angle),2,c_red,c_red,0)
//shader_reset();