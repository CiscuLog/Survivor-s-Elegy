item replace entity @s armor.head with minecraft:amethyst_shard[custom_model_data=540000]

data merge entity @s {DeathLootTable:"siscu:entities/special_zombie_loot"}

data modify entity @s ArmorDropChances[3] set value 0.0f


tag @s remove unequipped