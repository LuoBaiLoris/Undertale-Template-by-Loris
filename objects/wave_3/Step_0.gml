if (live_call()) return live_result;
	
timer ++

if timer == 30
{
	Slam(0)
	
}
if timer >= 30 && timer <= 30000000
{
	if timer %45 == 0
	{
		if index == 0
		{
			index = 1
		}
		else
		{
			index = 0
		}
		if index == 0
		{
			var val = irandom_range(30,-30)
			DownLBone(0,65+val-20,2,0,1)
			UpLBone(0,65-val,2,0,1)
			
		}
		else
		{
			var val = irandom_range(30,-30)
			DownRBone(0,65+val-20,2,0,1)
			UpRBone(0,65-val,2,0,1)
		}
		MakeBlade([battle_soul.x,battle_soul.y,30],15,5,10,8,0)
		MakeBlade([battle_soul.x,battle_soul.y,-30],15,5,10,8,0)
		
		
	}
	if T_S(90)
	{
		AA_GB([320,0,360],[irandom_range(320-180,320+180),battle_soul.y-280,battle_soul.x,battle_soul.y],18,10,[0.5,2],2)
	}
	if T_S(90)
	{
		AA_GB([320,0,360],[irandom_range(320-180,320+180),battle_soul.y-280,battle_soul.x,battle_soul.y],18,10,[0.5,2],2)
	}
}

if timer == 900
{
	EndWave()
}