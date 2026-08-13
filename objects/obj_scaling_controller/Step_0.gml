if (os_browser == browser_not_a_browser)	//check if gx.games
{
	scale = 1;
	text_size = 5;
	spacing = 100;
}
else
{
	if (browser_width != width || browser_height != height) //if browser height or width doesn't match default
	{
		width = browser_width
		height = browser_height
		window_set_size(width, height);
		display_set_gui_size(width, height);
	}
	
	scale =  browser_height / room_height;
	global.is_html = true;
	text_size = 5 * scale;
	spacing = 100 * scale;
}