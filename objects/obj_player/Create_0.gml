move_speed = 7;
tilemap = layer_tilemap_get_id("Tiles_Collide");
reload = 0;
projectiles_left = 0;

function create_projectile(_x = x, _y = y)
{
	instance_create_layer(_x, _y, "Instances", global.weapons[global.current_weapon].object);
}

function shoot()
{
	if (reload == 0)
	{
		switch(global.current_weapon)
		{
			case 0: //default singer
				audio_play_sound(sound_scream, 1, false);
				create_projectile();
				break;
			case 1: //adocado
				audio_play_sound(sound_gyaru, 1, false);
				projectiles_left = 3;
				alarm[0] = 1;
				break;
			case 2: //miku
				create_projectile(mouse_x, mouse_y);
				break;
			case 3: //celery
				create_projectile();
				break;
			case 4: //rose
				audio_play_sound(sound_ha, 1, false);
				create_projectile();
				break;
		}
		reload = global.weapons[global.current_weapon].cooldown;
	}
}