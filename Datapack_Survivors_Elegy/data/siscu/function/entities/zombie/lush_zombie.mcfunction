
item replace entity @s armor.head with minecraft:small_dripleaf[custom_model_data=548102]
loot replace entity @s[predicate=!siscu:utils/is_baby] weapon.mainhand loot siscu:entities/zombie/zombie_weapons
item replace entity @s weapon.offhand with minecraft:small_dripleaf[custom_model_data=548101]
data modify entity @s ArmorDropChances[3] set value 0.0f
data merge entity @s {HandDropChances:[0.0f,0.0f],DeathLootTable:"siscu:entities/special_zombie_loot"}

tag @s remove unequipped