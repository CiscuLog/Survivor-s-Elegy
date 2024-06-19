scoreboard players set min_ox siscu.volatile 548104
scoreboard players set tool_ox siscu.volatile 0
scoreboard players set helmet_ox siscu.volatile 0
scoreboard players set chestplate_ox siscu.volatile 0
scoreboard players set leggings_ox siscu.volatile 0
scoreboard players set boots_ox siscu.volatile 0

execute if predicate siscu:entities/is_holding_copper_tool store result score tool_ox siscu.volatile run data get entity @s HandItems[0].components.minecraft:custom_model_data
execute if predicate siscu:entities/is_wearing_copper_helmet store result score helmet_ox siscu.volatile run data get entity @s ArmorItems[3].components.minecraft:custom_model_data
execute if predicate siscu:entities/is_wearing_copper_chestplate store result score chestplate_ox siscu.volatile run data get entity @s ArmorItems[2].components.minecraft:custom_model_data
execute if predicate siscu:entities/is_wearing_copper_leggings store result score leggings_ox siscu.volatile run data get entity @s ArmorItems[1].components.minecraft:custom_model_data
execute if predicate siscu:entities/is_wearing_copper_boots store result score boots_ox siscu.volatile run data get entity @s ArmorItems[0].components.minecraft:custom_model_data

execute unless score tool_ox siscu.volatile matches 0 run scoreboard players operation min_ox siscu.volatile = tool_ox siscu.volatile
execute unless score helmet_ox siscu.volatile matches 0 if score helmet_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = helmet_ox siscu.volatile
execute unless score chestplate_ox siscu.volatile matches 0 if score chestplate_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = chestplate_ox siscu.volatile
execute unless score leggings_ox siscu.volatile matches 0 if score leggings_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = leggings_ox siscu.volatile
execute unless score boots_ox siscu.volatile matches 0 if score boots_ox siscu.volatile < min_ox siscu.volatile run scoreboard players operation min_ox siscu.volatile = boots_ox siscu.volatile

execute if predicate siscu:entities/is_holding_copper_tool if predicate siscu:utils/0_5_percent if score tool_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_tool
execute if predicate siscu:entities/is_wearing_copper_helmet if predicate siscu:utils/0_5_percent if score helmet_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_helmet
execute if predicate siscu:entities/is_wearing_copper_chestplate if predicate siscu:utils/0_5_percent if score chestplate_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_chestplate
execute if predicate siscu:entities/is_wearing_copper_leggings if predicate siscu:utils/0_5_percent if score leggings_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_leggings
execute if predicate siscu:entities/is_wearing_copper_boots if predicate siscu:utils/0_5_percent if score boots_ox siscu.volatile = min_ox siscu.volatile run function siscu:items/passive_behav/oxidise_copper_boots