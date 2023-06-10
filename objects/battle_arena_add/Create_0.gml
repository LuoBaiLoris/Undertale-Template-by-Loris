/// @description Insert description here
// You can write your code in this editor
/*
array_insert(global.arena_add,array_length(global.arena_add),id)
ds_list_add(global.Arenas,id);
*/
sprite_index = pixel_2

height = 50
width = 50
angle = 0
timer = 0
_colls =[]
arena_up = instance_create_depth(x,y,depth-1,obj_block)
arena_down = instance_create_depth(x,y,depth-1,obj_block)
arena_left = instance_create_depth(x,y,depth-1,obj_block)
arena_right = instance_create_depth(x,y,depth-1,obj_block)
array_insert(_colls,array_length(_colls),arena_up)
array_insert(_colls,array_length(_colls),arena_down)
array_insert(_colls,array_length(_colls),arena_left)
array_insert(_colls,array_length(_colls),arena_right)
function x_y(_x,_y)
{
	x = _x
	y = _y
}
function x_y_angle(_x,_y,_angle)
{
	x = _x
	y = _y
	angle = _angle
}


