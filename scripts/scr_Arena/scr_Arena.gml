/// @arg value
/// @arg dur
/// @arg delay*
/// @arg arena*
/// @arg anim[tween;ease]*
function SetArena_Width(value,dur){
	var arena = global.Main_Arena,anim = [0,0],delay = 0
	if argument_count > 2
	{
		delay = argument[2]
	}
	if argument_count > 3
	{
		arena = argument[3]
	}
	if argument_count > 4
	{
		anim = argument[4]
	}
	Anim_Create(arena,"width",anim[0],anim[1],arena.width,value-arena.width,dur,delay)
}

/// @arg value
/// @arg dur
/// @arg delay*
/// @arg arena*
/// @arg anim[tween;ease]*
function SetArena_Height(value,dur){
	var arena = global.Main_Arena,anim = [0,0],delay = 0
	if argument_count > 2
	{
		delay = argument[2]
	}
	if argument_count > 3
	{
		arena = argument[3]
	}
	if argument_count > 4
	{
		anim = argument[4]
	}
	Anim_Create(arena,"height",anim[0],anim[1],arena.height,value-arena.height,dur,delay)
}
/// @arg value
/// @arg dur
/// @arg delay*
/// @arg arena*
/// @arg anim[tween;ease]*
function SetArena_X(value,dur){
	var arena = global.Main_Arena,anim = [0,0],delay = 0
	if argument_count > 2
	{
		delay = argument[2]
	}
	if argument_count > 3
	{
		arena = argument[3]
	}
	if argument_count > 4
	{
		anim = argument[4]
	}
	Anim_Create(arena,"x",anim[0],anim[1],arena.x,value-arena.x,dur,delay)
}

/// @arg value
/// @arg dur
/// @arg delay*
/// @arg arena*
/// @arg anim[tween;ease]*
function SetArena_Y(value,dur){
	var arena = global.Main_Arena,anim = [0,0],delay = 0
	if argument_count > 2
	{
		delay = argument[2]
	}
	if argument_count > 3
	{
		arena = argument[3]
	}
	if argument_count > 4
	{
		anim = argument[4]
	}
	Anim_Create(arena,"y",anim[0],anim[1],arena.y,value-arena.y,dur,delay)
}

/// @arg value
/// @arg dur
/// @arg delay*
/// @arg arena*
/// @arg anim[tween;ease]*
function SetArena_Angle(value,dur){
	var arena = global.Main_Arena,anim = [0,0],delay = 0
	if argument_count > 2
	{
		delay = argument[2]
	}
	if argument_count > 3
	{
		arena = argument[3]
	}
	if argument_count > 4
	{
		anim = argument[4]
	}
	Anim_Create(arena,"angle",anim[0],anim[1],arena.angle,value-arena.angle,dur,delay)
}