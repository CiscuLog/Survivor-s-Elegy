$summon zombie_nautilus ~ ~ ~ {Tags:["siscu.zombified"],Rotation:$(Rotation),fall_distance:$(fall_distance)}

execute if data entity @s drop_chances run data modify entity @n[tag=siscu.zombified] drop_chances set from entity @s drop_chances
execute if data entity @s equipment run data modify entity @n[tag=siscu.zombified] equipment set from entity @s equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=siscu.zombified] DeathLootTable set from entity @s DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=siscu.zombified] CustomName set from entity @s CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=siscu.zombified] CustomNameVisible set from entity @s CustomNameVisible

execute at @s if biome ~ ~ ~ #spawns_coral_variant_zombie_nautilus run data merge entity @n[type=zombie_nautilus,tag=siscu.zombified] {variant:"minecraft:warm"}

#playsound minecraft:entity.nautilus.death hostile @a ~ ~ ~
playsound entity.nautilus.death hostile @a ~ ~ ~
particle minecraft:angry_villager ~ ~ ~ 0.2 0.2 0.2 1 10 normal
effect give @e[tag=siscu.zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead