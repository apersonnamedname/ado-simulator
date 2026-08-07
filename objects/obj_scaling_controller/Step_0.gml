if (browser_width != width || browser_height != height) //if browser height or width doesn't match default
{
	width = browser_width
	height = browser_height
	window_set_size(width, height);
	display_set_gui_size(width, height);
	global.is_html = true;
}

if (global.is_html)
{
	scale =  browser_height / room_height ;
}
else
{
	scale = 1;
}

text_size = 5 * scale;
spacing = 100 * scale;