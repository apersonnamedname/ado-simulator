spawn_time = max(60 * spawn_time * global.spawn_percent, 1);
alarm[0] = spawn_time;
amount_to_spawn = amount_to_spawn - 1;