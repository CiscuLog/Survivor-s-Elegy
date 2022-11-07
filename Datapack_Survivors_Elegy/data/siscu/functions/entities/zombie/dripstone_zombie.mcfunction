item replace entity @s armor.head with minecraft:pointed_dripstone{CustomModelData:548100}
loot replace entity @s weapon loot siscu:items/weapons/dripstone_chunk
execute if predicate siscu:utils/10_percent run loot replace entity @s weapon.offhand loot siscu:entities/zombie/zombie_shields

attribute @s minecraft:generic.attack_damage base set 5
data merge entity @s {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],CanPickUpLoot:0b}

tag @s remove unequipped