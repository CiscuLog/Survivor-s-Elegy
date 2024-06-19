
tag @s add pillager_checked

execute if predicate siscu:entities/is_patrolling if predicate siscu:entities/is_patrol_leader run tag @s add is_patrol_leader
execute unless entity @s[tag=is_patrol_leader] run return 0

execute at @s run loot spawn ~ ~ ~ loot siscu:entities/pillager/patrol_leader_map
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.SE_data.PatrolMap run function siscu:entities/pillager/store_outpost_coordinates
data merge entity @s[tag=is_patrol_leader] {DeathLootTable:"siscu:entities/pillager/patrol_leader"}