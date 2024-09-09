
scoreboard players set min_food siscu.broth_data 100
#scoreboard players set min_saturation siscu.broth_data 200
scoreboard players operation min_food siscu.broth_data *= broth_level siscu.broth_data
#scoreboard players operation min_saturation siscu.broth_data *= broth_level siscu.broth_data

# fail if broth is mainly water or undercooked
execute if score broth_food siscu.broth_data < min_food siscu.broth_data run return 0
#execute if score broth_saturation siscu.broth_data < min_saturation siscu.broth_data run return 0
execute as @n[type=marker,tag=siscu.broth_interacting] if score @s siscu.broth_temperature matches ..99 run return 0

## serving data calculation
# set resulting broth nutrition values
# food = broth_food / broth_level
scoreboard players operation food siscu.broth_data = broth_food siscu.broth_data
execute unless items entity @s weapon.mainhand bucket run scoreboard players operation food siscu.broth_data /= broth_level siscu.broth_data
scoreboard players operation saturation siscu.broth_data = broth_saturation siscu.broth_data
execute unless items entity @s weapon.mainhand bucket run scoreboard players operation saturation siscu.broth_data /= broth_level siscu.broth_data

# potion values
scoreboard players operation serving_potion_duration siscu.broth_data = potion_duration siscu.broth_data
execute unless items entity @s weapon.mainhand bucket run scoreboard players operation serving_potion_duration siscu.broth_data /= broth_level siscu.broth_data

## cauldron data calculation
# set new cauldron broth nutrition values
scoreboard players operation broth_food siscu.broth_data -= food siscu.broth_data
scoreboard players operation broth_saturation siscu.broth_data -= saturation siscu.broth_data
scoreboard players operation potion_duration siscu.broth_data -= serving_potion_duration siscu.broth_data

# reduce broth level on the cauldron
execute if score broth_level siscu.broth_data matches 0 run return 0
execute if items entity @s weapon.mainhand bucket run scoreboard players remove broth_level siscu.broth_data 2
scoreboard players remove broth_level siscu.broth_data 1
execute unless score broth_level siscu.broth_data matches 0.. run return 0

# clamp broth nutrition values to 0 if the cauldron is emptied
execute if score broth_level siscu.broth_data matches ..0 run scoreboard players set broth_food siscu.broth_data 0
execute if score broth_level siscu.broth_data matches ..0 run scoreboard players set broth_saturation siscu.broth_data 0
execute if score potion_duration siscu.broth_data matches ..0 run scoreboard players set potion_duration siscu.broth_data 0

execute store result storage siscu:volatile broth_food int 0.01 run scoreboard players get food siscu.broth_data
execute store result storage siscu:volatile broth_saturation int 0.01 run scoreboard players get saturation siscu.broth_data
execute store result storage siscu:volatile BrothCauldronData.effects[0].effect.duration int 1 run scoreboard players get serving_potion_duration siscu.broth_data

## set resulting item
scoreboard players set x siscu.broth_data 1
execute if items entity @s weapon.mainhand bucket run scoreboard players set x siscu.broth_data 2
execute if items entity @s weapon.mainhand glass_bottle run scoreboard players set x siscu.broth_data 3

# summon broth
execute at @e[type=marker,tag=siscu.broth_interacting] run loot spawn ~ ~0.5 ~ loot siscu:items/food/broth_tech
# change broth data
execute as @e[type=item,predicate=siscu:items/broth/unset_broth] run function siscu:entities/broth_cauldron/update/store_serving_data with storage siscu:volatile
execute as @e[type=item,tag=siscu.unset_broth] if score has_potion siscu.broth_data matches 1 run data modify entity @s Item.components."minecraft:food".effects set from storage siscu:volatile BrothCauldronData.effects
tag @e[tag=siscu.unset_broth] remove siscu.unset_broth

# remove item and play effects
item modify entity @s[gamemode=!creative] weapon.mainhand siscu:decrease_1
execute at @e[type=marker,tag=siscu.broth_interacting] run function siscu:entities/broth_cauldron/effects/scoop

return 1
