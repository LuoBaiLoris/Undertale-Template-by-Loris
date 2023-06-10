if (live_call()) return live_result;
OW_speed = 2.5
Walk_timer = 0

function Moving()
{
	if not keyboard_check(vk_up) && not keyboard_check(vk_down) && not keyboard_check(vk_left) && not keyboard_check(vk_right) {
		return false
	}
	else {
		return true
	}
}
OW_Dir = Dir.Down