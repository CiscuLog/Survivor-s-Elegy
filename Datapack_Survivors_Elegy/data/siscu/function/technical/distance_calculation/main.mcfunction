# Distance calculation module
# Based off "Triton365"'s method

# Requires a vector in siscu:volatile {Vector:[0.0f, 0.0f, 0.0f]}
# Returns a rounded score in d siscu.volatile and stores the full value in siscu:volatile {d: 0.0f}

execute positioned 0 0 0 unless entity @n[type=block_display,tag=siscu.distance_calculation,distance=..10] run tellraw @a {text:"Error found performing distance calculation, returning '1'"}

# store vector
execute store result storage siscu:volatile v_x float 1 run data get storage siscu:volatile Vector[0]
execute store result storage siscu:volatile v_y float 1 run data get storage siscu:volatile Vector[1]
execute store result storage siscu:volatile v_z float 1 run data get storage siscu:volatile Vector[2]

# return distance in a scoreboard value
execute positioned 0 0 0 as @n[type=block_display,tag=siscu.distance_calculation,distance=..10] run function siscu:technical/distance_calculation/macro with storage siscu:volatile

#tellraw @a [{text:"Distance:"},{"storage": "siscu:volatile","nbt": "d"},{text: ", score -> "},{"score": {"name": "d","objective": "siscu.volatile"}}]

return run execute store result score d siscu.volatile run data get storage siscu:volatile d