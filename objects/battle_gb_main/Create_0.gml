if (live_call()) return live_result;
timer = -1
beam = instance_create_depth(0,0,DEPTH.Bullet_Top+1,battle_gb_beam)
target_transform = [0,0,0]
image_speed = 0
sprite_index = spr_gb
speed = 0
scale = [2,2]
color = Color.Normal
gb_index = 0
color = [0,0,0]
shoot = false
firep = 0
shoot_timer = 30
beam_sin_timer = 0
stay_timer = 30
updatespeed = 0.18
_end = false
_end_timer = 0
switch(color)
{
	case Color.Normal:
		image_blend = c_white
		break;
	case Color.Blue:
		image_blend = make_color_rgb(0,162,232)
		break;
	case Color.Orange:
		image_blend = make_color_rgb(255,134,34)
		break;
	case Color.Red:
		image_blend = c_red
		break;
}



