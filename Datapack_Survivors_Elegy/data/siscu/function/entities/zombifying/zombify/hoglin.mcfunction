$summon zoglin ~ ~ ~ {Tags:["siscu.zombified"],Age:$(Age),attributes:$(attributes),PersistenceRequired:$(PersistenceRequired),Rotation:$(Rotation),FallDistance:$(FallDistance)}

execute if data entity @s DeathLootTable run data modify entity @n[tag=converted] DeathLootTable set from entity @s DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=converted] CustomName set from entity @s CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=converted] CustomNameVisible set from entity @s CustomNameVisible

playsound minecraft:entity.hoglin.converted_to_zombified neutral @a ~ ~ ~ 1 0.8
effect give @e[tag=siscu.zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead