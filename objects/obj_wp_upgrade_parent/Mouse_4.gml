//check if player can afford weapon
if ((global.player_kills >= global.weapons[weapon_index].cost) && (global.weapons[weapon_index].owned == false))
{
	global.player_kills = global.player_kills - global.weapons[weapon_index].cost; //subtract cost
	global.current_weapon = weapon_index; //set current weapon to bought weapon
	global.weapons[global.current_weapon].owned = true;
}