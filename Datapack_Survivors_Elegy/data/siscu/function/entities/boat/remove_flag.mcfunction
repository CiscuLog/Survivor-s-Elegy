execute as @e[type=item_display,tag=resolved,tag=boat_flag] unless predicate siscu:entities/is_riding_boat at @s run function siscu:entities/boat/kill_flag
execute if entity @e[type=item_display,tag=boat_flag] run schedule function siscu:entities/boat/remove_flag 2s