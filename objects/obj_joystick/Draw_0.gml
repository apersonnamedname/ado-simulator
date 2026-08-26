if (!using) exit;

draw_set_alpha(0.5);
draw_circle(joy_x, joy_y, 50, c_black);

draw_set_alpha(0.3);
draw_circle(joy_x + move_x, joy_y + move_y, 30, c_black);

draw_set_alpha(1);