if (live_call()) return live_result;
if !surface_exists(sur1)
{
	sur1 = surface_create(room_width,room_height)
}
if !surface_exists(global.Mask)
{
	global.Mask = surface_create(room_width,room_height)
}
if !surface_exists(sur2)
{
	sur2 = surface_create(room_width,room_height)
}
if !surface_exists(sur3)
{
	sur3 = surface_create(room_width,room_height)
}


//draw_surface(sur1,10,0)
//draw_surface(application_surface,0,0)