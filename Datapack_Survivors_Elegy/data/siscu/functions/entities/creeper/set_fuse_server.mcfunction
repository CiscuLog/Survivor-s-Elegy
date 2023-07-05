
scoreboard players operation random_min siscu.volatile = creeper_min siscu.integer
scoreboard players operation random_max siscu.volatile = creeper_max siscu.integer

function siscu:technical/server_mode_alternate_randomiser
scoreboard players operation creeper_fuse siscu.volatile = server_randN siscu.volatile