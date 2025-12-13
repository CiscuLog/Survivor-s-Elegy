# Tag the entity as checked

tag @s add siscu.skeleton_checked

# Run the randomiser
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

## Piglin skeletons
execute at @s if predicate siscu:utils/75_percent if dimension the_nether run tag @s[tag=!siscu.husk_skeleton,tag=!siscu.villager] add siscu.piglin
execute if entity @s[tag=siscu.piglin] run function siscu:entities/skeleton/piglin

## Villager Skeletons
execute at @s if predicate siscu:utils/5_percent if dimension overworld run tag @s[tag=!siscu.husk_skeleton,tag=!siscu.piglin] add siscu.villager
execute at @s if predicate siscu:locations/check_village run tag @s[tag=!siscu.piglin] add siscu.villager
execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s[tag=siscu.villager] weapon loot siscu:entities/skeleton/villager_skeleton_weapons
loot replace entity @s[tag=siscu.villager] armor.head loot siscu:entities/skeleton/villager_skeleton_heads_natural
data merge entity @s[tag=siscu.villager] {drop_chances:{head:0.0}}

## Husk Skeletons
#execute at @s[tag=!villager] if biome ~ ~ ~ desert if predicate siscu:locations/check_surface if predicate siscu:utils/80_percent run tag @s add siscu.husk_skeleton
#execute if entity @s[tag=siscu.husk_skeleton] run function siscu:entities/skeleton/husk_skeleton

execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s[tag=!siscu.villager,tag=!siscu.piglin] weapon loot siscu:entities/skeleton/skeleton_weapons
execute if predicate siscu:utils/10_percent run loot replace entity @s[tag=!siscu.villager,tag=!siscu.piglin] weapon.offhand loot siscu:entities/skeleton/skeleton_shields

## Baby Skeletons
execute if predicate siscu:utils/5_percent run tag @s add siscu.baby
execute if entity @s[tag=siscu.baby] run function siscu:entities/skeleton/baby_skeleton