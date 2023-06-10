function Camera_Shake(amplitude,time){
	Camera.camera_shake_amplitude = amplitude
	Camera.awa = 0
	Camera.alarm[0] = time
}
function Camera_Shake_2(amplitude,time){
	Camera.camera_shake_amplitude = amplitude
	Camera.awa = amplitude/time
	Camera.alarm[0] = time
}
function Camera_Shake_Dir(amplitude,time,dir){
	
	dir += 90 
	////show_debug_message(dir)
	with Camera
	{
		Anim_Create(id,"camera_x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320,320+lengthdir_x(amplitude,dir)-320,time/2)
		Anim_Create(id,"camera_y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,240,240+lengthdir_y(amplitude,dir)-240,time/2)
		Anim_Create(id,"camera_x",ANIM_TWEEN.SINE,ANIM_EASE.IN,320+lengthdir_x(amplitude,dir),320-(320+lengthdir_x(amplitude,dir)),time/2,time/2)
		Anim_Create(id,"camera_y",ANIM_TWEEN.SINE,ANIM_EASE.IN,240+lengthdir_y(amplitude,dir),240-(240+lengthdir_y(amplitude,dir)),time/2,time/2)
	}
}