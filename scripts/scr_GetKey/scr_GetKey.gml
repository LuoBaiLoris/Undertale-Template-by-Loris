function GetKey_Press(key_string){
	return keyboard_check(ord(key_string))
}
function GetKey_Pressed(key_string){
	return keyboard_check_pressed(ord(key_string))
}
function GetVkKey_Press(vk_key){
	return keyboard_check(vk_key)
}
function GetVkKey_Pressed(vk_key){
	return keyboard_check_pressed(vk_key)
}
