//sprite_index = spr_enemy
Name = "Enemy0"
HP = 100
HPMax = 100
ATK = 10
DEF = 10
EXP = 100
Actions = ["Check","Test1"]
Actions_Dialog = []
Actions_Dialog[0] = "{*}Enemy - ATK 10{wait:30} DEF 10{wait:30}@n{*}Test"
Actions_Dialog[1] = "{*}TESTING"
Actions_EnemyDialog = []
Actions_EnemyDialog[0] = "Check"
Actions_EnemyDialog[1] = "Test1"
array_insert(Battle.Enemys,array_length(Battle.Enemys),id)
x = 320
ArenaOffset = true
y_offset = 60
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

_x = 0
_y = 0
anim_timer = 0
anim_speed = 1

slam = false
slam_dir = Anim_Type.Null
slam_timer = 0
body_index = 0
head_index = 0
anim_speed = 5
slam_speed = 20

canslam = true
cananim = true

offset = 5
slam_timer_max = 30
sp_anim = false
sp_anim_type = 0
