# reset trigger
advancement revoke @a only siscu:items/update/trigger
scoreboard players reset @s siscu.update_item
function siscu:items/update/enable_trigger

# return if the item is already at the latest version
execute if predicate {condition:"entity_properties",entity:"this",predicate:{slots:{weapon.mainhand:{predicates:{custom_data:{SE_data:{UpdateVersion:"v1.0.1"}}}}}}} run return run tellraw @s {"text":"<Item Update> This item is already up to date"}

## data update
tellraw @s {"text":"<Item Update> Updating item, some data might get lost in the process"}

# prepare storage
data merge storage siscu:volatile {components:{},Slot:"weapon.mainhand"}

# copy relevant components: count, damage, enchantments, trim, custom name, lore
execute if data entity @s SelectedItem.count run data modify storage siscu:volatile count set from entity @s SelectedItem.count
execute if data entity @s SelectedItem.components."minecraft:damage" run data modify storage siscu:volatile components.minecraft:damage set from entity @s SelectedItem.components.minecraft:damage
execute if data entity @s SelectedItem.components."minecraft:enchantments" run data modify storage siscu:volatile components.minecraft:enchantments set from entity @s SelectedItem.components.minecraft:enchantments
execute if data entity @s SelectedItem.components."minecraft:trim" run data modify storage siscu:volatile components.minecraft:trim set from entity @s SelectedItem.components.minecraft:trim
execute if data entity @s SelectedItem.components."minecraft:custom_name" run data modify storage siscu:volatile components.minecraft:custom_name set from entity @s SelectedItem.components.minecraft:custom_name
execute if data entity @s SelectedItem.components."minecraft:lore" run data modify storage siscu:volatile components.minecraft:lore set from entity @s SelectedItem.components.minecraft:lore

scoreboard players set x siscu.volatile 0

## check item, replace with new one
function siscu:items/update/trigger_item_choose

# return if it cannot be updated
execute unless score x siscu.volatile matches 1 run return run tellraw @s {"text":"<Item Update> This item couldn't (or doesn't need to) be updated"}

# clone old components (and amount)
function siscu:items/item_modifier/clone_components_from_storage with storage siscu:volatile

# set it to latest version to avoid future checks
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{SE_data:{UpdateVersion:"v1.0.1"}}}
