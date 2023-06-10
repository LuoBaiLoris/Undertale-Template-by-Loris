enum Input_Dir
{
	Up = vk_up,
	Down = vk_down,
	Left = vk_left,
	Right = vk_right
}
enum Dir
{
	Up = 180,
	Down = 0,
	Left = 270,
	Right = 90
}

enum SoulMode
{
	Red = 0,
	Blue = 1,
	Slam = 2
}
enum Button
{
	Fight = 0,
	Act = 1,
	Item = 2,
	Mercy = 3
}
enum STATE
{
	ButtonSelect = 0,
	FightChoice = 1,
	Attacking = 2,
	EnemyHurt = 3,
	ActChoice = 4,
	ActChoice_Action = 5,
	ActMenuDialog = 6,
	ItemChoice = 7,
	ItemMenuDialog = 8,
	MercyChoice = 9,
	MercyMenuDialog = 10,
	EnemyDialog = 11,
	Defing = 12,
	None = 13
}
enum Color
{
	Normal = 0,
	Blue = 1,
	Orange = 2,
	Green = 3,
	Red = 4
}
function COLOR_SWITCH()
{
	switch color
	{
		case 0:
			return c_white
		break
		case 1:
			return make_color_rgb(0,162,232)
		break
		case 2:
			return make_color_rgb(255,154,34)
		break
		case 3:
			return make_color_rgb(0,162,232)
		break
		case 4:
			return make_color_rgb(255,0,0)
		break
	}
}
enum DEPTH
{
	Bottom=-10000,
	UI=-20000,
	Enemy=-30000,
	Bullet_Bottom=-40000,
	Arena=-50000,
	Arena_Sur=-60000,
	Player=-70000,
	Bullet_Top=-80000,
	Text=-90000,
	Top=-100000,
	Surface=-110000
};
enum Anim_Type
{
	Null,
	Up = 180,
	Down = 0,
	Left = 270,
	Right = 90,
	LeftUp = 225,
	LeftDown = 315,
	RightUp = 135,
	RightDown = 45,
	Blade = 11
}