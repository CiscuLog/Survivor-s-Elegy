
data modify storage siscu:volatile Vector set from entity @s Pos

execute store result storage siscu:volatile x double 1. run data get storage siscu:volatile Vector[0] 1.
execute store result storage siscu:volatile y double 1. run data get storage siscu:volatile Vector[1] 1.
execute store result storage siscu:volatile z double 1. run data get storage siscu:volatile Vector[2] 1.
data modify storage siscu:volatile d set compute entity @s float \
{type:"ceil","input":{\
    type:"length",inputs:[\
        {type:"sub",left:{type:"storage",storage:"siscu:volatile",path:"Vector[0]"},right:{type:"storage",storage:"siscu:volatile",path:"Pos[0]"}},\
        {type:"sub",left:{type:"storage",storage:"siscu:volatile",path:"Vector[1]"},right:{type:"storage",storage:"siscu:volatile",path:"Pos[1]"}},\
        {type:"sub",left:{type:"storage",storage:"siscu:volatile",path:"Vector[2]"},right:{type:"storage",storage:"siscu:volatile",path:"Pos[2]"}}\
]}}

function siscu:items/use/bell_void_shard/vibration with storage siscu:volatile
