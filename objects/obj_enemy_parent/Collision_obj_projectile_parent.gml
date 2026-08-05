if (other != obj_projectile_beam)
{
	hp = hp - global.weapons[global.current_weapon].damage;
}
else
{
	hp = hp - 3;
}

instance_destroy(other);

if (hp <= 0)
{
	global.player_kills = global.player_kills + 1;
	global.onion_remain = global.onion_remain - 1;
	
	var _coin = irandom_range(min_coin, max_coin);
	for (var i = 0; i < _coin; i++)
	{
		instance_create_layer((display_get_gui_width() * random_range(0.3, 0.7)), (display_get_gui_height() * random_range(0.3, 0.7)), "Instances", obj_coin);
	}
	
	if (global.onion_remain == 0)
	{
		global.is_fighting = false;
		instance_create_layer((display_get_gui_width() * random_range(0.3, 0.7)), (display_get_gui_height() * random_range(0.3, 0.7)), "Instances", obj_next_level);
		instance_create_layer((display_get_gui_width() * random_range(0.3, 0.7)), (display_get_gui_height() * random_range(0.3, 0.7)), "Instances", obj_shop_enter);
	}
	
	instance_destroy(self);
}