summon skeleton_horse ~ ~ ~ {Tags:["converted","rotten_horse"]}

data modify entity @e[tag=converted,limit=1,sort=nearest] SaddleItem set from entity @s SaddleItem

data modify entity @e[tag=converted,limit=1,sort=nearest] Age set from entity @s Age
data modify entity @e[tag=converted,limit=1,sort=nearest] Attributes set from entity @s Attributes
data modify entity @e[tag=converted,limit=1,sort=nearest] Tame set from entity @s Tame
data modify entity @e[tag=converted,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[tag=converted,limit=1,sort=nearest] PersistenceRequired set from entity @s PersistenceRequired

data modify entity @e[tag=converted,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=converted,limit=1,sort=nearest] FallDistance set from entity @s FallDistance

playsound minecraft:entity.skeleton_horse.death neutral @a ~ ~ ~
playsound minecraft:entity.skeleton.converted_to_stray neutral @a ~ ~ ~ 1 0.8
function siscu:entities/rotting_mobs/big_particles
effect give @e[tag=converted] slowness 3 2 true

execute on passengers run ride @s dismount
tag @e[tag=converted] remove converted
tag @s[type=!player] add dead
function siscu:world/kill_dead