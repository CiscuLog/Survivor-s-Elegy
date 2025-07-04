
# Setup Storage
$data merge storage siscu:volatile {Slot:"$(Slot)",Slot_raw:"$(Slot_raw)"}

# Return if it cannot oxidise
execute store success score x siscu.volatile run function siscu:items/passive_behav/oxidisation/cannot_oxidise with storage siscu:volatile
execute if score x siscu.volatile matches 0 run return 0

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
$execute unless items entity @s $(Slot) *[minecraft:equippable] run return 0
# Get and store components."mineccraft:equippable" data so it can be re-added
$data modify storage siscu:volatile Slot_component set from entity @s $(Slot_raw).components."minecraft:equippable".slot
$data modify storage siscu:volatile String3 set from entity @s $(Slot_raw).components."minecraft:equippable".equip_sound
data merge storage siscu:volatile {String2:"copper"}
function siscu:items/item_modifier/set_armor_texture with storage siscu:volatile