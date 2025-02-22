
execute if entity @s[type=wolf] unless predicate siscu:entities/is_zombie_wolf run return 0

tag @s add siscu.rot_checked

data merge storage siscu:volatile {min:0}
execute store result storage siscu:volatile max int 1 run scoreboard players get rotting_random_limit siscu.integer
function siscu:technical/randomiser with storage siscu:volatile
scoreboard players operation @s siscu.rotting_mob = random siscu.volatile