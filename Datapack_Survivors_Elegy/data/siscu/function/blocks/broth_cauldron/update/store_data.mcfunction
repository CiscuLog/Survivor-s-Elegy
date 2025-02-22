# store data

# put scoreboard data in a storage
execute store result storage siscu:volatile BrothCauldronData.broth_food int 1 run scoreboard players get broth_food siscu.broth_data
execute store result storage siscu:volatile BrothCauldronData.broth_saturation int 1 run scoreboard players get broth_saturation siscu.broth_data
execute store result storage siscu:volatile BrothCauldronData.broth_level int 1 run scoreboard players get broth_level siscu.broth_data
## potion data
execute if score broth_level siscu.broth_data matches 0 run data merge storage siscu:volatile {BrothCauldronData:{effects:[{type:apply_effects,effects:[{id:"minecraft:water",amplifier:0, duration:0}]}]}}
execute store result storage siscu:volatile BrothCauldronData.effects[0].effects[0].duration int 1 run scoreboard players get potion_duration siscu.broth_data

# copy storage data to marker
data modify entity @s data set from storage siscu:volatile BrothCauldronData


# force broth level
execute if block ~ ~ ~ powder_snow_cauldron run return 1
execute if score broth_level siscu.broth_data matches 0 at @s run setblock ~ ~ ~ cauldron
execute if score broth_level siscu.broth_data matches 1 at @s run setblock ~ ~ ~ water_cauldron[level=1]
execute if score broth_level siscu.broth_data matches 2 at @s run setblock ~ ~ ~ water_cauldron[level=2]
execute if score broth_level siscu.broth_data matches 3 at @s run setblock ~ ~ ~ water_cauldron[level=3]

# remove all potion data if there's no broth
execute if score broth_level siscu.broth_data matches 0 run tag @s remove siscu.broth_potion
execute if score broth_level siscu.broth_data matches 0 run tag @s remove siscu.broth_invisibility

#tellraw @a {"storage": "siscu:volatile","nbt": "BrothCauldronData"}
