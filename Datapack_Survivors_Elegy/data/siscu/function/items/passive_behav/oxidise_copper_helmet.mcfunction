
# return if it cannot oxidise

# increase CMD, Oxidation, tint
execute store result score x siscu.volatile run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_model_data"
scoreboard players add x siscu.volatile 1

# change CMD, Oxidation, tint
item modify entity @s armor.head siscu:set_custom_model_data

# if the item has custom name that needs not to be changed, return
execute if items entity @s armor.head *[minecraft:custom_name] run return 1
# else, decide the new name (stores it in siscu:volatile.String)
function siscu:items/passive_behav/oxidisation_names/helmet
data merge storage siscu:volatile {Slot:"armor.head"}
function siscu:items/item_modifier/set_name with storage siscu:volatile
