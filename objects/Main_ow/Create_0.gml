/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if (live_call()) return live_result;
global.Changeing = false
global.Menuing = false
alpha = 1
global.ins_text_ow = noone
texting = false
timer = -1
function menuback()
{
	_menuchoice = 0
	_menuchoice_2 = 0
	_menus = -1
}
_menuchoice = 0
_menuchoice_2 = 0
_menuchoice_3 = 0
_menus = -1
_menu_start = 0
_menu_timer = -1
_menusoul = 
{
	x:320,
	y:320,
	image_alpha:1,
	color : c_red
}
camera_destroy(view_camera[0]);
view_camera[0] = camera_create_view(Player_PZ.x-320, Player_PZ.y-240, 640, 480, 0, -1, 5, -5, 0, 0);