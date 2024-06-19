execute unless entity @e[type=marker,tag=siscu.noteblock_marker,distance=..1] positioned ^ ^ ^0.25 run function siscu:entities/allay/raycast
execute unless entity @s[tag=siscu.allay_binded] run return run particle wax_off ~ ~ ~
execute if predicate siscu:utils/50_percent run particle wax_on ~ ~ ~