scoreboard players add N siscu.volatile 1
scoreboard players operation N2 siscu.volatile = N siscu.volatile
scoreboard players operation N2 siscu.volatile %= 3 siscu.integer
execute if score N2 siscu.volatile matches 0 if predicate siscu:utils/25_percent run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force

particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.1 1 force
execute positioned ~ ~-0.8 ~ if entity @e[tag=discharging,distance=..1] run return 0
execute if score N siscu.volatile matches 1000.. run return 0
execute if score N2 siscu.volatile matches 0 facing entity @p[tag=discharging] eyes run function siscu:items/passive_behav/discharge_effect_bend with storage siscu:volatile
execute unless score N2 siscu.volatile matches 0 positioned ^ ^ ^0.1 run function siscu:items/passive_behav/discharge_effect