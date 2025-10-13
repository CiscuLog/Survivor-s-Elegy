# store data

# put scoreboard data in a storage
execute store result storage siscu:volatile BrothCauldronData.broth_food int 1 run scoreboard players get broth_food siscu.broth_data
execute store result storage siscu:volatile BrothCauldronData.broth_saturation int 1 run scoreboard players get broth_saturation siscu.broth_data
execute store result storage siscu:volatile BrothCauldronData.broth_level int 1 run scoreboard players get broth_level siscu.broth_data

# remove data if it's empty
execute if score broth_level siscu.broth_data matches ..0 run data merge storage siscu:volatile {BrothCauldronData:{broth_food:0,broth_saturation:0,effects:[],food_effects:[]}}

# copy storage data to interaction
execute if score broth_level siscu.broth_data matches 0 run data merge storage siscu:volatile {BrothCauldronData:{effects:[]}}
data modify entity @s data set from storage siscu:volatile BrothCauldronData

# force broth level
execute if block ~ ~ ~ powder_snow_cauldron run return 1
execute if score broth_level siscu.broth_data matches 0 at @s run setblock ~ ~ ~ cauldron
execute if score broth_level siscu.broth_data matches 1 at @s run setblock ~ ~ ~ water_cauldron[level=1]
execute if score broth_level siscu.broth_data matches 2 at @s run setblock ~ ~ ~ water_cauldron[level=2]
execute if score broth_level siscu.broth_data matches 3 at @s run setblock ~ ~ ~ water_cauldron[level=3]

# update textures
execute at @s run function siscu:blocks/broth_cauldron/update/textures

# remove all potion data if there's no broth
execute unless score broth_level siscu.broth_data matches 0 run return 1
tag @s remove siscu.broth_potion
tag @s remove siscu.broth_invisibility
