//for shooting multiple projectiles
if (projectiles_left > 0)
{
	projectiles_left--;
	instance_create_layer(x, y, "Instances", global.weapons[global.current_weapon].object);
	alarm[0] = 10;
}