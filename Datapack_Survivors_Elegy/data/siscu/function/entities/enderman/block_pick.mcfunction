## Get a random integer
# The number depends on the progression of the nearest player!
execute store result storage siscu:volatile x int 1 run random value 0..79
execute at @s if entity @p[advancements={minecraft:story/enter_the_nether=true}] store result storage siscu:volatile x int 1 run random value 0..100
execute at @s if entity @p[advancements={minecraft:story/enter_the_end=true}] store result storage siscu:volatile x int 1 run random value 0..104


## Pick block depending on the new value
# get from list
function siscu:entities/enderman/block_pick_macro with storage siscu:volatile

# set holding block
function siscu:entities/enderman/block_pick_macro2 with storage siscu:volatile

# end
data remove storage siscu:volatile string_list