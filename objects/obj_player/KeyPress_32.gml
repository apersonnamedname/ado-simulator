if (reload == 0)
{
	switch(global.current_weapon)
	{
		case 0:
		case 2:
			instance_create_layer(x, y, "Instances", global.weapons[global.current_weapon].object);
		break;
		case 1:
			projectiles_left = 3;
			alarm[0] = 1;
	}
	reload = global.weapons[global.current_weapon].cooldown;
}