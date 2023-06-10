if (live_call()) return live_result;
timer ++
if timer == 1
{
	Player_Heal(100)
	a = instance_create_depth(320,320,DEPTH.Bullet_Top,battle_bullet_bone2)
}
global.Main_Arena.x_y_angle(320,320,0)

if mouse_check_button_pressed(mb_left)
{
	MakeBlade([320,320,320],100,10,10,10)
	//CreateGB([0,0,-90],[320,320,30],30,100,[2,2],0)
	//instance_create_depth(mouse_x,mouse_y,DEPTH.Arena,battle_arena_sub)
}
if mouse_check_button_pressed(mb_right)
{
	Slam(irandom(3)*90)
	//SetSoulMode(SoulMode.Slam,choose(0,90,180,270),0,false)
}
if timer == 10
{
	battle_soul.mode = SoulMode.Blue
	battle_soul.angle = 0
}
if timer == 3200000
{
	global.Main_Arena.angle %= 360
	EndWave()
}