item replace entity @s armor.head with minecraft:pointed_dripstone[custom_model_data=548100]
loot replace entity @s weapon loot siscu:items/combat/dripstone_chunk
execute if predicate siscu:utils/10_percent run loot replace entity @s weapon.offhand loot siscu:entities/zombie/zombie_shields

attribute @s minecraft:generic.attack_damage base set 5
data modify entity @s ArmorDropChances[3] set value 0.0f
data merge entity @s {HandDropChances:[0.0f,0.0f],CanPickUpLoot:0b}

tag @s remove unequipped