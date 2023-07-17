
# Reduce one charge from bottom to top
scoreboard players set N siscu.volatile 0
scoreboard players set charge siscu.volatile 0
execute if predicate siscu:entities/is_wearing_copper_boots store result score charge siscu.volatile run data get entity @s Inventory[{Slot: 100b}].tag.SE_data.Charge
execute if score charge siscu.volatile matches 1.. if score N siscu.volatile matches 0 run function siscu:items/passive_behav/discharge_copper_boots_1

scoreboard players set charge siscu.volatile 0
execute if predicate siscu:entities/is_wearing_copper_leggings store result score charge siscu.volatile run data get entity @s Inventory[{Slot: 101b}].tag.SE_data.Charge
execute if score charge siscu.volatile matches 1.. if score N siscu.volatile matches 0 run function siscu:items/passive_behav/discharge_copper_leggings_1

scoreboard players set charge siscu.volatile 0
execute if predicate siscu:entities/is_wearing_copper_chestplate store result score charge siscu.volatile run data get entity @s Inventory[{Slot: 102b}].tag.SE_data.Charge
execute if score charge siscu.volatile matches 1.. if score N siscu.volatile matches 0 run function siscu:items/passive_behav/discharge_copper_chestplate_1

scoreboard players set charge siscu.volatile 0
execute if predicate siscu:entities/is_wearing_copper_helmet store result score charge siscu.volatile run data get entity @s Inventory[{Slot: 103b}].tag.SE_data.Charge
execute if score charge siscu.volatile matches 1.. if score N siscu.volatile matches 0 run function siscu:items/passive_behav/discharge_copper_helmet_1

# Discharge effect
tag @s add discharging
scoreboard players set N siscu.volatile 0

execute on attacker at @s anchored eyes run summon area_effect_cloud ~ ~0.5 ~ {Tags:["siscu.discharge_path"]}
execute as @e[tag=siscu.discharge_path] at @s facing entity @p feet rotated ~40 ~ run function siscu:items/passive_behav/discharge_effect

execute on attacker at @s run playsound minecraft:entity.blaze.hurt ambient @a ~ ~ ~ 1 2
execute on attacker at @s run particle minecraft:electric_spark ~ ~0.3 ~ 0.2 0.2 0.2 0.3 10
execute on attacker run damage @s 3 siscu:copper_discharge by @p[tag=discharging]
tag @s remove discharging