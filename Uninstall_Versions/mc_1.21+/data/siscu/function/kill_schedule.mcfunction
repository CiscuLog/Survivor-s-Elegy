
execute as @e[tag=se_dead_entity,limit=1,sort=random] at @s run function siscu:kill_feature

execute if entity @e[tag=se_dead_entity] run schedule function siscu:kill_schedule 10t