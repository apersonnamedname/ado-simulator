//next level stuff
randomise(); //make seeds more random
global.level = global.level + 1; //increase level
global.is_fighting = true;
var index = 0;

if (LEVEL == 1){ //1, 10 total
	index = 0;
}
else if (LEVEL <= 5){ //2-5, 90 total
	index = 1;
}
else if (LEVEL <= 8){ //6-8 165 total
	index = 2;
}
else if (LEVEL <= 11){ //9-11 255 total
	index = 3;
}
else {
	//this is like the default final levels to avoid crashes due to forgetfulness
	index = array_length(TYPE) - 1;
}

//sets the spawn rate and onion types for the next level
REMAINING = TYPE[index].amount;
create_spawner(REMAINING, TYPE[index].onion_objects, TYPE[index].time);

//using spawner as a variable, you can modify which onions can spawn later using switch statements or smth does it look like i know
//yooo thank you past carly for this tip i forgot