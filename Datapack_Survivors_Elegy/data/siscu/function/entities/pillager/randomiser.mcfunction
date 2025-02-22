
tag @s add siscu.pillager_checked

execute if predicate siscu:entities/is_patrolling if predicate siscu:entities/is_patrol_leader run tag @s add siscu.is_patrol_leader
execute unless entity @s[tag=siscu.is_patrol_leader] run return 0

# Summon map
execute at @s run loot spawn ~ ~ ~ loot siscu:entities/pillager/patrol_leader_map
# Store map coordinates
execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data.SE_data.PatrolMap run function siscu:entities/pillager/store_outpost_coordinates
# Store coordinates on new compass, on the offhand
execute if entity @s[tag=siscu.holding_lamp] run tag @s remove siscu.holding_lamp
function siscu:entities/pillager/give_compass with storage siscu:volatile OutpostMap
# Enable compass dropping
# Does this actually work??
execute unless data entity @s {LeftHanded:true} run return run data modify entity @s HandDropChances[1] set value 1.0f
data modify entity @s HandDropChances[0] set value 1.0f
