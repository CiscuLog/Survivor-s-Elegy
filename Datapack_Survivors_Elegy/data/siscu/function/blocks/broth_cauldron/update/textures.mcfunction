
# set broth color
## broth ready
execute if score @s siscu.broth_temperature matches 100.. run data modify entity @n[type=item_display,tag=siscu.broth_water] item.components."minecraft:dyed_color" set value 10968102
## broth cooking
execute unless score @s siscu.broth_temperature matches 100.. run data modify entity @n[type=item_display,tag=siscu.broth_water] item.components."minecraft:dyed_color" set value 9986410
## if there's no food, set to blue
execute if score food siscu.broth_data matches ..100 run data modify entity @n[type=item_display,tag=siscu.broth_water] item.components."minecraft:dyed_color" set value 5003235

# display bubbles
#execute positioned ~ ~1 ~ run particle cloud
# set water broth level
execute if score broth_level siscu.broth_data matches 0 as @n[type=item_display,tag=siscu.broth_water] run return run data merge entity @s {transformation:{translation:[0.0,0.0,0.0],scale:[1.0,0.1,1.0]}}
execute if score broth_level siscu.broth_data matches 1 as @n[type=item_display,tag=siscu.broth_water] run return run data merge entity @s {transformation:{translation:[0.0,0.35,0.0],scale:[1.0,0.1,1.0]}}
execute if score broth_level siscu.broth_data matches 2 as @n[type=item_display,tag=siscu.broth_water] run return run data merge entity @s {transformation:{translation:[0.0,0.53,0.0],scale:[1.0,0.1,1.0]}}
execute if score broth_level siscu.broth_data matches 3 as @n[type=item_display,tag=siscu.broth_water] run return run data merge entity @s {transformation:{translation:[0.0,0.7,0.0],scale:[1.0,0.15,1.0]}}