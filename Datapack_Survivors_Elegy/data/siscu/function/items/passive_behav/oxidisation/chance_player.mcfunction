
# Check every slot for copper items
## if it's copper, store oxidation for each item
## if not, set item ox score to -1

# Get the min oxidation on the set
## Check all piece's ox and compare to the min ox value

# Check every slot's oxidation value, and compare it to min ox
## if it's the same -> oxidise piece (chance)
## else -> pass

# Check all ox stages on the armor and store the lowest
# oxidise only if part_ox == min_ox

# Setup
data merge storage siscu:volatile {String:"",String2:""}
scoreboard players set min_ox siscu.volatile 2
scoreboard players set tool_ox siscu.volatile -1
scoreboard players set shield_ox siscu.volatile -1
scoreboard players set helmet_ox siscu.volatile -1
scoreboard players set chestplate_ox siscu.volatile -1
scoreboard players set leggings_ox siscu.volatile -1
scoreboard players set boots_ox siscu.volatile -1

# Get all ox values if said piece is copper
execute if predicate siscu:entities/is_holding_copper_tool store result score tool_ox siscu.volatile run data get entity @s SelectedItem.components."minecraft:custom_data".SE_data.Oxidation
execute if predicate siscu:entities/is_holding_copper_shield store result score shield_ox siscu.volatile run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_helmet store result score helmet_ox siscu.volatile run data get entity @s equipment.head.components."minecraft:custom_data".SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_chestplate store result score chestplate_ox siscu.volatile run data get entity @s equipment.chest.components."minecraft:custom_data".SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_leggings store result score leggings_ox siscu.volatile run data get entity @s equipment.legs.components."minecraft:custom_data".SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_boots store result score boots_ox siscu.volatile run data get entity @s equipment.feet.components."minecraft:custom_data".SE_data.Oxidation

# Compare all positive ox values and get the minimum one
execute if score tool_ox siscu.volatile matches 0..2 run scoreboard players operation min_ox siscu.volatile = tool_ox siscu.volatile
execute if score shield_ox siscu.volatile matches 0..2 if score shield_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = shield_ox siscu.volatile
execute if score helmet_ox siscu.volatile matches 0..2 if score helmet_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = helmet_ox siscu.volatile
execute if score chestplate_ox siscu.volatile matches 0..2 if score chestplate_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = chestplate_ox siscu.volatile
execute if score leggings_ox siscu.volatile matches 0..2 if score leggings_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = leggings_ox siscu.volatile
execute if score boots_ox siscu.volatile matches 0..2 if score boots_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = boots_ox siscu.volatile

# Oxidise a piece if the chance succeeds
execute if score tool_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"weapon.mainhand",Slot_raw:"SelectedItem",score:"tool_ox"}
execute if score shield_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"weapon.offhand",Slot_raw:"Inventory[{Slot:-106b}]",score:"shield_ox"}
execute if score helmet_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"armor.head",Slot_raw:"equipment.head",score:"helmet_ox"}
execute if score chestplate_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"armor.chest",Slot_raw:"equipment.chest",score:"chestplate_ox"}
execute if score leggings_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"armor.legs",Slot_raw:"equipment.legs",score:"leggings_ox"}
execute if score boots_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"armor.feet",Slot_raw:"equipment.feet",score:"boots_ox"}