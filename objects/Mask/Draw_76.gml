(live_call()) return live_result;

if !surface_exists(mask)
{
	surface_effect = surface_create(640,480)
}
if !surface_exists(global.Mask)
{
	global.Mask = surface_create(640,480)
}
