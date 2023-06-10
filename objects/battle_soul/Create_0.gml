if (live_call()) return live_result;
sprite_index = spr_battle_soul
image_angle = 0
draw_angle = 0
alarm[1] = 6	
canmove = 1
SPD=2
SPD_v1 = 0.1
SPD_v2 = 1/SPD_v1
SPD=(keyboard_check(ord("X")) ? SPD/2 : SPD);
_touchdown = instance_create_depth(x,y,DEPTH.Player,battle_soul_touchdown)
coll = instance_create_depth(x,y,DEPTH.Player,battle_soul_coll)

color = c_red
mode = SoulMode.Red
// RedSoul Variable

// Global Variable

// BlueSoul Variable
fall = false
canjump = true
jumping = false
jumpspeed = 5.5
fallspeed = 0

// BlueOrangeSoul Variable

// OrangeSoul Variable

// GreenSoul Variable
angle = image_angle
function x_y(_x,_y)
{
	x = _x
	y = _y
}
function x_y_angle(_x,_y,_angle)
{
	x = _x
	y = _y
	angle = _angle
}
IsHurting = false
Hurt_Time = 30

slamspd = 10
slamsp = 10
slamgra = 0.5
slam = false
slamsnd = true
slamtimer = -1