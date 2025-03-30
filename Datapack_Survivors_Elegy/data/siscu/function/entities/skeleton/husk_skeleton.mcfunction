
tag @s add siscu.husk_skeleton

item replace entity @s[tag=!baby] armor.head with bone[item_model="siscu_se:blank"]
loot replace entity @s armor.chest loot siscu:items/combat/husk_chestplate
attribute @s minecraft:scale base set 1.06

data merge entity @s {DeathLootTable:"siscu:entities/special_zombie_loot",CanPickUpLoot:false,drop_chances:{head:0.0,chest:0.0}}