## Lightning arc effect

# return if arrived to destination
execute positioned ~ ~-0.8 ~ if entity @e[tag=discharging,distance=..1] run return 0

# particles
scoreboard players add N siscu.volatile 1

particle minecraft:electric_spark ~ ~-0.5 ~ 0 0 0 0.1 1 force
execute positioned ^ ^ ^0.1 run particle minecraft:electric_spark ~ ~-0.5 ~ 0 0 0 0.1 1 force
execute positioned ^ ^ ^0.2 run particle minecraft:electric_spark ~ ~-0.5 ~ 0 0 0 0.1 1 force
execute positioned ^ ^ ^0.3 run particle minecraft:electric_spark ~ ~-0.5 ~ 0 0 0 0.1 1 force

# exit if it's too far
execute if score N siscu.volatile matches 334.. run return 0

# bend lightning
execute store result storage siscu:volatile x byte 1 run random value -40..40
execute store result storage siscu:volatile y byte 1 run random value -40..40

execute if predicate siscu:utils/25_percent run particle soul_fire_flame ~ ~-0.5 ~ 0 0 0 0 1 force

execute positioned ^ ^ ^0.4 facing entity @n[tag=discharging] eyes run return run function siscu:entities/guardian/zap_effect_bend with storage siscu:volatile