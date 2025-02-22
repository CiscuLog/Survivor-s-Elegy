
scoreboard players reset @s siscu.volatile
tag @s remove siscu.shutters_moving
data merge entity @s[type=item_frame] {Fixed:0b}
execute at @s run stopsound @a[distance=..16] * entity.item_frame.add_item
