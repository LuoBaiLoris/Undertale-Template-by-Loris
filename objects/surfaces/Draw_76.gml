(live_call()) return live_result;
if !surface_exists(surface_effect)
{
	surface_effect = surface_create(640,480)
}
if !surface_exists(global.surface_effect)
{
	global.surface_effect = surface_create(640,480)
}