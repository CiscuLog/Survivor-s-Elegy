tag @s remove siscu.item_frame_invisible

data merge entity @s {Invisible: 0b}

execute at @s[type=item_frame] run playsound minecraft:entity.item_frame.rotate_item player @a ~ ~ ~
execute at @s[type=glow_item_frame] run playsound minecraft:entity.glow_item_frame.rotate_item player @a ~ ~ ~

execute at @s run particle bubble_pop ^ ^ ^0.05 0 0 0 0 1