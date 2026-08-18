move_speed = 5;
tilemap = layer_tilemap_get_id("Tiles_Collide");
reload = 0;
projectiles_left = 0;

function create_projectile()
{
	instance_create_layer(x, y, "Instances", global.weapons[global.current_weapon].object);
}