/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;
//show_debug_message(image_xscale)

if image_alpha <= 0.5 {
	sprite_index = spr_nil
}
else {
	sprite_index = spr_gb_beam_2
}
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
//show_debug_message(color)
if IsCollision(battle_soul_coll)  
{
	if color == Color.Normal
	{
		Player_Hurt(Damage,Time,1,KR)
	}
	else if color == Color.Orange
	{
		if !MOVE()
		{
			Player_Hurt(Damage,Time,1,KR)
		}
	}
	else if color == Color.Blue
	{
		if MOVE()
		{
			Player_Hurt(Damage,Time,1,KR)
		}
	}
}