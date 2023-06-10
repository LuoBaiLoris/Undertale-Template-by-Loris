enum EaseMode
{
	Normal = 0,
	Lerp = 1
}
/// @arg variable
/// @arg value_speed
/// @arg ease_mode
/// @arg *value_max
/// @arg *ease_min
function Ease(variable,value_speed,ease_mode)
{
	var value_max = undefined,ease_min,ease_max;
	if(argument_count > 3)
	{
		value_max = argument[3]
	}
	if(argument_count > 4)
	{
		ease_min = argument[4]
	}
	if(argument_count > 5)
	{
		ease_max = argument[5]
	}
	switch(ease_mode)
	{
		case EaseMode.Normal:
			if(value_max == undefined)
			{
				variable += value_speed
			}
			else
			{
				if(variable < value_max)
				{
					variable += value_speed
					variable = clamp(variable,variable,value_max)
				}
				else if(variable > value_max)
				{
					variable -= value_speed
					variable = clamp(variable,value_max,variable)
				}
			}
			break;
		case EaseMode.Lerp:
			variable = lerp(variable,value_max,value_speed)
			break;
	}
	
	return variable;
}