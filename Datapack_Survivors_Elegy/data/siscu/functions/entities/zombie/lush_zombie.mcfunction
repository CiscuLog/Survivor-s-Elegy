
item replace entity @s armor.head with minecraft:small_dripleaf{CustomModelData:548102}
loot replace entity @s[predicate=!siscu:utils/is_baby] weapon.mainhand loot siscu:groups/zombie_weapons
item replace entity @s weapon.offhand with minecraft:small_dripleaf{CustomModelData:548101}
data merge entity @s {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],DeathLootTable:"siscu:entities/special_zombie_loot"}

tag @s remove unequipped