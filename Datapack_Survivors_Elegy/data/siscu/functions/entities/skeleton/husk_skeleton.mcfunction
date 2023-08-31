
tag @s add husk_skeleton

item replace entity @s armor.head with bone{CustomModelData:540000}
loot replace entity @s armor.chest loot siscu:items/weapons/husk_chestplate

data merge entity @s {ArmorDropChances:[1.0f,1.0f,0.0f,0.0f],DeathLootTable:"siscu:entities/special_zombie_loot"}