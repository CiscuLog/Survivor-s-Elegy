# fix item orientation if the frame is on a wall
execute unless predicate siscu:entities/item_frame/is_horizontal run return run data merge entity @s {ItemRotation: 0b}

# else, move an extra 45º
execute if entity @s[nbt={ItemRotation: 1b}] run return run data merge entity @s {ItemRotation: 2b}
execute if entity @s[nbt={ItemRotation: 3b}] run return run data merge entity @s {ItemRotation: 4b}
execute if entity @s[nbt={ItemRotation: 5b}] run return run data merge entity @s {ItemRotation: 6b}
execute if entity @s[nbt={ItemRotation: 7b}] run return run data merge entity @s {ItemRotation: 0b}

# fallback (should never fire)
# new but also worse method
# advance an extra 45º
execute store result score x siscu.volatile run data get entity @s ItemRotation
scoreboard players add x siscu.volatile 1
execute store result score y siscu.volatile run scoreboard players operation x siscu.volatile %= 8 siscu.integer
execute store result entity @s ItemRotation byte 1 run scoreboard players get x siscu.volatile
# snap to closest previous 90º angle
scoreboard players operation y siscu.volatile %= 2 siscu.integer
execute if score y siscu.volatile matches 0 run return 1
scoreboard players remove y siscu.volatile 1
execute store result entity @s ItemRotation byte 1 run scoreboard players get y siscu.volatile
