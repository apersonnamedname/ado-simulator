var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (instance_exists(obj_joystick) && obj_joystick.using)
{
	_hor = obj_joystick.move_x / obj_joystick.max_radius;
	_ver = obj_joystick.move_y / obj_joystick.max_radius;
	shoot();
}

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);

if (x < 200)
{
	x = 250;
}

if (y < 200)
{
	y = 250;
}

if (x > 1800)
{
	x = 1750;
}

if (y > 1800)
{
	y = 1750;
}


image_angle = point_direction(x, y, mouse_x, mouse_y);

if (reload > 0)
{
	reload--;
}

if (mouse_check_button_pressed(mb_left))
{
	shoot();
}