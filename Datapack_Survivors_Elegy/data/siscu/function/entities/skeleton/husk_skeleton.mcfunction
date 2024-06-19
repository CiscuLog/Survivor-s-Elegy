
tag @s add husk_skeleton

item replace entity @s[tag=!baby] armor.head with bone[custom_model_data=540000]
loot replace entity @s armor.chest loot siscu:items/combat/husk_chestplate
attribute @s minecraft:generic.scale base set 1.06

data merge entity @s {DeathLootTable:"siscu:entities/special_zombie_loot"}
data modify entity @s ArmorDropChances[2] set value 0.0f
data modify entity @s ArmorDropChances[3] set value 0.0f