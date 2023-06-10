/// @description surface_effect
if (live_call()) return live_result;
if(not surface_exists(surface_effect))
{
	surface_effect = surface_create(640,480);
}

surface_set_target(surface_effect)
draw_surface(application_surface,0,0)
surface_reset_target()
