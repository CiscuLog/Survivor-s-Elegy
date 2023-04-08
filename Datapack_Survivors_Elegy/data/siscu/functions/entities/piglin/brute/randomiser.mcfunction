# Tag the entity as checked

tag @s add piglin_checked

data merge entity @s {IsImmuneToZombification: 1b}

# Run the randomiser

loot replace entity @s armor.head loot siscu:entities/piglin/brute/helmets
loot replace entity @s weapon loot siscu:entities/piglin/brute/weapons

data modify entity @s ArmorDropChances[3] set value 0.0f