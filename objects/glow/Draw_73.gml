if (live_call()) return live_result;
surface_set_target(global.surface_effect)
draw_surface(application_surface,0,0)
surface_reset_target()

surface_set_target(surface_effect)
draw_surface(global.surface_effect,0,0)
surface_reset_target()


offset = 6
