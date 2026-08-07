//put code to check for pricey
if (global.money >= cost)
{
	global.money -= cost;
	amount_bought++;
	upgrade_effect();
	cost_increase();
}