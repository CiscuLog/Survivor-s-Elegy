tag @s add rot_checked

execute if predicate siscu:utils/75_percent run scoreboard players operation @s siscu.rotting_mob += 2 siscu.integer
execute if predicate siscu:utils/75_percent run scoreboard players operation @s siscu.rotting_mob += 3 siscu.integer
execute if predicate siscu:utils/75_percent run scoreboard players operation @s siscu.rotting_mob += 5 siscu.integer
execute if predicate siscu:utils/75_percent run scoreboard players operation @s siscu.rotting_mob += 7 siscu.integer

scoreboard players operation @s siscu.rotting_mob %= rotting_random_limit siscu.integer

#execute if predicate siscu:utils/is_baby run scoreboard players reset @s siscu.rotting_mob