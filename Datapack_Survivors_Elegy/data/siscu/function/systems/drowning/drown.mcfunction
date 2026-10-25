
data merge storage siscu:volatile {data:{entity:"drowned",data:{}}}
data modify storage siscu:volatile data.data set from entity @s
data remove storage siscu:volatile data.data.UUID
# reset drowning
data modify storage siscu:volatile data.data.DrownedConversionTime set value -1

execute if entity @s[type=husk] run data modify storage siscu:volatile data.entity set value "zombie"
#execute if entity @s[type=frostbite] run data modify storage siscu:volatile data.data.entity set value "zombie"

function siscu:entities/generic/transformation with storage siscu:volatile data
data remove storage siscu:volatile data
function siscu:world/kill_dead
