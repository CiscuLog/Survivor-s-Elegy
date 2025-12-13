# Tag the entity as checked

tag @s add siscu.skeleton_checked

# Replace items

execute at @s if predicate siscu:locations/check_nether_fortress run tag @s add siscu.player
execute at @s[tag=!siscu.player] if predicate siscu:utils/1_percent run tag @s add siscu.villager
execute at @s[tag=!siscu.villager,tag=!siscu.player] if predicate siscu:utils/75_percent run tag @s add siscu.piglin

execute as @s[tag=siscu.villager] run function siscu:entities/wither_skeleton/withered_illager_skeleton
execute as @s[tag=siscu.piglin] run function siscu:entities/wither_skeleton/withered_piglin_skeleton
execute as @s[tag=!siscu.villager,tag=!siscu.piglin] run function siscu:entities/wither_skeleton/withered_player_skeleton

## Baby Skeletons
execute if predicate siscu:utils/5_percent run tag @s[tag=!siscu.villager] add siscu.baby
execute if entity @s[tag=siscu.baby] run function siscu:entities/wither_skeleton/baby_skeleton