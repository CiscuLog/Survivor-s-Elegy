# fix item orientation if the frame is on a wall
execute unless predicate siscu:entities/item_frame/is_horizontal run data merge entity @s {ItemRotation: 0b}

# else, snap to the closest 90º angle, biased to upper values
execute if entity @s[nbt={ItemRotation: 1b}] run return run data merge entity @s {ItemRotation: 2b}
execute if entity @s[nbt={ItemRotation: 3b}] run return run data merge entity @s {ItemRotation: 4b}
execute if entity @s[nbt={ItemRotation: 5b}] run return run data merge entity @s {ItemRotation: 6b}
execute if entity @s[nbt={ItemRotation: 7b}] run return run data merge entity @s {ItemRotation: 0b}
return 0

# new but maybe not better method
execute store result score x siscu.volatile run data get entity @s ItemRotation
scoreboard players add x siscu.volatile 1
scoreboard players operation x siscu.volatile %= 8 siscu.integer
execute store result entity @s ItemRotation byte 1 run scoreboard players get x siscu.volatile
return 1