
tag @s add pillager_checked

execute if predicate siscu:entities/is_patrolling if predicate siscu:entities/is_patrol_leader run tag @s add is_patrol_leader

data merge entity @s[tag=is_patrol_leader] {DeathLootTable:"siscu:entities/patrol_leader"}