if (live_call()) return live_result;
//view_visible[0] = true

camera_destroy(view_camera[0]);
view_camera[0] = camera_create_view(Player_PZ.x-320, Player_PZ.y-240, 0, 0, 0, -1, 0, 0, 0, 0);

