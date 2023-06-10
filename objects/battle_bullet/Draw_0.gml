if mask
{
	surface_set_target(global.Mask)
	draw_self()
	surface_reset_target()
}
else draw_self()
