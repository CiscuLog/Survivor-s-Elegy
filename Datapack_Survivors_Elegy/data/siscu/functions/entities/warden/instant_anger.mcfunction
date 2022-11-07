

data modify storage siscu:volatile anger.suspects.uuid set from entity @s UUID

execute at @s run execute as @e[type=warden,distance=..100] run function siscu:entities/warden/apply_anger