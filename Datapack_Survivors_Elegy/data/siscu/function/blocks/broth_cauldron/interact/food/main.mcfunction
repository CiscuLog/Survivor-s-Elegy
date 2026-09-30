
# return if pot is empty
execute if score broth_level siscu.broth_data matches 0 at @n[type=interaction,tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run return run function siscu:blocks/broth_cauldron/interact/stirr
# Return if it has no food values
execute if items entity @s weapon.mainhand *[!food] unless items entity @s weapon.mainhand cake run return run function siscu:blocks/broth_cauldron/interact/stirr

# set variables
scoreboard players set max_food_level siscu.broth_data 1400
scoreboard players set max_saturation_level siscu.broth_data 2560
scoreboard players operation max_food_level siscu.broth_data *= broth_level siscu.broth_data
scoreboard players operation max_saturation_level siscu.broth_data *= broth_level siscu.broth_data
scoreboard players set food siscu.broth_data 0
scoreboard players set saturation siscu.broth_data 0

# vanilla food values
function siscu:blocks/broth_cauldron/interact/food/vanilla_food

# get food and saturation if it's an unhandled item with special food values
scoreboard players set x siscu.volatile 0
execute if items entity @s weapon.mainhand *[custom_data] store success score x siscu.volatile run data get entity @s SelectedItem.components."minecraft:food"
execute if score x siscu.volatile matches 1 store result score food siscu.broth_data run data get entity @s SelectedItem.components."minecraft:food".nutrition 100
execute if score x siscu.volatile matches 1 store result score saturation siscu.broth_data run data get entity @s SelectedItem.components."minecraft:food".saturation 100

# get food and saturation for addon items
function #siscu:items/broth_cauldron/custom_food_values

# add values to broth
scoreboard players operation broth_food siscu.broth_data += food siscu.broth_data
scoreboard players operation broth_saturation siscu.broth_data += saturation siscu.broth_data

# return if max nutrition or saturation has already been reached
execute if score broth_food siscu.broth_data > max_food_level siscu.broth_data at @n[type=interaction,tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run return run function siscu:blocks/broth_cauldron/interact/stirr
execute if score broth_saturation siscu.broth_data > max_saturation_level siscu.broth_data at @n[type=interaction,tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run return run function siscu:blocks/broth_cauldron/interact/stirr

# if item adds an effect
execute if items entity @s weapon.mainhand #siscu:broth_give_effects store success score x siscu.volatile run function siscu:blocks/broth_cauldron/interact/food/contains_effect
execute if score x siscu.volatile matches 1 run tag @n[type=interaction,tag=siscu.broth_interacted] add siscu.broth_potion
# if item clears an effect
execute if items entity @s weapon.mainhand honey_bottle[!custom_data] run function siscu:blocks/broth_cauldron/interact/food/clears_effects
# get custom addon effects
function #siscu:items/broth_cauldron/custom_food_effects

# if item teleports the player
execute if items entity @s weapon.mainhand chorus_fruit[!custom_data] as @n[tag=siscu.broth_interacted] run function siscu:blocks/broth_cauldron/interact/food/add_tp_capabilities {value:8}
function #siscu:items/broth_cauldron/custom_tp_addition

# Increase ingredient count ((INCOMPLETE PURPOSE))
scoreboard players add ingredients_amount siscu.broth_data 1

# store data
execute as @n[type=interaction,tag=siscu.broth_interacted] at @s run function siscu:blocks/broth_cauldron/interact/food/cauldron

# replace player's hand item ((REVISE AGAIN))
scoreboard players set x siscu.volatile 0
execute if items entity @s weapon.mainhand #siscu:bowled_food run scoreboard players set x siscu.volatile 1
execute if items entity @s weapon.mainhand #siscu:bottled_food run scoreboard players set x siscu.volatile 2
item modify entity @s[gamemode=!creative] weapon.mainhand siscu:decrease_1
execute if score x siscu.volatile matches 1 run give @s[gamemode=!creative] bowl
execute if score x siscu.volatile matches 2 run give @s[gamemode=!creative] glass_bottle

function siscu:blocks/broth_cauldron/interact/end
