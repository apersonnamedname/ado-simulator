x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (instance_exists(obj_joystick) && obj_joystick.using)
{
	_hor = obj_joystick.move_x / obj_joystick.max_radius;
	_ver = obj_joystick.move_y / obj_joystick.max_radius;
	shoot();
}

move_and_collide(_hor * move_speed, _ver * move_speed, 0);




image_angle = point_direction(x, y, mouse_x, mouse_y);

if (reload > 0)
{
	reload--;
}

if (mouse_check_button_pressed(mb_left))
{
	shoot();
}