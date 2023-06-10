/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;
target_transform = [0,0,0]
warn_index = 0
main_timer = 0
warn_timer = 0
warn_max = warn_timer
blade_timer = 10
isblade = false
beam_sin_timer = 0
firep = 0
shoot = false
width = 20
_end = false
_end_timer = 0
Color = Color.Normal
//audio_play_sound(snd_block2,0,0)
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


sprite_index = spr_nil
image_xscale = 0
image_yscale = 1000
//image_alpha = 0

Damage = 1
KR = true
Time = 1
timer = 0
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