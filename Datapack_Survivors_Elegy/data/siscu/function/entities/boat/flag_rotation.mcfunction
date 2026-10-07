
# get y rotation
execute on vehicle on vehicle run data modify storage siscu:volatile data.calc.deg1 set from entity @s Rotation[0]
data modify storage siscu:volatile data.calc.deg2 set from entity @s Rotation[0]

function siscu:entities/boat/rotation_macro with storage siscu:volatile data.calc
data remove storage siscu:volatile data.calc

return run data merge entity @s {interpolation_duration:10,start_interpolation:0}
