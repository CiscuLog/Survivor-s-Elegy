# Tag the entity as checked

tag @s add skeleton_checked

# Replace items


execute at @s if predicate siscu:utils/1_percent run tag @s add villager
execute at @s[tag=!villager] if predicate siscu:utils/75_percent run tag @s add piglin

execute as @s[tag=villager] run function siscu:entities/wither_skeleton/withered_illager_skeleton
execute as @s[tag=piglin] run function siscu:entities/wither_skeleton/withered_piglin_skeleton
execute as @s[tag=!villager,tag=!piglin] run function siscu:entities/wither_skeleton/withered_player_skeleton
