# Distance calculation module
# Based off "Triton365"'s method

# Requires a vector in siscu:volatile {Vector:[0.0f, 0.0f, 0.0f]}
# Returns a rounded score in d siscu.volatile and stores the full value in siscu:volatile {d: 0.0f}

# d = sqrt(x^2+y^2+z^2)

execute store result score d siscu.volatile run data modify storage siscu:volatile d set compute default float {type:"length",inputs:[\
    {type:"storage",storage:"siscu:volatile",path:"Vector[0]"},\
    {type:"storage",storage:"siscu:volatile",path:"Vector[1]"},\
    {type:"storage",storage:"siscu:volatile",path:"Vector[2]"}\
  ]\
}


tellraw @p [{text:"Distance calc from vector "},{storage:"siscu:volatile",nbt:"Vector"},{text:" -> "},{score:{name:"d",objective:"siscu.volatile"}},{text:"d, "},{storage:"siscu:volatile",nbt:"d"}]

return run scoreboard players get d siscu.volatile
