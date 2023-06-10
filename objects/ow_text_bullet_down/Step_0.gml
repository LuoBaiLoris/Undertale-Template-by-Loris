/// @description Insert description here
// You can write your code in this editor
image_angle = 180
////show_debug_message("112qsdasdad")
if(not instance_exists(global.ins_text_ow) or (obj[0] != global.ins_text_ow))
{
	instance_destroy()
	global.ins_text_ow = noone
}