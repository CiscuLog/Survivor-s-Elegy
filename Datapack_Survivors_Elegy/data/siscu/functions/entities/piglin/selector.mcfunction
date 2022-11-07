# Tag the entity as checked

tag @s add piglin_checked

data merge entity @s {IsImmuneToZombification: 1b}

# Run the randomiser

execute unless predicate siscu:utils/is_baby run function siscu:entities/piglin/adult_randomiser