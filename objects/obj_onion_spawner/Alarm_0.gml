var ran_x = irandom_range(300, 1800);	//used to avoid spawns getting stuck on tilemap
var ran_y = irandom_range(300, 1800);
var random_num = irandom_range(0, (array_length(objects) - 1));

instance_create_layer(ran_x, ran_y, "Instances", objects[random_num]);

if (amount_to_spawn > 0)
{
	alarm[0] = 60 * spawn_time;
	amount_to_spawn = amount_to_spawn - 1;
}
else if (amount_to_spawn == 0)
{
	instance_destroy(self);
}