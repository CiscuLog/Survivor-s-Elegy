$summon vex ~ ~ ~ {Tags:["siscu.zombified","siscu.vex_checked"],Rotation:$(Rotation),fall_distance:$(fall_distance),\
\
Inventory:$(Inventory)\
\
}

execute if data entity @s drop_chances run data modify entity @n[tag=siscu.zombified] drop_chances set from entity @n[type=skeleton] drop_chances
execute if data entity @s equipment run data modify entity @n[tag=siscu.zombified] equipment set from entity @n[type=skeleton] equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=siscu.zombified] DeathLootTable set from entity @n[type=skeleton] DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=siscu.zombified] CustomName set from entity @n[type=skeleton] CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=siscu.zombified] CustomNameVisible set from entity @n[type=skeleton] CustomNameVisible

#playsound minecraft:entity.allay.death hostile @a ~ ~ ~
playsound siscu_se:entity.allay.siscu.zombified_to_zombified hostile @a ~ ~ ~
particle minecraft:angry_villager ~ ~ ~ 0.2 0.2 0.2 1 10 normal
effect give @e[tag=siscu.zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead