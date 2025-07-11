$summon zombified_piglin ~ ~ ~ {Tags:["siscu.zombified","siscu.piglin_checked"],Rotation:$(Rotation),fall_distance:$(fall_distance),\
\
LeftHanded:$(LeftHanded),PersistenceRequired:$(PersistenceRequired),CanPickUpLoot:$(CanPickUpLoot)\
\
IsBaby:$(IsBaby),Inventory:$(Inventory)\
\
}

execute if data entity @s drop_chances run data modify entity @n[tag=siscu.zombified] drop_chances set from entity @n[type=piglin] drop_chances
execute if data entity @s equipment run data modify entity @n[tag=siscu.zombified] equipment set from entity @n[type=piglin] equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=siscu.zombified] DeathLootTable set from entity @n[type=piglin] DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=siscu.zombified] CustomName set from entity @n[type=piglin] CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=siscu.zombified] CustomNameVisible set from entity @n[type=piglin] CustomNameVisible

playsound minecraft:entity.piglin.converted_to_zombified hostile @a ~ ~ ~
function siscu:entities/rotting_mobs/big_particles
effect give @e[tag=siscu.zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead