# Tag the entity as checked

tag @s add skeleton_checked

# Run the randomiser

## Piglin skeletons
execute at @s if predicate siscu:utils/75_percent if predicate siscu:utils/check_the_nether run tag @s add piglin
execute unless predicate siscu:entities/is_riding_skeleton_horse run loot replace entity @s[tag=piglin] weapon loot siscu:groups/piglin_weapons
loot replace entity @s[tag=piglin] weapon.offhand loot siscu:groups/piglin_shields
loot replace entity @s[tag=piglin] armor.head loot siscu:groups/skeleton_heads_piglin
loot replace entity @s[tag=piglin] armor.chest loot siscu:groups/piglin_chestplates
loot replace entity @s[tag=piglin] armor.legs loot siscu:groups/piglin_leggings
loot replace entity @s[tag=piglin] armor.feet loot siscu:groups/piglin_boots

## Villager Skeletons
execute at @s if predicate siscu:utils/5_percent if predicate siscu:utils/check_overworld run tag @s add villager
execute at @s if predicate siscu:locations/check_village run tag @s add villager
execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s[tag=villager] weapon loot siscu:groups/villager_skeleton_weapons
loot replace entity @s[tag=villager] armor.head loot siscu:groups/villager_skeleton_heads_natural

data modify entity @s[tag=villager] ArmorDropChances[3] set value 0.0f
data modify entity @s[tag=piglin] ArmorDropChances[3] set value 0.0f

execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s[tag=!villager,tag=!piglin] weapon loot siscu:groups/skeleton_weapons
execute if predicate siscu:utils/10_percent run loot replace entity @s[tag=!villager,tag=!piglin] weapon.offhand loot siscu:groups/skeleton_shields