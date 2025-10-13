
execute store result score food siscu.broth_data run data get entity @s data.broth_food

#set broth color
function siscu:blocks/broth_cauldron/update/water_color

# set water broth level
execute if block ~ ~ ~ water_cauldron[level=1] as @n[type=item_display,tag=siscu.broth_water] run return run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 1
execute if block ~ ~ ~ water_cauldron[level=2] as @n[type=item_display,tag=siscu.broth_water] run return run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 2
execute if block ~ ~ ~ water_cauldron[level=3] as @n[type=item_display,tag=siscu.broth_water] run return run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 3
execute as @n[type=item_display,tag=siscu.broth_water] run return run data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 0
