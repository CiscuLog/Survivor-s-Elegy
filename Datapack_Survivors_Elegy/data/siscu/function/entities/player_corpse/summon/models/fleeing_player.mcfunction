

data merge entity @s {height:0.5}
execute on passengers store result entity @s transformation.translation[1] float -1 run data get entity @n[type=interaction,tag=siscu.player_corpse] height
execute on passengers store result entity @s Rotation[1] float 0.1 run random value -10..10

# Facing away from citadel (or a random cauldron, for this matter)
scoreboard players set x siscu.volatile 0
execute store success score x siscu.volatile on passengers at @s if predicate siscu:locations/check_infected_city facing entity @n[tag=siscu.broth_cauldron] eyes rotated ~ 40 run rotate @s facing ^ ^ ^-1
# If no cauldron found, random rotation
execute if score x siscu.volatile matches 0 on passengers store result entity @s Rotation[0] float 1 run random value -180..180

execute if predicate siscu:locations/infected_citadel run tag @s add siscu.corpse_infected

execute on passengers run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "fleeing"

execute if entity @s[tag=siscu.infected_model] on passengers run return run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "infected"
execute if entity @s[tag=siscu.zombie_model] on passengers run return run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "zombie"
execute if entity @s[tag=siscu.skeleton_model] on passengers run return run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "skeleton"
execute on passengers run data modify entity @s item.components."minecraft:custom_model_data".strings[1] set value "player"
