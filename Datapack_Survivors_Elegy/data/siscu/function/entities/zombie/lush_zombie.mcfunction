
item replace entity @s armor.head with minecraft:small_dripleaf[item_model="siscu_se:dripleaf_head_0"]
loot replace entity @s[predicate=!siscu:utils/is_baby] weapon.mainhand loot siscu:entities/zombie/zombie_weapons
item replace entity @s weapon.offhand with minecraft:small_dripleaf[item_model="siscu_se:dripleaf_hand_0"]
data modify entity @s ArmorDropChances[3] set value 0.0f
data merge entity @s {HandDropChances:[0.0f,0.0f],DeathLootTable:"siscu:entities/special_zombie_loot"}

tag @s remove siscu.unequipped