if (live_call()) return live_result;
/*
if !surface_exists(surf)
{
    surf = surface_create(camera_get_view_width(view_camera[view_current]), camera_get_view_height(view_camera[view_current]));
    view_surface_id[view_current] = surf;
}
if surface_exists(surf)
{
	//	show_debug_message(view_current+1)
	surface_set_target(surf)
	{
		draw_surface(application_surface,0,0)
	}
	surface_reset_target()
	
	offset = 10
	value =	offset*10/offset
	for(var i=0;i<value;i++)
	{
		draw_surface_ext(surf,0+lengthdir_x(offset,360/value*i),0+lengthdir_y(offset,360/value*i),1,1,0,c_white,0.1)
	}
	
	
	surface_set_target(surf)
	{
		draw_clear_alpha(0,0);
	}

	surface_reset_target();

}