
# return if it cannot oxidise

# increase CMD
execute store result score x siscu.volatile run data get entity @s Inventory[{Slot:100b}].components."minecraft:custom_model_data"
scoreboard players add x siscu.volatile 1

# change CMD
item modify entity @s armor.feet siscu:set_custom_model_data

# if the item has custom name that needs not to be changed, return
execute if items entity @s armor.feet *[minecraft:custom_name] run return 1
# else, decide the new name (stores it in siscu:volatile.String)
function siscu:items/passive_behav/oxidisation_names/boots
data merge storage siscu:volatile {Slot:"armor.feet"}
function siscu:items/item_modifier/set_name with storage siscu:volatile
