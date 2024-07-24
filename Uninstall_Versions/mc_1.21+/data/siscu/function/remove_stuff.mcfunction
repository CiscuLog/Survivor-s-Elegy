
execute as @e[tag=fire_spring] run tag @s add se_dead_entity
execute as @e[tag=siscu.sculk_plantoid] run tag @s add se_dead_entity
execute as @e[type=marker,tag=breach] run tag @s add se_dead_entity

execute as @e[tag=se_dead_entity] at @s run particle cloud ~ ~ ~ 0 0 0 0.1 3
execute as @e[tag=se_dead_entity] at @s run kill @s

schedule function siscu:remove_stuff 60s