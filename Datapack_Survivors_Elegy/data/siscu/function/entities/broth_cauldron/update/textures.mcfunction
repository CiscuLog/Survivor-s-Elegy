
# set broth color
## broth ready
execute if score @s siscu.broth_temperature matches 100.. run data modify entity @e[type=item_display,tag=siscu.broth_water,limit=1,sort=nearest] item.components."minecraft:dyed_color".rgb set value 10968102
## broth cooking
execute unless score @s siscu.broth_temperature matches 100.. run data modify entity @e[type=item_display,tag=siscu.broth_water,limit=1,sort=nearest] item.components."minecraft:dyed_color".rgb set value 9986410
## if there's no food, set to blue
execute if score food siscu.broth_data matches ..100 run data modify entity @e[type=item_display,tag=siscu.broth_water,limit=1,sort=nearest] item.components."minecraft:dyed_color".rgb set value 5003235

# display bubbles
#execute positioned ~ ~1 ~ run particle cloud
# set water broth level
execute if score broth_level siscu.broth_data matches 0 as @e[type=item_display,tag=siscu.broth_water,limit=1,sort=nearest] run return run data merge entity @s {transformation:{translation:[0.0,0.0,0.0],scale:[1.0,0.1,1.0]}}
execute if score broth_level siscu.broth_data matches 1 as @e[type=item_display,tag=siscu.broth_water,limit=1,sort=nearest] run return run data merge entity @s {transformation:{translation:[0.0,0.35,0.0],scale:[1.0,0.1,1.0]}}
execute if score broth_level siscu.broth_data matches 2 as @e[type=item_display,tag=siscu.broth_water,limit=1,sort=nearest] run return run data merge entity @s {transformation:{translation:[0.0,0.53,0.0],scale:[1.0,0.1,1.0]}}
execute if score broth_level siscu.broth_data matches 3 as @e[type=item_display,tag=siscu.broth_water,limit=1,sort=nearest] run return run data merge entity @s {transformation:{translation:[0.0,0.7,0.0],scale:[1.0,0.15,1.0]}}