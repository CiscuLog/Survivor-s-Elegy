
data merge entity @s {height:0.5}
execute on passengers store result entity @s transformation.translation[1] float -1 run data get entity @n[type=interaction,tag=siscu.player_corpse] height

execute on passengers store result entity @s Rotation[1] float 0.1 run random value -10..10
execute on passengers store result entity @s Rotation[0] float 1 run random value -180..180

execute if entity @s[tag=siscu.skeleton_model] on passengers run data modify entity @s[type=item_display] item.components."minecraft:custom_model_data".strings[1] set value "skeleton"
execute if entity @s[tag=siscu.infected_model] on passengers run return run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "infected"
execute if entity @s[tag=siscu.zombie_model] on passengers run return run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "zombie"
execute if entity @s[tag=siscu.skeleton_model] on passengers run return run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "skeleton"
execute on passengers run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "player"