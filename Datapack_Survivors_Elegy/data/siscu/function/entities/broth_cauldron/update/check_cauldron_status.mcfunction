
# check and correct the water levels of a cauldron

execute unless block ~ ~ ~ #siscu:broth_cauldrons_allow_ladle run return run function siscu:entities/broth_cauldron/update/kill
execute if block ~ ~ ~ cauldron run scoreboard players set x siscu.broth_data 0
execute if block ~ ~ ~ water_cauldron[level=1] run scoreboard players set x siscu.broth_data 1
execute if block ~ ~ ~ water_cauldron[level=2] run scoreboard players set x siscu.broth_data 2
execute if block ~ ~ ~ water_cauldron[level=3] run scoreboard players set x siscu.broth_data 3

execute store result score broth_level siscu.broth_data run data get entity @s data.broth_level

# textures
execute store result score food siscu.broth_data run data get entity @s data.broth_food
execute run function siscu:entities/broth_cauldron/update/textures

# return if the water level hasn't changed
execute if score broth_level siscu.broth_data = x siscu.broth_data run return 0

# in case of wrong water level values, adjust the broth values accordingly

#say inconsistent level update

function siscu:entities/broth_cauldron/update/get_data
execute if score x siscu.broth_data < broth_level siscu.broth_data run function siscu:entities/broth_cauldron/update/decrease_broth_properties

execute store result storage siscu:volatile BrothCauldronData.broth_food int 1 run scoreboard players get broth_food siscu.broth_data
data modify entity @s data.broth_food set from storage siscu:volatile BrothCauldronData.broth_food
execute store result storage siscu:volatile BrothCauldronData.broth_saturation int 1 run scoreboard players get broth_saturation siscu.broth_data
data modify entity @s data.broth_saturation set from storage siscu:volatile BrothCauldronData.broth_saturation
scoreboard players operation broth_level siscu.broth_data = x siscu.broth_data
execute store result storage siscu:volatile BrothCauldronData.broth_level int 1 run scoreboard players get broth_level siscu.broth_data
data modify entity @s data.broth_level set from storage siscu:volatile BrothCauldronData.broth_level

scoreboard players operation @s siscu.broth_temperature /= 2 siscu.integer

# if there's still water, return 1
execute unless score broth_level siscu.broth_data matches 0 run return 1
# else
tag @s remove siscu.broth_potion
tag @s remove siscu.broth_invisibility