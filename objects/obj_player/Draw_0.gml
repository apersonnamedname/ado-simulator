draw_self();
if (reload > 0)
{
	draw_hp_bar(reload, global.weapons[global.current_weapon].cooldown, c_aqua, 125, 40, x - 40, y -100);
}