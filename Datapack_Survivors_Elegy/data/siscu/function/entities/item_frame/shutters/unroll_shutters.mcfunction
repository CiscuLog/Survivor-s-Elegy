scoreboard players add @s siscu.volatile 1
tag @s add siscu.shutters_moving
tag @s remove siscu.shutters_unrolling

data merge entity @s {Item:{components:{"minecraft:item_model":"siscu_se:shutters"}},ItemRotation: 0b, Fixed:1b}

# sound
execute run playsound siscu_se:block.shutters.sound master @a ~ ~ ~ 1 0.7

# return if horizontal
execute if predicate siscu:entities/item_frame/is_horizontal run return 0

# expand to other shutters
execute positioned ~ ~1 ~ as @n[type=item_frame,distance=..0.5,predicate=siscu:entities/item_frame/rolled_shutters,tag=!siscu.shutters_rolling,tag=!siscu.shutters_moving] run tag @s add siscu.shutters_unrolling
execute positioned ~ ~-1 ~ as @n[type=item_frame,distance=..0.5,predicate=siscu:entities/item_frame/rolled_shutters,tag=!siscu.shutters_rolling,tag=!siscu.shutters_moving] run tag @s add siscu.shutters_unrolling
execute positioned ^-1 ^ ^ as @n[type=item_frame,distance=..0.5,predicate=siscu:entities/item_frame/rolled_shutters,tag=!siscu.shutters_rolling,tag=!siscu.shutters_moving] run tag @s add siscu.shutters_unrolling
execute positioned ^1 ^ ^ as @n[type=item_frame,distance=..0.5,predicate=siscu:entities/item_frame/rolled_shutters,tag=!siscu.shutters_rolling,tag=!siscu.shutters_moving] run tag @s add siscu.shutters_unrolling

# schedule
schedule function siscu:entities/item_frame/shutters/unroll_shutters_schedule 1t
