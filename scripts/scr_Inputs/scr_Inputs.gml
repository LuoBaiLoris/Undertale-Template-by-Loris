function Restart_Input()
{
	return vk_f2
}
function Input_Up_Press()
{
	return keyboard_check(Input_Dir.Up)
}
function Input_Up_Pressed()
{
	return keyboard_check_pressed(Input_Dir.Up)
}
function Input_Down_Press()
{
	return keyboard_check(Input_Dir.Down)
}
function Input_Down_Pressed()
{
	return keyboard_check_pressed(Input_Dir.Down)
}
function Input_Left_Press()
{
	return keyboard_check(Input_Dir.Left)
}
function Input_Left_Pressed()
{
	return keyboard_check_pressed(Input_Dir.Left)
}
function Input_Right_Press()
{
	return keyboard_check(Input_Dir.Right)
}
function Input_Right_Pressed()
{
	return keyboard_check_pressed(Input_Dir.Right)
}

function Key_Up(){
	if (battle_soul.mode == SoulMode.Blue or battle_soul.mode == SoulMode.Slam){
		switch(battle_soul.angle)
		{
			case 0:
				return vk_up
				break;
			case 90:
				return vk_left
				break;
			case 180:
				return vk_down
				break;
			case 270:
				return vk_right
				break;
		}
	}
	else {return vk_up}
}

function Key_Down(){
	if (battle_soul.mode == SoulMode.Blue or battle_soul.mode == SoulMode.Slam) {
		switch(battle_soul.angle)
		{
			case 0:
				return vk_down
				break;
			case 90:
				return vk_right
				break;
			case 180:
				return vk_up
				break;
			case 270:
				return vk_left
				break;
		}
	}
	else {return vk_down}
}

function Key_Left(){
	if (battle_soul.mode == SoulMode.Blue or battle_soul.mode == SoulMode.Slam){
		switch(battle_soul.angle)
		{
			case 0:
				return vk_left
				break;
			case 90:
				return vk_down
				break;
			case 180:
				return vk_right
				break;
			case 270:
				return vk_up
				break;
		}
	};
	else {return vk_left}
}

function Key_Right(){
	if (battle_soul.mode == SoulMode.Blue or battle_soul.mode == SoulMode.Slam){
		switch(battle_soul.angle)
		{
			case 0:
				return vk_right
				break;
			case 90:
				return vk_up
				break;
			case 180:
				return vk_left
				break;
			case 270:
				return vk_down
				break;
		}
	}
	else {return vk_right}
}

function Input_Confirm_Pressed(){
	var input = false;
	if (GetVkKey_Pressed(vk_enter) || GetKey_Pressed("Z")){
		input = true;
	}
	return input;
}

function Input_Cancel_Pressed(){
	var input = false;
	if (GetVkKey_Pressed(vk_shift) || GetKey_Pressed("X")){
		input = true;
	}
	return input;
}
function Input_Menu_Pressed(){
	var input = false;
	if (GetVkKey_Pressed(vk_control) || GetKey_Pressed("C")){
		input = true;
	}
	return input;
}
function Input_Confirm_Press(){
	var input = false;
	if (GetVkKey_Press(vk_enter) || GetKey_Press("Z")){
		input = true;
	}
	return input;
}

function Input_Cancel_Press(){
	var input = false;
	if (GetVkKey_Press(vk_shift) || GetKey_Press("X")){
		input = true;
	}
	return input;
}
function Input_Menu_Press(){
	var input = false;
	if (GetVkKey_Press(vk_control) || GetKey_Press("C")){
		input = true;
	}
	return input;
}
function MOVE()
{
	if Input_Up_Press() || Input_Down_Press() || Input_Left_Press() || Input_Right_Press()
	{
		return true
	}
	else return false
}