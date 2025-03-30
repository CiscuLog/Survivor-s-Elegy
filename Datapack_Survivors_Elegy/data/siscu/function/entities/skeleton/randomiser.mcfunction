# Tag the entity as checked

tag @s add siscu.skeleton_checked

# Run the randomiser
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

## Piglin skeletons
execute at @s if predicate siscu:utils/75_percent if dimension the_nether run tag @s[tag=!siscu.husk_skeleton,tag=!villager] add piglin
execute if entity @s[tag=piglin] run function siscu:entities/skeleton/piglin

## Villager Skeletons
execute at @s if predicate siscu:utils/5_percent if dimension overworld run tag @s[tag=!siscu.husk_skeleton] add villager
execute at @s if predicate siscu:locations/check_village run tag @s add villager
execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s[tag=villager] weapon loot siscu:entities/skeleton/villager_skeleton_weapons
loot replace entity @s[tag=villager] armor.head loot siscu:entities/skeleton/villager_skeleton_heads_natural
data merge entity @s[tag=villager] {drop_chances:{head:0.0}}

## Husk Skeletons
execute at @s[tag=!villager] if biome ~ ~ ~ desert if predicate siscu:locations/check_surface if predicate siscu:utils/80_percent run tag @s add siscu.husk_skeleton
execute if entity @s[tag=siscu.husk_skeleton] run function siscu:entities/skeleton/husk_skeleton

execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s[tag=!villager,tag=!piglin] weapon loot siscu:entities/skeleton/skeleton_weapons
execute if predicate siscu:utils/10_percent run loot replace entity @s[tag=!villager,tag=!piglin] weapon.offhand loot siscu:entities/skeleton/skeleton_shields

## Baby Skeletons
execute if predicate siscu:utils/5_percent run tag @s add baby
execute if entity @s[tag=baby] run function siscu:entities/skeleton/baby_skeleton