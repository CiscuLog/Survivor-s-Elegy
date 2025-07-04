
execute store result storage siscu:volatile min int 1 run scoreboard players get creeper_min siscu.integer
execute store result storage siscu:volatile max int 1 run scoreboard players get creeper_max siscu.integer
execute store result score random siscu.volatile run function siscu:technical/randomiser with storage siscu:volatile

execute if score random siscu.volatile matches 0 unless score creeper_min siscu.integer matches 0 run return run schedule function siscu:technical/load/safe_mode 1t

execute store result entity @s Fuse short 1 run scoreboard players get random siscu.volatile