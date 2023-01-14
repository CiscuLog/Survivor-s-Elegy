
data merge storage siscu:volatile {anger:{suspects:[{anger:150}]}}
data modify storage siscu:volatile anger.suspects[0].uuid set from entity @s UUID

execute at @s run execute as @e[type=warden,distance=..100] run function siscu:entities/warden/apply_anger