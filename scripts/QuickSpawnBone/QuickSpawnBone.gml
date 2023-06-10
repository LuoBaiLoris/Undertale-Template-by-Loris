function DownRBone(offset,length,spd,clr)
{
	var dest = 180
	if argument_count > 4 dest = argument[4]
	var are = global.Main_Arena
	return MakeBonePoint(are.x+are.width/2+10,are.y+are.height/2,0,length,clr,dest,spd,180,0,1)
}
function UpRBone(offset,length,spd,clr)
{
	var dest = 180
	if argument_count > 4 dest = argument[4]
	var are = global.Main_Arena
	return MakeBonePoint(are.x+are.width/2+10,are.y-are.height/2,180,length,clr,dest,spd,180,0,1)
}
function DownLBone(offset,length,spd,clr)
{
	var dest = 180
	if argument_count > 4 dest = argument[4]
	var are = global.Main_Arena
	return MakeBonePoint(are.x-are.width/2-10,are.y+are.height/2,0,length,clr,dest,spd,0,0,1)
}
function UpLBone(offset,length,spd,clr)
{
	var dest = 180
	if argument_count > 4 dest = argument[4]
	var are = global.Main_Arena
	return MakeBonePoint(are.x-are.width/2-10,are.y-are.height/2,180,length,clr,dest,spd,0,0,1)
}

function LeftUBone(offset,length,spd,clr)
{
	var dest = 180
	if argument_count > 4 dest = argument[4]
	var are = global.Main_Arena
	return MakeBonePoint(are.x-are.width/2,are.y-are.height/2-10,-90,length,clr,dest,spd,-90,0,0)
}
function RightUBone(offset,length,spd,clr)
{
	var dest = 180
	if argument_count > 4 dest = argument[4]
	var are = global.Main_Arena
	return MakeBonePoint(are.x+are.width/2,are.y-are.height/2-10,90,length,clr,dest,spd,-90,0,0)
}
function LeftDBone(offset,length,spd,clr)
{
	var dest = 180
	if argument_count > 4 dest = argument[4]
	var are = global.Main_Arena
	return MakeBonePoint(are.x-are.width/2,are.y+are.height/2+10,-90,length,clr,dest,spd,90,0,0)
}
function RightDBone(offset,length,spd,clr)
{
	var dest = 180
	if argument_count > 4 dest = argument[4]
	var are = global.Main_Arena
	return MakeBonePoint(are.x+are.width/2,are.y+are.height/2+10,90,length,clr,dest,spd,90,0,0)
}