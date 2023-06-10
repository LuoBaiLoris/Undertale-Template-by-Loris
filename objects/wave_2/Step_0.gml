if (live_call()) return live_result;
	
timer ++
if timer == 10
{
	Slam(180)
}
if timer >= 10 && timer <= 600
{
	if T_S(60)
	{
		a= UpRBone(80,60,0,0,60*6)
		b= UpRBone(0,90,0,1,60*6)
		a.mask = 1
		b.mask = 1
		//a.destroy_time = 180
		//b.destroy_time = 180
		a.direction = 180
		b.direction = 180
		a.speed = 5
		b.speed = 5
		Anim_Create(a,"speed",0,0,5,-10,60,71)
		Anim_Create(b,"speed",0,0,5,-10,60,71)
	}
}
if timer == 780
{
	type = 0
}

if timer >= 780
{
	if T_S(60)
	{
		if type == 0
		{
			Slam(0)
			type = 1
		}
		else
		{
			Slam(180)
			type = 0
		}
	}
	if T_S(30)
	{
		a= UpRBone(0,65,3,choose(0,1),60*6)
		b= DownLBone(0,65,3,choose(0,2),60*6)
	}
	if T_S(45)
	{
		MakeBlade([battle_soul.x,battle_soul.y,90],30,10,10,10,0)
	}
}

if timer == 1200
{

	EndWave()
}