function InTimer(timer,count1){
	var count2 = count1
	if argument_count > 2 {
		count2 = argument[2]
	}
	if argument_count == 2 {
		if timer == count1 {return true}
		else return false
	}
	else if argument_count > 2 {
		if timer >= count1 && timer <= count2 {return true}
		else return false
	}
}