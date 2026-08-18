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
			create_projectile();
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