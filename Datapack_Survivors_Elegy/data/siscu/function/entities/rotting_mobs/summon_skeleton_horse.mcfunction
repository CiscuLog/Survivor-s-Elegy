$summon skeleton_horse ~ ~ ~ {Tags:["converted","rotten_horse"],ArmorItems:$(ArmorItems),HandItems:$(HandItems),ArmorDropChances:$(ArmorDropChances),HandDropChances:$(HandDropChances),Rotation:$(Rotation),FallDistance:$(FallDistance),\
\
Tame:$(Tame),Age:$(Age),attributes:$(attributes),PersistenceRequired:$(PersistenceRequired)\
\
}

execute if data entity @s DeathLootTable run data modify entity @n[tag=converted] DeathLootTable set from entity @s DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=converted] CustomName set from entity @s CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=converted] CustomNameVisible set from entity @s CustomNameVisible

playsound minecraft:entity.skeleton_horse.death neutral @a ~ ~ ~
playsound minecraft:entity.skeleton.converted_to_stray neutral @a ~ ~ ~ 1 0.8
function siscu:entities/rotting_mobs/big_particles
effect give @e[tag=converted] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=converted] remove converted
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead