
tag @s add pillager_checked

execute if predicate siscu:entities/is_patrolling if predicate siscu:entities/is_patrol_leader run tag @s add patrol_leader
data merge entity @s[tag=patrol_leader] {DeathLootTable:"siscu:entities/patrol_leader"}