/// @arg create_transform{x;y;angle}
/// @arg final_transform{x;y;angle}
/// @arg shoot_timer*
/// @arg stay_timer*
/// @arg scale{x;y}
/// @arg color*
/// @arg updatespeed*

function CreateGB(create_transform,final_transform)
{
	audio_stop_sound(snd_gb_intro)
	audio_play_sound(snd_gb_intro,0,0)
	var shoot_timer = 30,stay_timer = 10,scale = [2,2],color = Color.Normal,updatespeed = 0.18;
	if(argument_count > 2)
	{
		shoot_timer = argument[2];
	}
	if(argument_count > 3)
	{
		stay_timer = argument[3];
	}
	if(argument_count > 4)
	{
		scale = argument[4];
	}
	if(argument_count > 5)
	{
		color = argument[5];
	}
	if(argument_count > 6)
	{
		updatespeed = argument[6];
	}
	var ins_gb = instance_create_depth(create_transform[0],create_transform[1],DEPTH.Bullet_Top,battle_gb_main)
	ins_gb.image_angle = create_transform[2]
	ins_gb.target_transform = final_transform;
	ins_gb.shoot_timer = shoot_timer;
	ins_gb.stay_timer = stay_timer;
	ins_gb.scale = scale
	ins_gb.color = color
	ins_gb.updatespeed = updatespeed
	
	return ins_gb;
}
/// @arg create_transform{x;y;angle}
/// @arg warn_timer
/// @arg blade_timer
/// @arg stay_timer
/// @arg width
/// @arg color
function MakeBlade(create_transform)
{
	var	warn_timer = 30,blade_timer = 10,stay_timer = 20,width = 20,color = Color.Normal;
	if(argument_count > 1)
	{
		warn_timer = argument[1];
	}
	if(argument_count > 2)
	{		
		blade_timer = argument[2];
	}
	if(argument_count > 3)
	{		
		stay_timer = argument[3];
	}
	if(argument_count > 4)
	{
		width = argument[4];
	}
	if(argument_count > 5)
	{
		color = argument[5];
	}
	//var ins_blade = new Object([create_transform.x,create_transform.y),global.Layer.Top,bullet_blade).ins_object;
	var ins_blade = instance_create_depth(create_transform[0],create_transform[1],DEPTH.Bullet_Top,bullet_blade_1)
	ins_blade.target_transform = create_transform
	ins_blade.image_angle = create_transform[2]
	ins_blade.warn_timer = warn_timer
	ins_blade.warn_max = warn_timer
	ins_blade.blade_timer = blade_timer
	ins_blade.stay_timer = stay_timer
	ins_blade.width = width


	switch(ins_blade.Color)
	{
		case Color.Blue:
			ins_blade.color = [[0,162,232],[0,162,232],[0,162,232]];
			break;
		case Color.Orange:
			ins_blade.color = [[255,154,34],[255,154,34],[255,154,34]];
			break;
		case Color.Red:
			ins_blade.color = [[255,0,0],[255,0,0],[255,0,0]];
			break;
	}
	
	return ins_blade;
}
/// @arg x
/// @arg y
/// @arg angle
/// @arg length
/// @arg clr
/// @arg dest
/// @arg spd
/// @arg dir
/// @arg anglespd
/// @arg mask

