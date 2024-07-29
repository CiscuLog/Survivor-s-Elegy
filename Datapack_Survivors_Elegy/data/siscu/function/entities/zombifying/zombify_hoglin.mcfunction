summon zoglin ~ ~ ~ {Tags:["zombified"]}

data modify entity @e[tag=zombified,limit=1,sort=nearest] Age set from entity @s Age
data modify entity @e[tag=zombified,limit=1,sort=nearest] Attributes set from entity @s Attributes
data modify entity @e[tag=zombified,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[tag=zombified,limit=1,sort=nearest] PersistenceRequired set from entity @s PersistenceRequired

data modify entity @e[tag=zombified,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=zombified,limit=1,sort=nearest] FallDistance set from entity @s FallDistance

playsound minecraft:entity.hoglin.converted_to_zombified neutral @a ~ ~ ~ 1 0.8
effect give @e[tag=zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=zombified] remove zombified
tag @s[type=!player] add dead
function siscu:world/kill_dead