#macro LEVEL global.level
#macro REMAINING global.onion_remain
#macro TYPE global.level_type
#macro SCALER obj_scaling_controller

global.player_kills = 0;
global.onion_remain = 20;
global.onion_multi = 1;
global.level = 0;
global.current_weapon = 0;
global.is_fighting = false;
global.money = 0;
global.is_html = false;
global.spawn_percent = 1.00;

//this is an array with structs containing weapon information
//cooldown is in frames, 60 = 1 second remeber
global.weapons = [
	{
		name: "default",
		damage: 1,
		cooldown: 30,
		object: obj_projectile_sing,
		cost: 0,
		owned: true
	},
	
	{
		name: "adocado",
		damage: 2,
		cooldown: 60,
		object: obj_projectile_avocado,
		cost: 50,
		owned: false
	},
	
	{
		name: "miku",
		damage: 3,
		cooldown: 120,
		object: obj_projectile_miku,
		cost: 250,
		owned: false
	}
];

global.level_type = [
	{
		amount: 10,
		onion_objects: [obj_yellow_onion],
		time: 1
	},
	{
		amount: 20,
		onion_objects: [obj_yellow_onion],
		time: 0.75
	},
	{
		amount: 25,
		onion_objects: [obj_yellow_onion, obj_yellow_onion, obj_yellow_onion, obj_red_onion],
		time: 0.5
	},
	{
		amount: 30,
		onion_objects: [obj_yellow_onion, obj_yellow_onion, obj_red_onion],
		time: 0.5
	},
	{
		amount: 50,
		onion_objects: [obj_yellow_onion, obj_red_onion],
		time: 0.5
	}
];