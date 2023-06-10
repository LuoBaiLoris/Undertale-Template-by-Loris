function SetSoulMode(mode,angle,shd,sound)
{
	battle_soul.mode = mode
	battle_soul.angle = angle
	if sound
	{
		audio_play_sound(sound,0,0)
	}
}	
function Slam(dir)
{
	var slam_speed = 15 ,gra = 0.1
	if argument_count > 1
	{
		slam_speed = argument[1]
	}
	if argument_count > 2
	{
		gra = argument[2]
	}
	var anim_speed = 5
	if argument_count > 3
	{
		anim_speed = argument[3]
	}
	var delay = 0
	if argument_count > 4
	{
		delay = argument[4]
	}
	Enemy0.anim_speed = anim_speed
	Enemy0.slam_speed = slam_speed
	battle_soul.slamsp = slam_speed
	battle_soul.slamgra = gra
	Enemy0.slam_dir = dir
	Enemy0.slam_timer = -10-delay
	Enemy0.slam = true
}