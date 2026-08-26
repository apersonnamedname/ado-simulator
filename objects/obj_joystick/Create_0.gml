joy_x = 0;
joy_y = 0;

move_x = 0;
move_y = 0;

using = false;
max_radius = 300;

info = os_get_info();

if (!(os_type == os_gxgames && info[? "mobile"] == 1.0))
{
	instance_destroy(self);
}