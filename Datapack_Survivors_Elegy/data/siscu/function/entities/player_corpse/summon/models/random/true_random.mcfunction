
tag @s remove siscu.player_corpse_random

# Situation
execute store result score x siscu.volatile run random value 0..1
execute if score x siscu.volatile matches 0.. run tag @s add siscu.corpse_fleeing
execute if score x siscu.volatile matches 0.. if predicate siscu:utils/50_percent run tag @s add siscu.corpse_infected

# Species
execute store result score y siscu.volatile run random value 0..3
execute if score y siscu.volatile matches 0 run tag @s add siscu.human_model
execute if score y siscu.volatile matches 1 run tag @s add siscu.infected_model
execute if score y siscu.volatile matches 2 run tag @s add siscu.zombie_model
execute if score y siscu.volatile matches 3 run tag @s add siscu.skeleton_model
