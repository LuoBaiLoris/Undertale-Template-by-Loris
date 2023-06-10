/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;
beam_sin_timer += 1
if IsCollision(battle_soul_coll)  
{
	if color == Color.Normal
	{
		Player_Hurt(Damage,Time,1,KR)
	}
	else if color == Color.Orange
	{
		if !MOVE()
		{
			Player_Hurt(Damage,Time,1,KR)
		}
	}
	else if color == Color.Blue
	{
		if MOVE()
		{
			Player_Hurt(Damage,Time,1,KR)
		}
	}
}

//Anim_Create(id,"warn_index",ANIM_TWEEN.LINEAR,ANIM_EASE.IN_OUT,0,6,warn_max)
if !shoot {
	warn_timer -- 
}

if warn_timer == 10
{
	image_angle %= 360
	if ((image_angle) > -45 && (image_angle) < 45) || ((image_angle) > 180-45 && (image_angle) < 180+45)
	{
		Blade_Anim(2.5,0,1)
	}
	else
	{
		Blade_Anim(2.5,0,0)
	}
	
}
if warn_timer == warn_max - 2
{
	
	Anim_Create(id,"warn_index",ANIM_TWEEN.LINEAR,ANIM_EASE.IN_OUT,0,6,warn_max-2)
}
if warn_timer == 1 {
	
	//Enemy_Anim("Blade")
	audio_stop_sound(snd_bolt)
	audio_play_sound(snd_bolt,0,0)
	//StopSound(mus_sfx_cinematiccut)
	//PlaySound(mus_sfx_cinematiccut)
	Camera_Shake_2(width*0.8,30)
	Anim_Create(id,"image_xscale",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,0,width,blade_timer*0.8)
	Anim_Create(id,"image_alpha",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,0,1,blade_timer*0.8)

}
if warn_timer == 1 {


}
if warn_timer == 0 {
	shoot = true
	sprite_index = pixel_2
}
if shoot {
	if firep == 0 {
		//image_xscale = Anim_Step_old(image_xscale,0.2,ease_Mode.Lerp,width)
		//image_alpha = Anim_Step_old(image_alpha,0.2,ease_Mode.Lerp,1)
		if abs(width - image_xscale) == 0 {
			firep = 1
		}
	}
	if firep == 1 {
		beam_sin_timer ++
		stay_timer --
		image_xscale = width + width*0.05 + sin(beam_sin_timer*0.25)*width*0.2
		if stay_timer == 0 {
			firep = 2
		}
	}
	if firep == 2 {
		_end = true
		//beam.image_xscale = Anim_Step_old(beam.image_xscale,0.1*scale.x,ease_Mode.Normal,0)
		//beam.image_alpha = Anim_Step_old(beam.image_alpha,0.1,ease_Mode.Normal,0)
		_end_timer += 1
		if _end {
			Anim_Create(id,"image_xscale",ANIM_TWEEN.LINEAR,ANIM_EASE.IN_OUT,image_xscale,0-image_xscale,5*width/10)
			Anim_Create(id,"image_alpha",ANIM_TWEEN.LINEAR,ANIM_EASE.IN_OUT,image_alpha,0-image_alpha,5*width/10)
			//Anim(id,"image_xscale",0,EASE.LINEAR,[30,0))
			//Anim(id,"image_alpha",0,EASE.LINEAR,[30,0))
			_end = false

		}
		if _end_timer == 5*width/10+20 {
			instance_destroy()
			sprite_index = spr_nil
		}
			sprite_index = spr_nil
	}
}

/*
main_timer += 1
if(warn_timer == 7)
{
	Enemy_Anim("Blade")
}
if(warn_timer == 0)
{
	isblade = true
	Camera_Shake(1.5,20)
	snd2 = PlaySound(snd_gunshot)
	audio_sound_gain(snd2, 5, 0)
	Anim(self,"image_xscale",width/2,EASE.SINEBACK,[blade_timer,5))
	//Anim(self,"image_alpha",1,EASE.SINEBACK,[blade_timer,50))
}
if isblade && -(warn_timer) = blade_timer {
	Destroy_Object(self)
}