
execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s weapon loot siscu:entities/wither_skeleton/wither_skeleton_piglin_weapons

loot replace entity @s weapon.offhand loot siscu:groups/piglin_shields
loot replace entity @s armor.head loot siscu:groups/skeleton_heads_piglin
loot replace entity @s armor.chest loot siscu:groups/piglin_chestplates
loot replace entity @s armor.legs loot siscu:groups/piglin_leggings
loot replace entity @s armor.feet loot siscu:groups/piglin_boots

execute if predicate siscu:entities/skeleton_bow run data merge entity @s {HandDropChances:[0.0f,0.0f]}
data modify entity @s ArmorDropChances[3] set value 0.0f