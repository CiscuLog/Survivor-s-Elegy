advancement revoke @s only siscu:entities/broth_interact

# promptly stop if wrong item usage
execute unless items entity @s weapon.mainhand #siscu:broth_items run return run function siscu:entities/broth_cauldron/end_interaction

# tag entities
execute as @e[type=interaction,tag=siscu.broth_cauldron] if data entity @s interaction at @s run tag @e[tag=siscu.broth_cauldron,distance=..0.2] add siscu.broth_interacting

scoreboard players set status siscu.broth_data 0
scoreboard players set increase siscu.broth_data 0
scoreboard players set available siscu.broth_data 0

# set action
execute if items entity @s weapon.mainhand #siscu:broth_ingredients run scoreboard players set status siscu.broth_data 1
execute if items entity @s weapon.mainhand #siscu:broth_potions run scoreboard players set status siscu.broth_data 2
execute if items entity @s weapon.mainhand milk_bucket run scoreboard players set status siscu.broth_data 3
execute if items entity @s weapon.mainhand #siscu:broth_scooping run scoreboard players set status siscu.broth_data 4
execute if items entity @s weapon.mainhand stick[minecraft:custom_model_data=540010] run scoreboard players set status siscu.broth_data 4
execute if items entity @s weapon.mainhand phantom_membrane run scoreboard players set status siscu.broth_data 5
execute if items entity @s weapon.mainhand water_bucket run scoreboard players set status siscu.broth_data 6
execute if predicate siscu:items/broth/special_items store result score status siscu.broth_data run function siscu:entities/broth_cauldron/special_items

execute unless score status siscu.broth_data matches 1.. run return run function siscu:entities/broth_cauldron/end_interaction

# if is_holding_increases_broth_level: increase = 1
execute if items entity @s weapon.mainhand #siscu:broth_filling run scoreboard players set increase siscu.broth_data 1
execute if predicate siscu:items/broth/increase_3 run scoreboard players set increase siscu.broth_data 3
# (get broth data)
execute as @e[type=marker,tag=siscu.broth_interacting] at @s run function siscu:entities/broth_cauldron/update/get_data
# available = check_available() --> check if item can be added based on state and broth level
execute at @e[type=marker,tag=siscu.broth_interacting] store result score available siscu.broth_data run function siscu:entities/broth_cauldron/check_availability

# if available == 0 : return
execute if score available siscu.broth_data matches 0 run return run function siscu:entities/broth_cauldron/end_interaction

# case status
execute if score status siscu.broth_data matches 1 store result score status siscu.broth_data run function siscu:entities/broth_cauldron/add_food
execute if score status siscu.broth_data matches 2 store result score status siscu.broth_data run function siscu:entities/broth_cauldron/add_potion
execute if score status siscu.broth_data matches 3 store result score status siscu.broth_data run function siscu:entities/broth_cauldron/remove_potion
execute if score status siscu.broth_data matches 4 store result score status siscu.broth_data run function siscu:entities/broth_cauldron/scoop_broth
execute if score status siscu.broth_data matches 5 store result score status siscu.broth_data run function siscu:entities/broth_cauldron/add_membrane
execute if score status siscu.broth_data matches 6 store result score status siscu.broth_data run function siscu:entities/broth_cauldron/add_water_bucket

#execute if score status siscu.broth_data matches 0 as @e[type=marker,tag=siscu.broth_interacting] at @s run particle angry_villager ~ ~ ~
execute unless score status siscu.broth_data matches 0 as @e[type=marker,tag=siscu.broth_interacting] at @s run function siscu:entities/broth_cauldron/update/textures

function siscu:entities/broth_cauldron/end_interaction
