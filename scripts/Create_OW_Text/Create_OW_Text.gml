global.Text_List = ds_list_create();

/// @arg position[x;y]
/// @arg layer
/// @arg string
function Create_OW_Text(position,layer,_string)
{
	ins_text = instance_create_depth(position[0],position[1],layer,Text)
	ins_text.text = _string
	ds_list_add(global.Text_List,ins_text)
	
	return ins_text;
}
function Add_Text_ow(text,type){
	var _y = 0
	switch(type)
	{
		case Dir.Up:
			global.ins_text_ow = Create_OW_Text([global.Camera_Pos[0]+320-240,global.Camera_Pos[1] +240-150-35],layer_get_id("Text"),"{font:font_ch2}{*}"+text)
			global.ins_text_ow.text_bullet = instance_create_depth(global.Camera_Pos[0]+320,global.Camera_Pos[1] +240-150,layer_get_id("Text_Bullet"),ow_text_bullet)
			break;
		case Dir.Down:
			global.ins_text_ow = Create_OW_Text([global.Camera_Pos[0]+320-240,global.Camera_Pos[1] +240+150-35],layer_get_id("Text"),"{font:font_ch2}{*}"+text)
			global.ins_text_ow.text_bullet = instance_create_depth(global.Camera_Pos[0]+320,global.Camera_Pos[1] +240+150,layer_get_id("Text_Bullet"),ow_text_bullet)
			break;
	}

}