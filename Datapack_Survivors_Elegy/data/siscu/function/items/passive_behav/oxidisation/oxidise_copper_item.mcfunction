
# Setup Storage
$data merge storage siscu:volatile {Slot:"$(Slot)",Slot_raw:"$(Slot_raw)"}

# return if it's not a vanilla or SE item
$execute if items entity @s $(Slot) #siscu:oxidisable_items[custom_data] unless items entity @s $(Slot) *[custom_data~{SE_data:{}}] run return fail
# Return if it cannot oxidise
$execute unless items entity @s $(Slot) #siscu:oxidisable_items run return fail
execute store success score x siscu.volatile run function siscu:items/passive_behav/oxidisation/cannot_oxidise with storage siscu:volatile
execute if score x siscu.volatile matches 0 run return fail

# Increase CMD and Oxidation value
$execute store result score x siscu.volatile run data get entity @s $(Slot_raw).components."minecraft:custom_model_data".floats[0]
scoreboard players add x siscu.volatile 1
$scoreboard players add $(score) siscu.volatile 1

# Change CMD, Oxidation value
$item modify entity @s $(Slot) siscu:set_custom_model_data
$execute store result storage siscu:volatile Oxidation int 1 run scoreboard players get $(score) siscu.volatile
function siscu:items/item_modifier/oxidisation with storage siscu:volatile

# New name (stores it in siscu:volatile.String and String2)
$execute if score $(score) siscu.volatile matches 1 run data merge storage siscu:volatile {String:"exposed_"}
$execute if score $(score) siscu.volatile matches 2 run data merge storage siscu:volatile {String:"weathered_"}
$execute if score $(score) siscu.volatile matches 3 run data merge storage siscu:volatile {String:"oxidised_"}
function siscu:items/passive_behav/oxidisation/item_names with storage siscu:volatile

### Item modifications
## Name
function siscu:items/item_modifier/set_item_name_2_inputs with storage siscu:volatile

## Armor model
# Return if it cannot be worn
$execute unless items entity @s $(Slot) #siscu:armor_items/copper run return 0
# Update minecraft:equippable component
data merge storage siscu:volatile {Slot_component:"head"}
function siscu:items/passive_behav/oxidisation/item_slots with storage siscu:volatile
data merge storage siscu:volatile {String2:"copper"}
function siscu:items/passive_behav/oxidisation/set_copper_armor_texture with storage siscu:volatile