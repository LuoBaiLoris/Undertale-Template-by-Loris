/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;
timer ++
if KR > 0 
{
	if KR > 40*HPMax/99
	{
		KR_Timer = 1
	}
	else if KR <= 40*HPMax/99 && KR > 30*HPMax/99
	{
		KR_Timer = 3
	}
	else if KR <= 30*HPMax/99 && KR > 20*HPMax/99
	{
		KR_Timer = 5
	}
	else if KR <= 20*HPMax/99 && KR > 10*HPMax/99
	{
		KR_Timer = 10
	}
	else if KR <= 10*HPMax/99
	{
		KR_Timer = 45
	}
	HP = clamp(HP,1,HPMax)

	if timer % KR_Timer == 0
	{
		KR --
	}
}