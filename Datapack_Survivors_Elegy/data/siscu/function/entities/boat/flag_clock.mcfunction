execute as @e[type=item_display,tag=siscu.fixed,tag=siscu.boat_flag] unless predicate siscu:entities/is_riding_boat on passengers at @s run function siscu:entities/boat/kill_flag
execute as @e[type=item_display,tag=siscu.boat_flag] run function siscu:entities/boat/flag_rotation
execute if entity @e[type=item_display,tag=siscu.boat_flag] run schedule function siscu:entities/boat/flag_clock 10t