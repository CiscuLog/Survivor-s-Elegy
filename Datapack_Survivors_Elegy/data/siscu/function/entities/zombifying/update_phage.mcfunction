
# return if it's > 0
execute unless score @s siscu.zombifying matches ..-1 run return 0

# get duration
execute store result score phage_time siscu.volatile run data get entity @s active_effects[{id:"minecraft:unluck"}].duration

# set to seconds
scoreboard players operation phage_time siscu.volatile /= 20 siscu.integer
# invert it (negative values)
execute if score phage_time siscu.volatile matches 0.. run scoreboard players operation phage_time siscu.volatile *= -1 siscu.integer

# if @s < phage_time, @s = phage_time
execute if score @s siscu.zombifying < phage_time siscu.volatile run scoreboard players operation @s siscu.zombifying = phage_time siscu.volatile

effect clear @s unluck
function siscu:entities/zombifying/apply_phage