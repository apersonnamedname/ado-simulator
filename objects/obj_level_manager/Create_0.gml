create_spawner = function(_spawn_amount, _obj_array, _time)
{
	var spawner = instance_create_layer(0, 0, "Instances", obj_onion_spawner, {
		amount_to_spawn : _spawn_amount,
		objects : _obj_array,
		spawn_time : _time});
}

alarm[0] = 60;