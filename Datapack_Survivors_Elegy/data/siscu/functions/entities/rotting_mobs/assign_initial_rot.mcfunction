tag @s add rot_checked

scoreboard players set random_min siscu.volatile 0
scoreboard players operation random_max siscu.volatile = rotting_random_limit siscu.integer
function siscu:technical/server_mode_alternate_randomiser
scoreboard players operation @s siscu.rotting_mob = server_randN siscu.volatile

#execute if predicate siscu:utils/is_baby run scoreboard players reset @s siscu.rotting_mob