/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if keyboard_check_pressed(ord("F")) {
	room_goto(0)
}
if rectangle_in_rectangle(x - sprite_width/2, y,  x + sprite_width/2, y - sprite_height, Area.x, Area.y, Area.x + Area.sprite_width, Area.y - Area.sprite_height) == 1
{
	global.Changeing = true
}
if global.ow_canmove {
if global.Changeing == false {
if keyboard_check(vk_up) && !place_meeting(x ,y - OW_speed,Wall){
	OW_Dir = Dir.Up
	y -= OW_speed
}
if keyboard_check(vk_down) && !place_meeting(x ,y + OW_speed,Wall) {
	OW_Dir = Dir.Down
	y += OW_speed
}
if keyboard_check(vk_right) && !place_meeting(x + OW_speed,y,Wall){
	OW_Dir = Dir.Right
	x += OW_speed
}
if keyboard_check(vk_left) && !place_meeting(x - OW_speed,y,Wall) {
	OW_Dir = Dir.Left
	x -= OW_speed
}
}
}
//Walling = false