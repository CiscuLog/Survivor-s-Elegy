advancement revoke @s only siscu:items/update/custom_chestplate
## Modus operandi:
# 1. clone relevant components
# 2. replace item with new one from the updated loot table
# 3. copy past components back to the new item

# prepare storage
data merge storage siscu:volatile {components:{},Slot:"armor.chest"}

# copy relevant components: damage, enchantments, trim, custom name
execute if data entity @s Inventory[{Slot:102b}].components."minecraft:damage" run data modify storage siscu:volatile components.minecraft:damage set from entity @s Inventory[{Slot:102b}].components.minecraft:damage
execute if data entity @s Inventory[{Slot:102b}].components."minecraft:enchantments" run data modify storage siscu:volatile components.minecraft:enchantments set from entity @s Inventory[{Slot:102b}].components.minecraft:enchantments
execute if data entity @s Inventory[{Slot:102b}].components."minecraft:trim" run data modify storage siscu:volatile components.minecraft:trim set from entity @s Inventory[{Slot:102b}].components.minecraft:trim
execute if data entity @s Inventory[{Slot:102b}].components."minecraft:custom_name" run data modify storage siscu:volatile components.minecraft:custom_name set from entity @s Inventory[{Slot:102b}].components.minecraft:custom_name

# update copper armor
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.chest":{"predicates":{"custom_data":{"SE_data":{"IsCopper":1b,"Oxidation":0b}}}}}}} run loot replace entity @s armor.chest loot siscu:items/combat/copper_chestplate
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.chest":{"predicates":{"custom_data":{"SE_data":{"IsCopper":1b,"Oxidation":1b}}}}}}} run loot replace entity @s armor.chest loot siscu:items/combat/exposed_copper_chestplate
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.chest":{"predicates":{"custom_data":{"SE_data":{"IsCopper":1b,"Oxidation":2b}}}}}}} run loot replace entity @s armor.chest loot siscu:items/combat/weathered_copper_chestplate
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.chest":{"predicates":{"custom_data":{"SE_data":{"IsCopper":1b,"Oxidation":3b}}}}}}} run loot replace entity @s armor.chest loot siscu:items/combat/oxidised_copper_chestplate

# update elegant suit
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.chest":{"predicates":{"custom_data":{"SE_data":{"IsSuit":1b}}}}}}} run loot replace entity @s armor.chest loot siscu:items/combat/elegant_suit

# update stray cloth
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.chest":{"predicates":{"custom_data":{"SE_data":{"IsStray":1b}}}}}}} run loot replace entity @s armor.chest loot siscu:items/combat/stray_chestplate

# clone old components
function siscu:items/item_modifier/clone_components_from_storage with storage siscu:volatile

# set it to latest version to avoid future checks
item modify entity @s armor.chest {function:"set_custom_data",tag:{SE_data:{UpdateVersion:"v1.0.0"}}}
