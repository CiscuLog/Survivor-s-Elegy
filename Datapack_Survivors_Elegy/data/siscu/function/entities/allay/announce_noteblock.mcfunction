
effect give @s glowing 1 0 true

data modify storage siscu:volatile x set from entity @s Brain.memories."minecraft:liked_noteblock".value.pos[0]
data modify storage siscu:volatile y set from entity @s Brain.memories."minecraft:liked_noteblock".value.pos[1]
data modify storage siscu:volatile z set from entity @s Brain.memories."minecraft:liked_noteblock".value.pos[2]

tag @s add siscu.allay_objective
function siscu:entities/allay/raycast_start with storage siscu:volatile
tag @s remove siscu.allay_objective
