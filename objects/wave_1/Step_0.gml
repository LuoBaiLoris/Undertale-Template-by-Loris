if (live_call()) return live_result;
	
timer ++
if timer == 0
{
	Slam(0)
} 
if timer >= 10
{
	if T_S(60)
	{
		DownLBone(0,30,random_range(1,3),0,60*6)
		DownRBone(0,30,random_range(1,3),0,60*6)

	}
	if T_S(90)
	{
		a= UpRBone(0,60,2,2,60*6)
		b= UpLBone(0,60,2,1,60*6)
		Anim_Create(a,"length",1,1,a.length,40,30,10+irandom(100))
		Anim_Create(b,"length",1,1,b.length,40,30,10+irandom(100))
	}
	if T_S(90)
	{
		MakeBlade([battle_soul.x,battle_soul.y,0],30,10,10,10,0)
	}
}

if timer == 880
{
	EndWave()
}