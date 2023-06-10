if (live_call()) return live_result;
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
timer ++
if timer == 10
{
	Slam(0,15,0.5)
	
	index = 0
	repeat 3
	{
		CreateGB([0,0,-90],[320+90-index*90,180,0],30,10,[2,2],0)
		
		index++
	}
	BoneWall(0,60,30,5,20,10,[7,1])
	
}

if timer == 70
{
	audio_play_sound(snd_gb_intro,0,0)
	SetSoulMode(SoulMode.Red,0,0,snd_ding)
}

if In_T(70,520)
{
	var offset = 20
	if T_S(5)
	{
		//MakeBonePoint()
		DownRBone(0,65-15+sin(timer*0.05)*offset,5,0,180)
		UpRBone(0,65-15-sin(timer*0.05)*offset,5,0,180)
	}
	if T_S(90)
	{
		a = DownRBone(0,130,0,1+irandom(1),150)
		Anim_Create(a,"x",0,1,a.x,-30,10)
		Anim_Create(a,"x",1,2,a.x-30,-130-20,60,20)
		Anim_Create(a,"x",1,0,a.x-30-130-20,180,60,20+60)
		a.destroy_time = 150

		a = DownLBone(0,130,0,1+irandom(1),150)
		Anim_Create(a,"x",0,1,a.x,30,10)
		Anim_Create(a,"x",1,2,a.x+30,130+20,60,20)
		Anim_Create(a,"x",1,0,a.x+30+130+20,-180,60,20+60)
	}
}

if In_T(550,900) && T_S(15)
{
	//CreateGB([0,0,-90],[320+90-index*90,180,0],30,10,[2,2],0)
	AA_GB([640,0,360],[irandom(640),irandom(480),battle_soul.x,battle_soul.y],30,0,[1,2],0)
}

if timer == 1000
{
	//instance_create_depth(320,480,0,obj_background)
	audio_play_sound(Music,0,1)
	EndWave()
}