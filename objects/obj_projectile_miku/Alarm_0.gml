if (projectiles_left > 0) {
	projectiles_left--;
	instance_create_layer(x, y, "Instances", obj_projectile_beam);
	alarm[0] = 30;
}
else {
	instance_destroy(self);
}