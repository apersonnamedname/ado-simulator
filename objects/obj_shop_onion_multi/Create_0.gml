// Inherit the parent event
event_inherited();
text = "Double onions gained";
cost = 30;
current_effect = "Multiplier: 1x";
upgrade_effect = function()
{
	global.onion_multi *= 2;
	current_effect = "Multiplier: " + string(power(2, amount_bought));
}

cost_increase = function()
{
	cost *= 5;
}