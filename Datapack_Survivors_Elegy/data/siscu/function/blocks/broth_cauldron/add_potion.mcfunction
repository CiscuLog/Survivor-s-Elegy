
# return if it's not a water bottle
execute unless items entity @s weapon potion[potion_contents={potion:water}] run return 0

# return if the cauldron is full
execute if score broth_level siscu.broth_data matches 3 run return 0

# else, general water bottle behavior
scoreboard players add broth_level siscu.broth_data 1
item modify entity @s[gamemode=!creative] weapon.mainhand siscu:decrease_1
give @s[gamemode=!creative] glass_bottle
execute as @e[type=interaction,tag=siscu.broth_interacting] at @s run playsound item.bottle.empty block @a

# return if it's not a potion
scoreboard players set x siscu.volatile 0
execute if items entity @s weapon potion[potion_contents={potion:water}] as @e[type=interaction,tag=siscu.broth_interacting] run return run function siscu:blocks/broth_cauldron/update/store_data
execute if items entity @s weapon potion[potion_contents={potion:awkward}] as @e[type=interaction,tag=siscu.broth_interacting] run return run function siscu:blocks/broth_cauldron/update/store_data
execute if items entity @s weapon potion[potion_contents={potion:thick}] as @e[type=interaction,tag=siscu.broth_interacting] run return run function siscu:blocks/broth_cauldron/update/store_data
execute if items entity @s weapon potion[potion_contents={potion:mundane}] as @e[type=interaction,tag=siscu.broth_interacting] run return run function siscu:blocks/broth_cauldron/update/store_data

# potion stuff

# get potion type and its values

# store it to the cauldron data

# lower temperature, divides current temperature by 1/3
execute at @s as @n[type=interaction,tag=siscu.broth_interacting] if score @s siscu.broth_temperature matches 100.. run scoreboard players set @s siscu.broth_temperature 100
execute at @s run scoreboard players operation @n[type=interaction,tag=siscu.broth_interacting] siscu.broth_temperature *= 2 siscu.integer
execute at @s run scoreboard players operation @n[type=interaction,tag=siscu.broth_interacting] siscu.broth_temperature /= 3 siscu.integer

# end interaction
execute as @e[type=interaction,tag=siscu.broth_interacting] run function siscu:blocks/broth_cauldron/update/store_data
return 1

## Old behav
#execute store result score x siscu.broth_data run function siscu:blocks/broth_cauldron/add_potion_select

# return 0 if the cauldron has potion AND the potion is not water
execute if score has_potion siscu.broth_data matches 1 if score x siscu.broth_data matches 1.. run return 0

# return 0 if it's a potion but the caudron has no water (forced dillution)
execute unless score x siscu.broth_data matches 0 if score broth_level siscu.broth_data matches 0 run return 0

# return if it's an invalid potion
execute if score x siscu.broth_data matches -1 run return 0

#execute if score x siscu.broth_data matches 0 if score has_potion siscu.broth_data matches 0 run data merge storage siscu:volatile {BrothCauldronData:{effects:[{type:apply_effects,probability:1,effects:[{id:"minecraft:water",amplifier:0, duration:0}]}]}}

# clear item on hand
item replace entity @s[gamemode=!creative] weapon.mainhand with glass_bottle

# cauldron calculation
scoreboard players add broth_level siscu.broth_data 1
execute as @e[type=interaction,tag=siscu.broth_interacting] run function siscu:blocks/broth_cauldron/update/store_data

execute unless score x siscu.broth_data matches 0 run tag @e[type=interaction,tag=siscu.broth_interacting] add siscu.broth_potion
execute as @e[type=interaction,tag=siscu.broth_interacting] at @s run function siscu:blocks/broth_cauldron/effects/add_potion

# divide broth temperature by the water level
scoreboard players operation @e[type=interaction,tag=siscu.broth_interacting] siscu.broth_temperature /= broth_level siscu.broth_data

return 1
