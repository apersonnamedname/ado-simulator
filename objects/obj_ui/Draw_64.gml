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

switch (room)
{
	case room_onion:
		draw_text_transformed(0, 0, "Onions skins: " + string(global.player_kills), text_size, text_size, 0);
		draw_text_transformed(0, spacing, "Level: " + string(global.level), text_size, text_size, 0);
		draw_text_transformed(0, spacing * 2, "Gyaru coins: " + string(global.money), text_size, text_size, 0);
		break;
	case room_shop:
		draw_text_transformed(0, 0, "Onions skins: " + string(global.player_kills), text_size, text_size, 0);
		draw_text_transformed(0, spacing, "Equipped: " + global.weapons[global.current_weapon].name, text_size, text_size, 0);
		break;
}