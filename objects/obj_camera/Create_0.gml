base_width = 2048;
base_height = 2048;

var _max_h_scale = display_get_height() / base_height;
var _max_w_scale = display_get_width() / base_width;

//if (frac(_max_h_scale) == 0)
//{
	//_max_h_scale--;
//}

window_scale = (min(_max_h_scale, _max_w_scale));
window_set_size(base_width * window_scale, base_height * window_scale);
window_center();

surface_resize(application_surface, round(base_width * window_scale), round(base_height * window_scale));
display_set_gui_size(base_width, base_height);