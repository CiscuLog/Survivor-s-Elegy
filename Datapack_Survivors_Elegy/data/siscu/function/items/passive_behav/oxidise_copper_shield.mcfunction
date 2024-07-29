
# return if it cannot oxidise
execute if items entity @s weapon.offhand #siscu:cannot_oxidise_on_hand run return 0

# increase CMD
execute store result score x siscu.volatile run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_model_data"
scoreboard players add x siscu.volatile 1

# change CMD
item modify entity @s weapon.offhand siscu:set_custom_model_data

# if the item has custom name that needs not to be changed, return
execute if items entity @s weapon.offhand *[minecraft:custom_name] run return 1
# else, decide the new name (stores it in siscu:volatile.String)
function siscu:items/passive_behav/oxidisation_names/tool_offhand
data merge storage siscu:volatile {Slot:"weapon.offhand"}
function siscu:items/item_modifier/set_name with storage siscu:volatile
