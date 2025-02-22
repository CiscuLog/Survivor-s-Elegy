$summon zombie_villager ~ ~ ~ {Tags:["siscu.zombified","siscu.zombie_checked"],ArmorItems:$(ArmorItems),HandItems:$(HandItems),ArmorDropChances:$(ArmorDropChances),HandDropChances:$(HandDropChances),Rotation:$(Rotation),FallDistance:$(FallDistance),\
\
VillagerData:{profession:"minecraft:nitwit"},Offers:$(Offers),Inventory:$(Inventory)\
\
}

execute if data entity @s DeathLootTable run data modify entity @n[tag=converted] DeathLootTable set from entity @s DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=converted] CustomName set from entity @s CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=converted] CustomNameVisible set from entity @s CustomNameVisible

# set zombified illager data
execute as @n[type=zombie_villager,tag=siscu.zombified] run function siscu:entities/zombified_illager/wandering_trader

playsound siscu_se:entity.pillager.converted_to_zombified hostile @a ~ ~ ~
function siscu:entities/rotting_mobs/big_particles
effect give @e[type=zombie_villager,tag=siscu.zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[type=zombie_villager,tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead