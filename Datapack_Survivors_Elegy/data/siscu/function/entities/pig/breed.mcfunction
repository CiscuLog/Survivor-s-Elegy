
# Tag the entity as checked
tag @s add siscu.pig_checked

# Run the randomiser
execute at @s if predicate siscu:utils/50_percent positioned ~-0.05 ~ ~0.1 run function siscu:entities/pig/add_pig
execute at @s if predicate siscu:utils/50_percent positioned ~-0.05 ~ ~-0.1 run function siscu:entities/pig/add_pig
execute at @s if predicate siscu:utils/50_percent positioned ~0.1 ~ ~ run function siscu:entities/pig/add_pig
