
item replace entity @s armor.head with minecraft:small_dripleaf[custom_model_data=548110]
loot replace entity @s[predicate=!siscu:utils/is_baby] weapon.mainhand loot siscu:entities/zombie/zombie_weapons
loot replace entity @s[predicate=!siscu:utils/is_baby] weapon.offhand loot siscu:entities/zombie/zombie_shields
data merge entity @s {DeathLootTable:"siscu:entities/special_zombie_loot"}
data modify entity @s ArmorDropChances[3] set value 0.0f

tag @s remove unequipped