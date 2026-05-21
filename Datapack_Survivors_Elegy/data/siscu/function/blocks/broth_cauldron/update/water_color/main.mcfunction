

## if there's no food, set to invisible

execute if score food siscu.broth_data matches ..0 run return run data modify entity @n[type=item_display,tag=siscu.broth_water] item.components."minecraft:custom_model_data".flags set value [false]
data modify entity @n[type=item_display,tag=siscu.broth_water] item.components."minecraft:custom_model_data".flags set value [true]

## broth ready
execute if score @s siscu.broth_temperature matches 100.. if score food siscu.broth_data matches 100.. run return run data modify entity @n[type=item_display,tag=siscu.broth_water] item.components."minecraft:dyed_color" set value 10968102
## broth cooking
execute if score food siscu.broth_data matches 1.. run return run data modify entity @n[type=item_display,tag=siscu.broth_water] item.components."minecraft:dyed_color" set value 9986410