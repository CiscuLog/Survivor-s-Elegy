
execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s weapon loot siscu:entities/skeleton/piglin_skeleton_weapons

loot replace entity @s weapon.offhand loot siscu:entities/piglin/piglin_shields
loot replace entity @s armor.head loot siscu:entities/skeleton/skeleton_heads_piglin
loot replace entity @s armor.chest loot siscu:entities/piglin/piglin_chestplates
loot replace entity @s armor.legs loot siscu:entities/piglin/piglin_leggings
loot replace entity @s armor.feet loot siscu:entities/piglin/piglin_boots

execute if predicate siscu:entities/skeleton_bow run data merge entity @s {HandDropChances:[0.0f,0.0f]}
data modify entity @s ArmorDropChances[3] set value 0.0f