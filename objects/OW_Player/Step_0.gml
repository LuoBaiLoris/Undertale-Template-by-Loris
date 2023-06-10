if (live_call()) return live_result;
x = Player_PZ.x
y = Player_PZ.y
if global.ow_canmove {
if keyboard_check(vk_up) {
	OW_Dir = Dir.Up
}
if keyboard_check(vk_down) {
	OW_Dir = Dir.Down
}
if keyboard_check(vk_right) {
	OW_Dir = Dir.Right
}
if keyboard_check(vk_left) {
	OW_Dir = Dir.Left
}
if Moving() == false {
	Walk_timer = 0
	switch(OW_Dir)
	{ 
		case Dir.Up:
			image_index = 7
			break;
		case Dir.Down:
			image_index = 0 
			break;
		case Dir.Right:
			image_index = 5
			break;
		case Dir.Left:
			image_index = 3
			break;
	}
}
else {
	if Walk_timer <= 8 {
		Walk_timer += 0.15
	}
	else {
		Walk_timer = 0
	}
	switch(OW_Dir)
	{ 
		case Dir.Up:
			if Walk_timer <= 2 {
				image_index = 7
			}
			else if Walk_timer >= 2 && Walk_timer <= 4 {
				image_index = 8
			}
			else if Walk_timer >= 4 && Walk_timer <= 6 {
				image_index = 7
			}
			else if Walk_timer >= 6 && Walk_timer <= 8 {
				image_index = 9
			}
			break;
		case Dir.Down:
			if Walk_timer <= 2 {
				image_index = 0
			}
			else if Walk_timer >= 2 && Walk_timer <= 4 {
				image_index = 1
			}
			else if Walk_timer >= 4 && Walk_timer <= 6 {
				image_index = 0
			}
			else if Walk_timer >= 6 && Walk_timer <= 8 {
				image_index = 2
			}
			break;
		case Dir.Right:
			if Walk_timer <= 2 {
				image_index = 5
			}
			else if Walk_timer >= 2 && Walk_timer <= 4 {
				image_index = 6
			}
			else if Walk_timer >= 4 && Walk_timer <= 6 {
				image_index = 5
			}
			else if Walk_timer >= 6 && Walk_timer <= 8 {
				image_index = 6
			}
			break;
		case Dir.Left:
			if Walk_timer <= 2 {
				image_index = 3
			}
			else if Walk_timer >= 2 && Walk_timer <= 4 {
				image_index = 4
			}
			else if Walk_timer >= 4 && Walk_timer <= 6 {
				image_index = 3
			}
			else if Walk_timer >= 6 && Walk_timer <= 8 {
				image_index = 4
			}
			break;
	}
}
}
else {
	Walk_timer = 0
	switch(OW_Dir)
	{ 
		case Dir.Up:
			image_index = 7
			break;
		case Dir.Down:
			image_index = 0 
			break;
		case Dir.Right:
			image_index = 5
			break;
		case Dir.Left:
			image_index = 3
			break;
	}
}