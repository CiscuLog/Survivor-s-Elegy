
data merge storage siscu:volatile {String:"",String2:""}
scoreboard players set min_ox siscu.volatile 2
scoreboard players set tool_ox siscu.volatile -1
scoreboard players set shield_ox siscu.volatile -1
scoreboard players set helmet_ox siscu.volatile -1
scoreboard players set chestplate_ox siscu.volatile -1
scoreboard players set leggings_ox siscu.volatile -1
scoreboard players set boots_ox siscu.volatile -1

execute if predicate siscu:entities/is_holding_copper_tool store result score tool_ox siscu.volatile run data get entity @s HandItems[0].components."minecraft:custom_data".SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_helmet store result score helmet_ox siscu.volatile run data get entity @s ArmorItems[3].components."minecraft:custom_data".SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_chestplate store result score chestplate_ox siscu.volatile run data get entity @s ArmorItems[2].components."minecraft:custom_data".SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_leggings store result score leggings_ox siscu.volatile run data get entity @s ArmorItems[1].components."minecraft:custom_data".SE_data.Oxidation
execute if predicate siscu:entities/is_wearing_copper_boots store result score boots_ox siscu.volatile run data get entity @s ArmorItems[0].components."minecraft:custom_data".SE_data.Oxidation

execute if score tool_ox siscu.volatile matches 0..2 run scoreboard players operation min_ox siscu.volatile = tool_ox siscu.volatile
execute if score helmet_ox siscu.volatile matches 0..2 if score helmet_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = helmet_ox siscu.volatile
execute if score chestplate_ox siscu.volatile matches 0..2 if score chestplate_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = chestplate_ox siscu.volatile
execute if score leggings_ox siscu.volatile matches 0..2 if score leggings_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = leggings_ox siscu.volatile
execute if score boots_ox siscu.volatile matches 0..2 if score boots_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = boots_ox siscu.volatile

execute if score tool_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"weapon.mainhand",Slot_raw:"HandItems[0]",score:"tool_ox"}
execute if score helmet_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"armor.head",Slot_raw:"ArmorItems[3]",score:"helmet_ox"}
execute if score chestplate_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"armor.chest",Slot_raw:"ArmorItems[2]",score:"chestplate_ox"}
execute if score leggings_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"armor.legs",Slot_raw:"ArmorItems[1]",score:"leggings_ox"}
execute if score boots_ox siscu.volatile = min_ox siscu.volatile if predicate siscu:random/oxidisation_chance run function siscu:items/passive_behav/oxidisation/oxidise_copper_item {Slot:"armor.feet",Slot_raw:"ArmorItems[0]",score:"boots_ox"}