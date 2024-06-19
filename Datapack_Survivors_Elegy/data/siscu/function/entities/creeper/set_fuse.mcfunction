
execute store result storage siscu:volatile min int 1 run scoreboard players get creeper_min siscu.integer
execute store result storage siscu:volatile max int 1 run scoreboard players get creeper_max siscu.integer
function siscu:technical/randomiser with storage siscu:volatile

execute store result entity @s Fuse int 1 run scoreboard players get random siscu.volatile