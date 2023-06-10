/// @description Step
// You can write your code in this editor
if (live_call()) return live_result;
smjb = 250
timer += 1
length = sprite_height/2-8
beam.x = x + lengthdir_x(length,image_angle-90)
beam.y = y + lengthdir_y(length,image_angle-90)
beam.image_angle = image_angle
beam.color = color
direction = image_angle+90
image_xscale = scale[0]
image_yscale = scale[1]
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
if firep == 0
{
	var _spd1 = updatespeed
	x += (target_transform[0] - x) * _spd1 
	y += (target_transform[1] - y) * _spd1
	image_angle += (target_transform[2] - image_angle) * _spd1
	beam.alpha = 0
	//beam.depth = depth+1
}
if firep == 0
{
	if timer <= shoot_timer
	{
		shoot = 0
		image_index = 0
	}
	else
	{
		if !shoot
		{
			firep = 1
			timer = -1
		}
	}
}
if firep == 1
{
	if timer == 1
	{
		audio_stop_sound(snd_gb_fire)
		audio_play_sound(snd_gb_fire,0,0 )
		Camera_Shake_2(5,30);
		Anim_Create(id,"speed",1,0,0,60,30,1)
	}
	
	if !shoot 
	{
		sin_timer = 0
		if !(beam.image_xscale >= scale[0]+0.2)
		{
			var _spd = 0.2
			beam.image_alpha = 1
			image_index += (5 - image_index) * _spd
			beam.image_xscale += ((scale[0]+0.05+0.2)-(beam.image_xscale)) * _spd 
			beam.image_xscale = clamp(beam.image_xscale,0,scale[0]+0.5)
		}
		else
		{
			shoot = 1
		}
		
	}
	else 
	{
		sin_timer ++

			beam.image_xscale = scale[0]+0.2 + sin(sin_timer*0.18)*0.35
		
		if sin_timer >= stay_timer
		{
			firep = 2
			timer = -1
		}
	}
}
if firep == 2
{
	
	if timer == 1
	{
		var time =20
		Anim_Create(beam,"image_alpha",0,0,1,-1,time)
		Anim_Create(beam,"image_xscale",0,0,beam.image_xscale,-beam.image_xscale,time)
	}
	if beam.image_alpha == 0
	{
		instance_destroy(id)
		instance_destroy(beam)
	}	
}
direction = image_angle+90

if x > 640+smjb or y > 480+smjb or x < 0-smjb or y < 0-smjb
{
	speed = 0
}
