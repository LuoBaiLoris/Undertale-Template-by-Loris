/// @arg value
/// @arg *time
/// @arg *sound
/// @arg *hurt_mode
function Player_Hurt(value)
{
	var time = 60 , sound = true ,hurt_mode = HurtMode.Normal
	if argument_count > 1
	{
		time = argument[1]
	}
	if argument_count > 2
	{
		sound = argument[2] 
	}
	if argument_count > 3
	{
		hurt_mode = argument[3] 
	}
	
	if battle_soul.IsHurting == false
	{
		Player.HP -= value
		battle_soul.IsHurting = true
		battle_soul.alarm[0] = time
		if sound
		{
			audio_stop_sound(hurtsound);
			audio_play_sound(hurtsound,0,0);
		}
		if hurt_mode == HurtMode.KR 
		{
			if Player.HP > 1
			{
				Player.KR += value;
			}
			else if Player.HP <= 1 && Player.KR > 0
			{
				Player.KR -= value;
			}
		}
	}
	
}
/// @arg value
/// @arg *sound
/// @arg *canover
function Player_Heal(value)
{
	var sound = true ,canover = false
	if argument_count > 1
	{
		sound = argument[1]
	}	
	if argument_count > 2
	{
		canover = argument[2]
	}
	Player.HP += value
	if !canover 
	{	
		Player.HP = clamp(Player.HP,0,Player.HPMax)
	}
	if sound audio_play_sound(healsound,0,0);
	
}