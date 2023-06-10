/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;

	//surface_reset()
	image_alpha = 0.2
	timer ++
offset = 8 //+ sin(timer*0.02)*2
depth = 10
for(var index = 0;index<offset;index++)
{
	draw_surface_ext(application_surface,x-offset,y,1,1,0,c_white,0.2)
	draw_surface_ext(application_surface,x+offset,y,1,1,0,c_white,0.2)
	draw_surface_ext(application_surface,x,y-offset,1,1,0,c_white,0.2)
	draw_surface_ext(application_surface,x,y+offset,1,1,0,c_white,0.2)
}
