## rolling
execute if entity @s[tag=siscu.shutters_moving] run return run function siscu:entities/item_frame/shutters/interrupt

tag @s add siscu.shutters_moving
## unrolled
execute if predicate siscu:entities/item_frame/unrolled_shutters if predicate siscu:entities/item_frame/is_not_unrolled at @s run function siscu:entities/item_frame/shutters/roll_shutters
## rolled
execute if predicate siscu:entities/item_frame/rolled_shutters if predicate siscu:entities/item_frame/is_not_rolled at @s run function siscu:entities/item_frame/shutters/unroll_shutters
tag @s remove siscu.shutters_moving
