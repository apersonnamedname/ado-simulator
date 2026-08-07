// Inherit the parent event
event_inherited();
text = "Reduce onion spawn rate by 5%";
current_effect = "Current: 100%";
cost = 10;
upgrade_effect = function()
{
	global.spawn_percent -= 0.05;
	current_effect = "Current: " + string(100 - (amount_bought * 5)) + "%";
}

cost_increase = function()
{
	cost *= 5;
}