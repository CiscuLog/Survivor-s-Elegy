
# Check if it's leather
# Check if it's the same ox value as the rest
## it's the same -> oxidise piece
## it's a lower ox stage as the rest -> oxidise piece
## else -> pass

# Check all ox stages on the armor and store the lowest
# oxidise only if part_ox == min_ox

data merge storage siscu:volatile {String:"",String2:""}
scoreboard players set min_ox siscu.volatile 0
scoreboard players set tool_ox siscu.volatile -1
scoreboard players set helmet_ox siscu.volatile -1
scoreboard players set chestplate_ox siscu.volatile -1
scoreboard players set leggings_ox siscu.volatile -1
scoreboard players set boots_ox siscu.volatile -1

execute if predicate siscu:entities/is_holding_copper_tool store result score tool_ox siscu.volatile run data get entity @s SelectedItem.components.minecraft:custom_data.SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_helmet store result score helmet_ox siscu.volatile run data get entity @s Inventory[{Slot:103b}].components.minecraft:custom_data.SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_chestplate store result score chestplate_ox siscu.volatile run data get entity @s Inventory[{Slot:102b}].components.minecraft:custom_data.SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_leggings store result score leggings_ox siscu.volatile run data get entity @s Inventory[{Slot:101b}].components.minecraft:custom_data.SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_boots store result score boots_ox siscu.volatile run data get entity @s Inventory[{Slot:100b}].components.minecraft:custom_data.SE_data.Oxidation

execute if score tool_ox siscu.volatile matches 0..2 run scoreboard players operation min_ox siscu.volatile = tool_ox siscu.volatile
execute if score helmet_ox siscu.volatile matches 0..2 if score helmet_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = helmet_ox siscu.volatile
execute if score chestplate_ox siscu.volatile matches 0..2 if score chestplate_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = chestplate_ox siscu.volatile
execute if score leggings_ox siscu.volatile matches 0..2 if score leggings_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = leggings_ox siscu.volatile
execute if score boots_ox siscu.volatile matches 0..2 if score boots_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = boots_ox siscu.volatile


execute if predicate siscu:entities/is_holding_copper_tool if predicate siscu:utils/50_percent if score tool_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_tool
execute if predicate siscu:entities/is_wearing_copper_helmet if predicate siscu:utils/50_percent if score helmet_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_helmet
execute if predicate siscu:entities/is_wearing_copper_chestplate if predicate siscu:utils/50_percent if score chestplate_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_chestplate
execute if predicate siscu:entities/is_wearing_copper_leggings if predicate siscu:utils/50_percent if score leggings_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_leggings
execute if predicate siscu:entities/is_wearing_copper_boots if predicate siscu:utils/50_percent if score boots_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_boots