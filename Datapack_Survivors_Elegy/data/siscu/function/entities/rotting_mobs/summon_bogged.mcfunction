$summon bogged ~ ~ ~ {Tags:["siscu.bogged_checked","converted","rotten"],Rotation:$(Rotation),fall_distance:$(fall_distance),\
\
LeftHanded:$(LeftHanded),PersistenceRequired:$(PersistenceRequired),CanPickUpLoot:$(CanPickUpLoot)\
\
}

execute if entity @s[predicate=siscu:utils/is_baby,tag=!set_scale] run function siscu:entities/rotting_mobs/set_size

execute if data entity @s drop_chances run data modify entity @n[tag=converted] drop_chances set from entity @s drop_chances
execute if data entity @s equipment run data modify entity @n[tag=converted] equipment set from entity @s equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=converted] DeathLootTable set from entity @s DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=converted] CustomName set from entity @s CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=converted] CustomNameVisible set from entity @s CustomNameVisible
data modify entity @n[tag=converted] Tags append from entity @s Tags[]

execute if entity @s[tag=baby] as @n[tag=converted] run function siscu:entities/rotting_mobs/set_size_2 {Scale:0.5}

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
function siscu:entities/rotting_mobs/big_particles
effect give @e[tag=converted] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=converted] remove converted
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead