if (live_call()) return live_result;
Items = []
repeat 5
{
	a = instance_create_depth(x,y,0,Item_Test)
	array_insert(Items,array_length(Items),a)
}
instance_create_depth(0,0,0,Item_Heal)
instance_create_depth(0,0,0,Item_Hurt)
instance_create_depth(0,0,0,Item_Test)
instance_create_depth(0,0,0,Item_test_armor)
instance_create_depth(0,0,0,Item_test_weapon)