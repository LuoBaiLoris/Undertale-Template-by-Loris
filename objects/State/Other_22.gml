/// @description Defing
if (live_call()) return live_result;
if State_Start
{
	Battle.Wave_Count += 1
	battle_soul.canmove = true
	wave = instance_create_depth(x,y,DEPTH.Top,Battle.nextwave)
	//Player_Hurt(60,60,1,1)
}
State_Start = false
	
next = STATE.ButtonSelect