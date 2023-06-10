if (live_call()) return live_result;
sprite_index = spr_bone_wall
Damage = 1
KR = true
Time = 1
timer = 0
angle = 0
mask = true
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
color = Color.Normal
timer =	 -1
destroy_time = infinity
skv = 0

switch(color)
{
	case Color.Normal:
		image_blend = make_color_rgb(255,255,255)
	break;
	case Color.Blue:
		image_blend = make_color_rgb(0,162,232)
		break;
	case Color.Orange:
		image_blend = make_color_rgb(255,154,34)
		break;
	case Color.Red:
		image_blend = make_color_rgb(255,0,0)
		break;
}
