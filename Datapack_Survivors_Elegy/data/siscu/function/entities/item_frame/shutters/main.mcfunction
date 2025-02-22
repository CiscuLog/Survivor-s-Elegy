## rolling
execute if entity @s[tag=siscu.shutters_moving] run return run function siscu:entities/item_frame/shutters/interrupt

## unrolled
execute if predicate siscu:entities/item_frame/unrolled_shutters if predicate siscu:entities/item_frame/is_not_unrolled at @s run function siscu:entities/item_frame/shutters/roll_shutters
## rolled
execute if predicate siscu:entities/item_frame/rolled_shutters if predicate siscu:entities/item_frame/is_not_rolled at @s run function siscu:entities/item_frame/shutters/unroll_shutters

schedule function siscu:entities/item_frame/shutters/moving_schedule 1t
