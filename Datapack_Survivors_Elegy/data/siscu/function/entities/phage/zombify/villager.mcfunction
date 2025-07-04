$summon zombie_villager ~ ~ ~ {Tags:["siscu.zombified","siscu.zombie_checked"],Rotation:$(Rotation),fall_distance:$(fall_distance),\
\
VillagerData:$(VillagerData),Offers:$(Offers),Xp:$(Xp),Age:$(Age),Inventory:$(Inventory)\
\
}

execute if data entity @s drop_chances run data modify entity @n[tag=siscu.zombified] drop_chances set from entity @n[type=villager] drop_chances
execute if data entity @s equipment run data modify entity @n[tag=siscu.zombified] equipment set from entity @n[type=villager] equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=siscu.zombified] DeathLootTable set from entity @n[type=villager] DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=siscu.zombified] CustomName set from entity @n[type=villager] CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=siscu.zombified] CustomNameVisible set from entity @n[type=villager] CustomNameVisible

playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~
function siscu:entities/rotting_mobs/big_particles
effect give @e[tag=siscu.zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead