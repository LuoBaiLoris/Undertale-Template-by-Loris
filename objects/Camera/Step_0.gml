/// @description 

//pos_x = -x/2+pivot_x*(view_wport[0]/2)+pivot_x*view_wport[0]*(1-image_xscale/640);
//pos_y = -y/2+pivot_y*(view_hport[0]/2)+pivot_y*view_hport[0]*(1-image_yscale/480);
if (live_call()) return live_result;
camera_x = x
camera_y = y
_x = camera_x-camera_size*640/2
_y = camera_y-camera_size*480/2
if(alarm[0] > 0)
{
	camera_shake_amplitude -= awa
	camera_set_view_pos(global.Camera_Main,_x + random_range(-camera_shake_amplitude,camera_shake_amplitude),_y + random_range(-camera_shake_amplitude,camera_shake_amplitude))
}
else
{
	camera_set_view_pos(global.Camera_Main,_x,_y)
}
timer += 0.05


camera_set_view_size(global.Camera_Main, view_wport[0]*camera_size, view_hport[0]*camera_size)
camera_set_view_angle(global.Camera_Main, image_angle)
