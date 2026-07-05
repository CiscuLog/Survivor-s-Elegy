
item replace entity @s armor.head with minecraft:small_dripleaf[item_model="siscu_se:dripleaf_head_0"]
loot replace entity @s[predicate=!siscu:utils/is_baby] weapon.mainhand loot siscu:entities/zombie/zombie_weapons
item replace entity @s weapon.offhand with minecraft:small_dripleaf[item_model="siscu_se:dripleaf_hand_0"]
data merge entity @s {drop_chances:{head:0.0,mainhand:0.0,offhand:0.0},DeathLootTable:"siscu:entities/special_zombie_loot"}

tag @s remove siscu.unequipped