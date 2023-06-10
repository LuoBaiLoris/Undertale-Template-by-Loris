/// @description Insert description here
// You can write your code in this editor

x = 320
y = 410

hp_bottom_color = c_red
hp_color = c_yellow
kr_color = make_color_rgb(232,0,255)

draw_hp_left = x-285+6*15+string_width("   LV 1")+75
draw_hp_number_x = draw_hp_left+25+Player.HPMax*1.25+25
draw_hp_number_move = 0
draw_kr_x = 0
draw_kr_y = y - 20
draw_kr_move = 0
draw_kr_alpha = 0

hp_number_color = c_white
kr_timer = 0
function x_y(_x,_y)
{
	x = _x
	y = _y
}



