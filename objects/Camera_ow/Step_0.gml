if (live_call()) return live_result;
show_debug_message(camera_get_view_x(view_camera[0]))
show_debug_message(camera_get_view_y(view_camera[0]))
if view_current == 0
{
    camera_apply(view_camera[0]);
}
camera_set_view_pos(view_camera[0],Player_PZ.x-320,Player_PZ.y-240)
camera_set_view_angle(view_camera[0], image_angle)