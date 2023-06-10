if (live_call()) return live_result;
image_blend = c_black
smjb = 80
timer ++

//angle = timer

arena_left.x = x + lengthdir_x(width / 2 + smjb / 2 ,angle)
arena_left.y = y + lengthdir_y(width / 2 + smjb / 2 ,angle)
arena_left.image_xscale = smjb / 2
arena_left.image_yscale = height / 2
arena_left.image_angle = angle

arena_right.x = x + lengthdir_x(width / 2 + smjb / 2 ,angle + 180)
arena_right.y = y + lengthdir_y(width / 2 + smjb / 2 ,angle + 180)
arena_right.image_xscale = smjb / 2
arena_right.image_yscale = height / 2
arena_right.image_angle = angle + 180

arena_up.x = x + lengthdir_x(height / 2 + smjb / 2 ,angle + 90)
arena_up.y = y + lengthdir_y(height / 2 + smjb / 2 ,angle + 90)
arena_up.image_xscale = smjb / 2
arena_up.image_yscale = width / 2
arena_up.image_angle = angle + 90

arena_down.x = x + lengthdir_x(height / 2 + smjb / 2 ,angle + 270)
arena_down.y = y + lengthdir_y(height / 2 + smjb / 2 ,angle + 270)
arena_down.image_xscale = smjb / 2
arena_down.image_yscale = width / 2
arena_down.image_angle = angle + 270
image_xscale = width/2
image_yscale = height/2
/*
arena_coll.x = x 
arena_coll.y = y 
arena_coll.image_xscale = width / 2 - 16
arena_coll.image_yscale = height / 2 - 16
arena_coll.image_angle = angle

if coll {
	for(var i=0;i<array_length(_colls);i++)
	{
		var a = _colls[i]
		a.canin = false
	}
}
else
{
	for(var i=0;i<array_length(_colls);i++)
	{
		var a = _colls[i]
		a.canin = true
	}
}
*/
arena = 
{
	x : x,
	y : y,
	width : width,
	height : height,
	angle : angle
}
