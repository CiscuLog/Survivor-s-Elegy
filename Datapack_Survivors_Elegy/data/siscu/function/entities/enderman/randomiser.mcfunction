# Tag the entity as checked

tag @s add siscu.enderman_checked

# Run the randomiser
execute at @s if dimension the_end run return run execute if predicate siscu:random/enderman_chance_the_end run function siscu:entities/enderman/block_pick
execute at @s if dimension the_nether run return run execute if predicate siscu:random/enderman_chance_the_nether run function siscu:entities/enderman/block_pick
execute at @s if dimension overworld run return run execute if predicate siscu:random/enderman_chance_overworld run function siscu:entities/enderman/block_pick
