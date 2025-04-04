
## Discharge
# Reduce $(DischargeAmount) charges from extremities to chest
# helmet -> boots -> leggings -> chestplate
scoreboard players set N siscu.volatile 0
scoreboard players set charge siscu.volatile 0
scoreboard players set charge siscu.volatile 0
execute if predicate siscu:entities/is_wearing_copper_helmet store result score charge siscu.volatile run data get entity @s equipment.head.components."minecraft:custom_data".SE_data.ChargeCharge
$execute if score charge siscu.volatile matches $(DischargeAmount).. if score N siscu.volatile matches 0 run function siscu:items/passive_behav/discharge/copper_item {Slot:"armor.head",DischargeAmount:$(DischargeAmount)}

scoreboard players set charge siscu.volatile 0
execute if predicate siscu:entities/is_wearing_copper_boots store result score charge siscu.volatile run data get entity @s equipment.feet.components."minecraft:custom_data".SE_data.Charge
$execute if score charge siscu.volatile matches $(DischargeAmount).. if score N siscu.volatile matches 0 run function siscu:items/passive_behav/discharge/copper_item {Slot:"armor.feet",DischargeAmount:$(DischargeAmount)}

scoreboard players set charge siscu.volatile 0
execute if predicate siscu:entities/is_wearing_copper_leggings store result score charge siscu.volatile run data get entity @s equipment.legs.components."minecraft:custom_data".SE_data.Charge
$execute if score charge siscu.volatile matches $(DischargeAmount).. if score N siscu.volatile matches 0 run function siscu:items/passive_behav/discharge/copper_item {Slot:"armor.legs",DischargeAmount:$(DischargeAmount)}

scoreboard players set charge siscu.volatile 0
execute if predicate siscu:entities/is_wearing_copper_chestplate store result score charge siscu.volatile run data get entity @s equipment.chest.components."minecraft:custom_data".SE_data.Charge
$execute if score charge siscu.volatile matches $(DischargeAmount).. if score N siscu.volatile matches 0 run function siscu:items/passive_behav/discharge/copper_item {Slot:"armor.chest",DischargeAmount:$(DischargeAmount)}

execute if score N siscu.volatile matches 0 run return 0

# Discharge effect
tag @s add discharging
scoreboard players set N siscu.volatile 0
# lateral arc
execute store result score x1 siscu.volatile run random value -30..30
# vertical arch. The more negative, the more upwards the arch will go
execute store result score y1 siscu.volatile run random value -40..-10

execute on attacker at @s anchored eyes run summon area_effect_cloud ~ ~1 ~ {Tags:["siscu.discharge_path"],Duration:1,Radius:0,Age:20}
execute as @e[tag=siscu.discharge_path] at @s facing entity @e[type=player,limit=1] feet rotated ~40 ~ run function siscu:items/passive_behav/discharge/effect

execute on attacker at @s run playsound minecraft:entity.blaze.hurt ambient @a ~ ~ ~ 1 2
execute on attacker at @s run particle minecraft:electric_spark ~ ~0.3 ~ 0.2 0.2 0.2 0.3 10
# Negate all damage if it's wearing copper
# Damage strongly if wearing netherite armor (6HP)
execute on attacker if predicate siscu:entities/is_wearing_netherite unless predicate siscu:entities/is_wearing_copper_armor run damage @s[type=!#siscu:discharge_immune] 6 siscu:copper_discharge by @e[tag=discharging,limit=1]
# Damage slightly otherwise (3HP)
execute on attacker unless predicate siscu:entities/is_wearing_netherite unless predicate siscu:entities/is_wearing_copper_armor run damage @s[type=!#siscu:discharge_immune] 3 siscu:copper_discharge by @e[tag=discharging,limit=1]
tag @s remove discharging


##Proposed new behavior:
# Clear 1 charge from the item that has less durability in that instance.

# get all durabilities
# decide which one is closer to breaking
# act on that one 