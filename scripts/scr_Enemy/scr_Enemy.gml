/// @arg anim_speed*
/// @arg delay*
function Blade_Anim()
{
	var anim_speed = 5
	if argument_count > 0
	{
		anim_speed = argument[0]
	}
	var delay = 0
	if argument_count > 1
	{
		delay = argument[1]
	}
	var type = 0
	if argument_count > 2
	{
		type = argument[2]
	}
	Enemy0.anim_speed = anim_speed
	Enemy0.slam_timer = -10-delay
	Enemy0.sp_anim = true
	Enemy0.sp_anim_type = type
}


