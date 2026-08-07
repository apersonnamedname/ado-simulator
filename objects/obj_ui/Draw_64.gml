switch (room)
{
	case room_onion:
		draw_text_transformed(0, 0, "Onions skins: " + string(global.player_kills), SCALER.text_size, SCALER.text_size, 0);
		draw_text_transformed(0, SCALER.spacing, "Level: " + string(global.level), SCALER.text_size, SCALER.text_size, 0);
		draw_text_transformed(0, SCALER.spacing * 2, "Gyaru coins: " + string(global.money), SCALER.text_size, SCALER.text_size, 0);
		break;
	case room_shop:
		draw_text_transformed(0, 0, "Onions skins: " + string(global.player_kills), SCALER.text_size, SCALER.text_size, 0);
		draw_text_transformed(0, SCALER.spacing, "Gyaru coins: " + string(global.money), SCALER.text_size, SCALER.text_size, 0);
		draw_text_transformed(0, SCALER.spacing * 2, "Equipped: " + global.weapons[global.current_weapon].name, SCALER.text_size, SCALER.text_size, 0);
		break;
}