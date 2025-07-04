
tag @s add siscu.shutters_moving

data merge entity @s {Item:{components:{"minecraft:item_model":"siscu_se:shutters"}},ItemRotation: 0b}

# sound
execute run playsound siscu_se:block.shutters.sound master @a ~ ~ ~ 1 0.7

# return if horizontal
execute if predicate siscu:entities/item_frame/is_horizontal run return 0

# expand to other shutters
execute positioned ~ ~1 ~ as @n[type=item_frame,distance=..0.5,predicate=siscu:entities/item_frame/rolled_shutters,tag=!siscu.shutters_moving] run function siscu:entities/item_frame/shutters/unroll_shutters
execute positioned ~ ~-1 ~ as @n[type=item_frame,distance=..0.5,predicate=siscu:entities/item_frame/rolled_shutters,tag=!siscu.shutters_moving] run function siscu:entities/item_frame/shutters/unroll_shutters
execute positioned ^-1 ^ ^ as @n[type=item_frame,distance=..0.5,predicate=siscu:entities/item_frame/rolled_shutters,tag=!siscu.shutters_moving] run function siscu:entities/item_frame/shutters/unroll_shutters
execute positioned ^1 ^ ^ as @n[type=item_frame,distance=..0.5,predicate=siscu:entities/item_frame/rolled_shutters,tag=!siscu.shutters_moving] run function siscu:entities/item_frame/shutters/unroll_shutters

# comparator update
execute positioned ^ ^ ^-2 if block ~ ~ ~ comparator run function siscu:entities/item_frame/shutters/update_comparator {OutputSignal:1}

tag @s remove siscu.shutters_moving
