
# Updated the block and textures

# check and correct the water levels of a cauldron

execute unless block ~ ~ ~ #siscu:broth_cauldrons_allow_ladle run return run function siscu:blocks/broth_cauldron/update/kill
execute if block ~ ~ ~ powder_snow_cauldron run return 1
execute if block ~ ~ ~ cauldron run scoreboard players set cauldron_level siscu.broth_data 0
execute if block ~ ~ ~ water_cauldron[level=1] run scoreboard players set cauldron_level siscu.broth_data 1
execute if block ~ ~ ~ water_cauldron[level=2] run scoreboard players set cauldron_level siscu.broth_data 2
execute if block ~ ~ ~ water_cauldron[level=3] run scoreboard players set cauldron_level siscu.broth_data 3

execute store result score broth_level siscu.broth_data run data get entity @s data.broth_level

# textures
execute at @s run function siscu:blocks/broth_cauldron/update/textures

# return if the water level hasn't changed
execute if score cauldron_level siscu.broth_data = broth_level siscu.broth_data run return 1

# in case of wrong water level values, adjust the broth values
function siscu:blocks/broth_cauldron/update/get_data
execute if score cauldron_level siscu.broth_data < broth_level siscu.broth_data run function siscu:blocks/broth_cauldron/update/decrease_broth_properties
# half temperature if there's more water
execute if score cauldron_level siscu.broth_data > broth_level siscu.broth_data run scoreboard players operation @s siscu.broth_temperature /= 2 siscu.integer

# put in storage
execute store result storage siscu:volatile BrothCauldronData.broth_food int 1 run scoreboard players get broth_food siscu.broth_data
execute store result storage siscu:volatile BrothCauldronData.broth_saturation int 1 run scoreboard players get broth_saturation siscu.broth_data
scoreboard players operation broth_level siscu.broth_data = broth_level siscu.broth_data
execute store result storage siscu:volatile BrothCauldronData.broth_level int 1 run scoreboard players get broth_level siscu.broth_data
data modify entity @s data set from storage siscu:volatile BrothCauldronData

execute store result entity @s data.broth_level int 1 run scoreboard players get cauldron_level siscu.broth_data

# if there's still water, return 1
execute unless score cauldron_level siscu.broth_data matches 0 run return 1
# else, clear all
data modify entity @s data.effects set value []
data modify entity @s data.food_effects set value []
tag @s remove siscu.broth_potion
tag @s remove siscu.broth_invisibility
return 1