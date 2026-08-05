if (browser_width != width || browser_height != height) //if browser height or width doesn't match default
{
	width = browser_width
	height = browser_height
	window_set_size(width, height);
	display_set_gui_size(width, height);
	global.is_html = true;
}