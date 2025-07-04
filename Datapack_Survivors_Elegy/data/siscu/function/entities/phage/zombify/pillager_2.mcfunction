$summon zombie_villager ~ ~ ~ {Tags:["siscu.zombified","siscu.zombie_checked"],Rotation:$(Rotation),fall_distance:$(fall_distance),\
\
VillagerData:{profession:"none"}\
\
}

execute if data entity @s drop_chances run data modify entity @n[tag=siscu.zombified] drop_chances set from entity @n[type=pillager] drop_chances
execute if data entity @s equipment run data modify entity @n[tag=siscu.zombified] equipment set from entity @n[type=pillager] equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=siscu.zombified] DeathLootTable set from entity @n[type=pillager] DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=siscu.zombified] CustomName set from entity @n[type=pillager] CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=siscu.zombified] CustomNameVisible set from entity @n[type=pillager] CustomNameVisible
