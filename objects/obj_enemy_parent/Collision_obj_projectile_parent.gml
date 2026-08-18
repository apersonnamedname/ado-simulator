audio_play_sound(sound_hit, 1, false);

if (other != obj_projectile_beam)
{
	hp = hp - global.weapons[global.current_weapon].damage;
}
else
{
	hp = hp - 3;
}

if (object_get_name(other.object_index) != "obj_projectile_rose")
{
	instance_destroy(other);
}

if (hp <= 0)
{
	instance_create_layer(x, y, "Instances", obj_explode);
	global.player_kills += (1 * global.onion_multi);
	global.onion_remain = global.onion_remain - 1;
	
	var _coin = irandom_range(min_coin, max_coin);
	for (var i = 0; i < _coin; i++)
	{
		create_random_location(obj_coin);
	}
	
	if (global.onion_remain == 0)
	{
		global.is_fighting = false;
		create_random_location(obj_shop_enter);
		create_random_location(obj_next_level);
	}
	
	instance_destroy(self);
}