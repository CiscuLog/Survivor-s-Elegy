$summon camel_husk ~ ~ ~ {Tags:["siscu.zombified"],Rotation:$(Rotation),fall_distance:$(fall_distance),\
\
Tame:$(Tame),Age:$(Age),attributes:$(attributes),PersistenceRequired:$(PersistenceRequired)\
\
}

execute if data entity @s drop_chances run data modify entity @n[tag=siscu.zombified] drop_chances set from entity @n[type=camel] drop_chances
execute if data entity @s equipment run data modify entity @n[tag=siscu.zombified] equipment set from entity @n[type=camel] equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=siscu.zombified] DeathLootTable set from entity @n[type=camel] DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=siscu.zombified] CustomName set from entity @n[type=camel] CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=siscu.zombified] CustomNameVisible set from entity @n[type=camel] CustomNameVisible


playsound minecraft:entity.camel.death neutral @a ~ ~ ~ 1 0.8
effect give @n[tag=siscu.zombified] slowness 3 2 true
effect give @n[tag=siscu.zombified] fire_resistance infinite 1 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead