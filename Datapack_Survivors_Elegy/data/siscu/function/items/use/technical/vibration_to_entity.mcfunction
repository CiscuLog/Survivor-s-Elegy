
execute store result score x2 siscu.volatile run data get entity @s Pos[0]
execute store result score y2 siscu.volatile run data get entity @s Pos[1]
execute store result score z2 siscu.volatile run data get entity @s Pos[2]
execute store result storage siscu:volatile x int 1 run scoreboard players get x2 siscu.volatile
execute store result storage siscu:volatile y int 1 run scoreboard players get y2 siscu.volatile
execute store result storage siscu:volatile z int 1 run scoreboard players get z2 siscu.volatile
execute if block ~ ~ ~ bell run function siscu:technical/get_block_location
function siscu:items/use/technical/vibration_distance_calculation
function siscu:items/use/technical/vibration with storage siscu:volatile