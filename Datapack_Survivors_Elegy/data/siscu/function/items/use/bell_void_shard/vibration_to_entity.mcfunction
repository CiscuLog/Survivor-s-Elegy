
execute store result score x2 siscu.volatile run data get entity @s Pos[0]
execute store result score y2 siscu.volatile run data get entity @s Pos[1]
execute store result score z2 siscu.volatile run data get entity @s Pos[2]

scoreboard players operation x siscu.volatile = x2 siscu.volatile
scoreboard players operation y siscu.volatile = y2 siscu.volatile
scoreboard players operation z siscu.volatile = z2 siscu.volatile
scoreboard players operation x siscu.volatile -= x1 siscu.volatile
scoreboard players operation y siscu.volatile -= y1 siscu.volatile
scoreboard players operation z siscu.volatile -= z1 siscu.volatile
execute store result storage siscu:volatile v_x float 1 run scoreboard players get x siscu.volatile
execute store result storage siscu:volatile v_y float 1 run scoreboard players get y siscu.volatile
execute store result storage siscu:volatile v_z float 1 run scoreboard players get z siscu.volatile
execute positioned 0 0 0 as @e[type=block_display,tag=siscu.distance_calculation,limit=1,distance=..5] run function siscu:technical/distance_calculation/macro with storage siscu:volatile
execute store result score d siscu.volatile run data get storage siscu:volatile d 1
execute store result storage siscu:volatile x double 1 run scoreboard players get x2 siscu.volatile
execute store result storage siscu:volatile y double 1 run scoreboard players get y2 siscu.volatile
execute store result storage siscu:volatile z double 1 run scoreboard players get z2 siscu.volatile
function siscu:items/use/bell_void_shard/vibration with storage siscu:volatile
