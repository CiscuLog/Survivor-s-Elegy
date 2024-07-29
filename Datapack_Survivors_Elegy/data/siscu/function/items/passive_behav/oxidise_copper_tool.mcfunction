
# return if it cannot oxidise
execute if items entity @s weapon.mainhand #siscu:cannot_oxidise_on_hand run return 0

# increase CMD and Oxidisation value
execute store result score x siscu.volatile run data get entity @s SelectedItem.components."minecraft:custom_model_data"
scoreboard players add x siscu.volatile 1
scoreboard players add tool_ox siscu.volatile 1

# change CMD, Oxidisation value
data merge storage siscu:volatile {Slot:"weapon.mainhand"}
item modify entity @s weapon.mainhand siscu:set_custom_model_data
function siscu:items/item_modifier/oxidisation with storage siscu:volatile

# if the item has custom name that needs not to be changed, return
execute if items entity @s weapon.mainhand *[minecraft:custom_name] run return 1
# else, decide the new name (stores it in siscu:volatile.String)
function siscu:items/passive_behav/oxidisation_names/tool
function siscu:items/item_modifier/set_name with storage siscu:volatile

# split from the rest of the prototype function
return 1




## OLD PROTOTYPE FUNCTION ##

execute unless items entity @s weapon.mainhand #siscu:iron_tools run return 0
scoreboard players add tool_ox siscu.volatile 1
execute if score tool_ox siscu.volatile matches 1 run data merge storage siscu:volatile {String:"exposed_copper_",rgb:9464656,Oxidation:1}
execute if score tool_ox siscu.volatile matches 2 run data merge storage siscu:volatile {String:"weathered_copper_",rgb:7107420,Oxidation:2}
execute if score tool_ox siscu.volatile matches 3 run data merge storage siscu:volatile {String:"oxidised_copper_",rgb:3506031,Oxidation:3}

execute if items entity @s weapon #minecraft:axes run data merge storage siscu:volatile {String2:"axe"}
execute if items entity @s weapon #minecraft:hoes run data merge storage siscu:volatile {String2:"hoe"}
execute if items entity @s weapon #minecraft:pickaxes run data merge storage siscu:volatile {String2:"pickaxe"}
execute if items entity @s weapon #minecraft:shovels run data merge storage siscu:volatile {String2:"shovel"}
execute if items entity @s weapon #minecraft:swords run data merge storage siscu:volatile {String2:"sword"}

data merge storage siscu:volatile {Slot:"weapon.mainhand"}
scoreboard players add tool_ox siscu.volatile 548101
execute store result storage siscu:volatile CMD int 1 run scoreboard players get tool_ox siscu.volatile

function siscu:items/item_modifier/oxidisation with storage siscu:volatile