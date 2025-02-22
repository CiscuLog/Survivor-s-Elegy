## Modus operandi:
# 1. clone relevant components
# 2. replace item with new one from the updated loot table
# 3. copy past components back to the new item

# prepare storage
data merge storage siscu:volatile {components:{},Slot:"armor.head"}

# copy relevant components: damage, enchantments, trim, custom name
execute if data entity @s Inventory[{Slot:103b}].components."minecraft:damage" run data modify storage siscu:volatile components.minecraft:damage set from entity @s Inventory[{Slot:103b}].components.minecraft:damage
execute if data entity @s Inventory[{Slot:103b}].components."minecraft:enchantments" run data modify storage siscu:volatile components.minecraft:enchantments set from entity @s Inventory[{Slot:103b}].components.minecraft:enchantments
execute if data entity @s Inventory[{Slot:103b}].components."minecraft:trim" run data modify storage siscu:volatile components.minecraft:trim set from entity @s Inventory[{Slot:103b}].components.minecraft:trim
execute if data entity @s Inventory[{Slot:103b}].components."minecraft:custom_name" run data modify storage siscu:volatile components.minecraft:custom_name set from entity @s Inventory[{Slot:103b}].components.minecraft:custom_name

# update copper armor
#item modify entity @s armor.head {function:"set_custom_data",tag:{SE_data:{UpdateVersion:"v1.0.0"}}}
#execute if predicate { "condition": "entity_properties", "entity": "this", "predicate": { "slots": { "armor.head": { "predicates": { "custom_data": { "SE_data": { "Oxidation": 0 } } } } } } } run item modify entity @s armor.head {function:"set_components",components:{"equippable":{"slot":"helmet","damage_on_hurt":false,"asset_id""siscu_se:copper"}}}
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.head":{"predicates":{"custom_data":{"SE_data":{"IsCopper":1,"Oxidation":0}}}}}}} run loot replace entity @s armor.head loot siscu:items/combat/copper_helmet
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.head":{"predicates":{"custom_data":{"SE_data":{"IsCopper":1,"Oxidation":1}}}}}}} run loot replace entity @s armor.head loot siscu:items/combat/exposed_copper_helmet
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.head":{"predicates":{"custom_data":{"SE_data":{"IsCopper":1,"Oxidation":2}}}}}}} run loot replace entity @s armor.head loot siscu:items/combat/weathered_copper_helmet
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.head":{"predicates":{"custom_data":{"SE_data":{"IsCopper":1,"Oxidation":3}}}}}}} run loot replace entity @s armor.head loot siscu:items/combat/oxidised_copper_helmet

# update elegant suit
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.head":{"predicates":{"custom_data":{"SE_data":{"IsSuit":1}}}}}}} run loot replace entity @s armor.head loot siscu:items/combat/elegant_hat

# update stray cloth
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"slots":{"armor.head":{"predicates":{"custom_data":{"SE_data":{"IsStray":1}}}}}}} run loot replace entity @s armor.head loot siscu:items/combat/stray_helmet

# clone old components
function siscu:items/item_modifier/clone_components_from_storage with storage siscu:volatile

# set it to latest version to avoid future checks
item modify entity @s armor.chest {function:"set_custom_data",tag:{SE_data:{UpdateVersion:"v1.0.0"}}}
