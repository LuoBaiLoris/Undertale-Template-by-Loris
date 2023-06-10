/// @description Insert description here
// You can write your code in this editor
//_length = [1.0 + sin(timer*0.1)*1.0, 1.0 + sin(timer*0.1)*1.0];
if State.now == STATE.Defing||State.now == STATE.EnemyDialog||State.now == STATE.EnemyHurt
{
	var tryTimes=10000;
	while(place_meeting(x,y,battle_soul))
	{
		battle_soul.x+=lengthdir_x(0.1,180+image_angle);
		battle_soul.y+=lengthdir_y(0.1,180+image_angle);
		tryTimes-=1;
	}
}