function MakeBone()
{
	var	_x = 0,_y = 0,_angle = 0,_length = 30,_col=Color.Normal,_dest=infinity,_spd=0,_dir=0,_anglespd=0,_mask=1
	if argument_count >	0 _x = argument[0]
	if argument_count >	1 _y = argument[1]
	if argument_count >	2 _angle = argument[2]
	if argument_count >	3 _length = argument[3]
	if argument_count >	4 _col = argument[4]
	if argument_count >	5 _dest = argument[5]
	if argument_count >	6 _spd = argument[6]
	if argument_count >	7 _dir = argument[7]
	if argument_count >	8 _anglespd = argument[8]
	if argument_count >	9 _mask = argument[9]
	var bone = instance_create_depth(_x,_y,DEPTH.Bullet_Top,battle_bullet_bone)
	bone.angle = _angle
	bone.image_angle = _angle
	bone.length = _length
	bone.color = _col
	bone.speed = _spd
	bone.direction = _dir
	bone.anglespd = _anglespd
	bone.mask = _mask
	return bone
}
/// @arg x
/// @arg y
/// @arg angle
/// @arg length
/// @arg clr
/// @arg dest
/// @arg spd
/// @arg dir
/// @arg anglespd
/// @arg mask
function MakeBonePoint()
{
	var	_x = 0,_y = 0,_angle = 0,_length = 30,_col=Color.Normal,_dest=infinity,_spd=0,_dir=0,_anglespd=0,_mask=1
	if argument_count >	0 _x = argument[0]
	if argument_count >	1 _y = argument[1]
	if argument_count >	2 _angle = argument[2]
	if argument_count >	3 _length = argument[3]
	if argument_count >	4 _col = argument[4]
	if argument_count >	5 _dest = argument[5]
	if argument_count >	6 _spd = argument[6]
	if argument_count >	7 _dir = argument[7]
	if argument_count >	8 _anglespd = argument[8]
	if argument_count >	9 _mask = argument[9]
	var bone = instance_create_depth(_x,_y,DEPTH.Bullet_Top,battle_bullet_bone2)
	bone.angle = _angle
	bone.image_angle = _angle
	bone.length = _length
	bone.color = _col
	bone.speed = _spd
	bone.direction = _dir
	bone.anglespd = _anglespd
	bone.mask = _mask
	bone.dest = _dest
	return bone
}
function WARN(p0,p1,time)
{
	var a = instance_create_depth(0,0,DEPTH.Bullet_Bottom,obj_warn)
	a.p0 = p0
	a.p1 = p1
	a.alarm[0] = time
}
function PlaySoundDelay(soundid,time)
{
	var a = instance_create_depth(0,0,0,obj_delaysound)
	a.soundid = soundid
	a.alarm[0] = time
}
/// @arg dir
/// @arg length
/// @arg warn_time
/// @arg move_time
/// @arg stay_time
/// @arg back_time
/// @arg _move*
/// @arg _back*
function BoneWall(dir,length,warn_time,move_time,stay_time,back_time)
{
	var _move = [0,0]
	var _back = [0,0]
	if argument_count > 6 _move = argument[6]
	if argument_count > 7 _back = argument[7]
	switch dir
	{
		case 0:
			var wall = instance_create_depth(global.Main_Arena.x,global.Main_Arena.y+global.Main_Arena.height/2,DEPTH.Bullet_Bottom,battle_bone_wall)
			Anim_Create(wall,"y",_move[0],_move[1],wall.y,-length,move_time,warn_time)
			Anim_Create(wall,"y",_back[0],_back[1],wall.y-length,length,move_time,warn_time+stay_time)
			wall.destroy_time = warn_time+move_time+stay_time+back_time
			wall.alarm[0] = warn_time+move_time
			WARN([global.Main_Arena.x-global.Main_Arena.width/2+5,global.Main_Arena.y+global.Main_Arena.height/2-length],[global.Main_Arena.x+global.Main_Arena.width/2-5,global.Main_Arena.y+global.Main_Arena.height/2-5],warn_time)
		break
		case 1:
			var wall = instance_create_depth(global.Main_Arena.x+global.Main_Arena.width/2,global.Main_Arena.y,DEPTH.Bullet_Bottom,battle_bone_wall)
			wall.image_angle = 90
			Anim_Create(wall,"x",_move[0],_move[1],wall.x,-length,move_time,warn_time)
			Anim_Create(wall,"x",_back[0],_back[1],wall.x-length,length,move_time,warn_time+stay_time)
			wall.destroy_time = warn_time+move_time+stay_time+back_time
			wall.alarm[0] = warn_time+move_time
			WARN([global.Main_Arena.x+global.Main_Arena.width/2-5,global.Main_Arena.y-global.Main_Arena.height/2+5],[global.Main_Arena.x+global.Main_Arena.width/2-length,global.Main_Arena.y+global.Main_Arena.height/2-5],warn_time)
			
		break
		case 2:
			var wall = instance_create_depth(global.Main_Arena.x,global.Main_Arena.y-global.Main_Arena.height/2,DEPTH.Bullet_Bottom,battle_bone_wall)
			wall.image_angle = 180
			Anim_Create(wall,"y",_move[0],_move[1],wall.y,length,move_time,warn_time)
			Anim_Create(wall,"y",_back[0],_back[1],wall.y+length,-length,move_time,warn_time+stay_time)
			wall.destroy_time = warn_time+move_time+stay_time+back_time
			wall.alarm[0] = warn_time+move_time
			WARN([global.Main_Arena.x-global.Main_Arena.width/2+5,global.Main_Arena.y-global.Main_Arena.height/2+5],[global.Main_Arena.x+global.Main_Arena.width/2-5,global.Main_Arena.y-global.Main_Arena.height/2+length],warn_time)
			//WARN([global.Main_Arena.x-global.Main_Arena.width/2+5,global.Main_Arena.y-global.Main_Arena.height/2+5],[global.Main_Arena.x+global.Main_Arena.width/2-5,global.Main_Arena.y-global.Main_Arena.height/2+length],warn_time)
			
		break
		case 3:
			var wall = instance_create_depth(global.Main_Arena.x-global.Main_Arena.width/2,global.Main_Arena.y,DEPTH.Bullet_Bottom,battle_bone_wall)
			wall.image_angle = 270
			Anim_Create(wall,"x",_move[0],_move[1],wall.x,length,move_time,warn_time)
			Anim_Create(wall,"x",_back[0],_back[1],wall.x+length,-length,move_time,warn_time+stay_time)
			wall.destroy_time = warn_time+move_time+stay_time+back_time
			wall.alarm[0] = warn_time+move_time
			WARN([global.Main_Arena.x-global.Main_Arena.width/2+5,global.Main_Arena.y-global.Main_Arena.height/2+5],[global.Main_Arena.x-global.Main_Arena.width/2+length,global.Main_Arena.y+global.Main_Arena.height/2-5],warn_time)
			
			
		break
	}
	PlaySoundDelay(snd_pierce,warn_time)
}