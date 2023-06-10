if (live_call()) return live_result;
timer = -1
SetArena_Width(320,30,0,global.Main_Arena,[7,1])
SetArena_Height(130,30,0,global.Main_Arena,[7,1])
function In_T(count1){
	var count2 = count1
	if argument_count > 1 {
		count2 = argument[1]
	}
	return InTimer(timer,count1,count2)
}
function T_S(count1){
	return TimerSpace(timer,count1)
}
