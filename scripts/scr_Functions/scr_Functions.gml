/// @arg *this
function IsCollision(Object){
	var this = self,collision = false;
	if(argument_count > 1)
	{
		this = argument[1];
	}
	with(this)
	{
		if(place_meeting(x,y,Object))
		{
			collision = true;
		}
	}
	
	return collision;
}
function Create_EnemyDialog(pos,text)
{
	var bubble = instance_create_depth(pos[0],pos[1],DEPTH.Text,Enemy_Dialog_Bubble)
	var _printer = instance_create_depth(pos[0]+23,pos[1]-35,DEPTH.Text,Text)
	_printer.depth = bubble.depth-1
	bubble.printer = _printer
	_printer.text = text
	_printer.text_color = [[0,0,0],[0,0,0],[0,0,0],[0,0,0]]
	return _printer
}

function Screen_Shake(value,time)
{
	var type = 0,delay = 0,sound = 1
	if argument_count > 3 type = argument[3]
	if argument_count > 2 delay = argument[2]
	var ss = instance_create_depth(0,0,0,screen_shake)
	ss.value = value
	ss.sound = sound
	ss.time = time
	ss.alarm[0] = delay
	ss.type = type
}
function AA_GB(ct,tt,mt,st,sc,clr)
{
	return CreateGB(ct,[tt[0],tt[1],point_direction(tt[0],tt[1],tt[2],tt[3])+90],mt,st,sc,clr)
}
global.debug = false
global.debug_wave = 0
global.debug_wave_bool = false