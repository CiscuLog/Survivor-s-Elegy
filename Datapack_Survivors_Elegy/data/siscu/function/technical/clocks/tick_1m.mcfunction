
## Withering ##
execute if score withering siscu.integer matches 1 as @e[type=#siscu:withering_vulnerable,tag=!withering_invulnerable,tag=!smithed.entity] at @s run function siscu:world/withering/withering

## Warped Poisoning ##
execute as @a if score @s siscu.warped_food matches 1.. at @s unless biome ~ ~ ~ warped_forest run function siscu:world/warped_food/warped_food_recover

schedule function siscu:technical/clocks/tick_1m 60s
