execute unless entity @s[distance=..0.5] facing entity @s eyes positioned ^ ^ ^0.25 run function siscu:entities/allay/raycast
execute if predicate siscu:utils/50_percent run return 0
particle wax_off ~ ~ ~