/// @description 
if (live_call()) return live_result;
x = 320
y = 240
_x = 0
_y = 0
camera_x = 320
camera_y = 240
view_enabled = true
view_set_visible(0,true)
global.Camera_Main = camera_create_view(x, y, 640, 480, 0, -1, -1, -1, 32, 32);
view_set_camera(0, global.Camera_Main);
awa = 0
camera_shake_amplitude = 0
timer = 0
pos_x = 0
pos_y = 0

pivot_x = 320
pivot_y = 240
camera_size = 1
image_xscale = camera_size
image_yscale = image_xscale