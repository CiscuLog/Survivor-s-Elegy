
return run tag @s remove siscu.shutters_moving
return 0

# Return if it's moving
execute if predicate siscu:entities/item_frame/rolled_shutters run return run data merge entity @s {Item:{components:{"minecraft:item_model":"siscu_se:shutters_rolled"}},ItemRotation: 4b, Fixed:0b}

execute if predicate siscu:entities/item_frame/unrolled_shutters run data merge entity @s {Item:{components:{"minecraft:item_model":"siscu_se:shutters"}},ItemRotation: 0b, Fixed:0b}