/// @description Insert description here
// You can write your code in this editor
if (live_call()) return live_result;
x = global.Main_Arena.x
y = global.Main_Arena.y
if !array_length(MAIN_GAMEDATA.Items)
{
	button_item.sprite_index = spr_button_item_empty
}
else
{
	button_item.sprite_index = spr_button_item
}

event_user(now)