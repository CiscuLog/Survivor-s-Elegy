
# Death of custom stuff
execute as @e[type=#siscu:glowing_invulnerable,tag=fire_spring] run tag @s add se_dead_entity
execute as @e[type=#siscu:glowing_invulnerable,tag=siscu.sculk_plantoid] run tag @s add se_dead_entity
execute as @e[type=marker,tag=breach] run tag @s add se_dead_entity
execute as @e[type=#siscu:glowing_invulnerable,tag=siscu.broth_cauldron] run tag @s add se_dead_entity
execute as @e[type=#siscu:glowing_invulnerable,tag=siscu.mirage_display] run tag @s add se_dead_entity

execute if entity @e[type=#siscu:glowing_invulnerable,tag=se_dead_entity] run function siscu:kill_schedule

# Wolf regression to base wolf
execute as @e[type=wolf] if predicate siscu:se_wolf run tag @s add se_wolf_regression
execute if entity @e[tag=se_wolf_regression] run function siscu:wolf_regression_schedule

schedule function siscu:remove_stuff 120s
