# Tag the entity as checked

tag @s add siscu.piglin_checked

data merge entity @s {IsImmuneToZombification: 1b}

# Run the randomiser

loot replace entity @s armor.head loot siscu:entities/piglin/brute/helmets
loot replace entity @s weapon loot siscu:entities/piglin/brute/weapons

data merge entity @s {drop_chances:{head:0.0}}