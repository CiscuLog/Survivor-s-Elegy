
# Tag the entity as checked
tag @s add siscu.pig_checked

# Tag entities that can can pass the Variant tag
tag @s add siscu.pig_variant
tag @e[type=pig,predicate=siscu:utils/is_not_baby,distance=..2,limit=2,sort=nearest] add siscu.pig_variant

# Stop if there are too many baby pigs already
execute store result score x siscu.volatile if entity @e[type=pig,predicate=siscu:utils/is_baby,distance=..1]
execute if score x siscu.volatile matches 4.. run return run tag @e[type=pig,tag=siscu.pig_variant] remove siscu.pig_variant

# Run the randomiser
execute at @s if predicate siscu:utils/50_percent positioned ~-0.05 ~ ~0.1 run function siscu:entities/pig/add_pig with entity @e[type=pig,tag=siscu.pig_variant,limit=1,sort=random]
execute at @s if predicate siscu:utils/50_percent positioned ~-0.05 ~ ~-0.1 run function siscu:entities/pig/add_pig with entity @e[type=pig,tag=siscu.pig_variant,limit=1,sort=random]
execute at @s if predicate siscu:utils/50_percent positioned ~0.1 ~ ~ run function siscu:entities/pig/add_pig with entity @e[type=pig,tag=siscu.pig_variant,limit=1,sort=random]
tag @e[type=pig,tag=siscu.pig_variant] remove siscu.pig_variant
