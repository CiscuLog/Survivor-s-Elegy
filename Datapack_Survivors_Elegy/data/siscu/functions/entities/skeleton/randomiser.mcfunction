# Tag the entity as checked

tag @s add skeleton_checked

# Run the randomiser

## Piglin skeletons
execute at @s if predicate siscu:utils/75_percent if predicate siscu:utils/check_the_nether run tag @s add piglin
execute if entity @s[tag=piglin] run function siscu:entities/skeleton/piglin

## Villager Skeletons
execute at @s if predicate siscu:utils/5_percent if predicate siscu:utils/check_overworld run tag @s add villager
execute at @s if predicate siscu:locations/check_village run tag @s add villager
execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s[tag=villager] weapon loot siscu:groups/villager_skeleton_weapons
loot replace entity @s[tag=villager] armor.head loot siscu:groups/villager_skeleton_heads_natural

data modify entity @s[tag=villager] ArmorDropChances[3] set value 0.0f
data modify entity @s[tag=piglin] ArmorDropChances[3] set value 0.0f

execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s[tag=!villager,tag=!piglin] weapon loot siscu:groups/skeleton_weapons
execute if predicate siscu:utils/10_percent run loot replace entity @s[tag=!villager,tag=!piglin] weapon.offhand loot siscu:groups/skeleton_shields