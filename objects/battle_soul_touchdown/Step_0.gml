if (live_call()) return live_result;
SPD=2.25
SPD_v1 = 0.1
SPD_v2 = 1/SPD_v1
SPD=(Input_Cancel_Press() ? SPD/2 : SPD);
		
for (var i=0;i<SPD*SPD_v2;i++){
	if(!place_meeting(x+lengthdir_x(SPD_v1,image_angle-90),y+lengthdir_y(SPD_v1,image_angle-90),obj_block)){
	global.touchdown = false
	}
	else {
		global.touchdown = true
	}
}

//show_debug_message(place_meeting(x+lengthdir_x(SPD_v1,image_angle-90),y+lengthdir_y(SPD_v1,image_angle-90),obj_block))