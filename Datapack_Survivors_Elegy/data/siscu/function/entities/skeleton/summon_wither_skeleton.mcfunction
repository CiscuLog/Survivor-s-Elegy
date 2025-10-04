$summon wither_skeleton ~ ~ ~ {Tags:["siscu.entity_checked","siscu.skeleton_checked","converted","withered"],Rotation:$(Rotation),fall_distance:$(fall_distance),\
\
LeftHanded:$(LeftHanded),PersistenceRequired:$(PersistenceRequired),CanPickUpLoot:$(CanPickUpLoot)\
\
}

execute if data entity @s drop_chances run data modify entity @n[tag=converted] drop_chances set from entity @n[type=skeleton] drop_chances
execute if data entity @s equipment run data modify entity @n[tag=converted] equipment set from entity @n[type=skeleton] equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=converted] DeathLootTable set from entity @n[type=skeleton] DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=converted] CustomName set from entity @n[type=skeleton] CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=converted] CustomNameVisible set from entity @n[type=skeleton] CustomNameVisible

execute if entity @s[tag=piglin] run loot replace entity @n[tag=converted] armor.head loot siscu:entities/wither_skeleton/wither_skeleton_piglin_skulls
execute if entity @s[tag=villager] run loot replace entity @n[tag=converted] armor.head loot siscu:entities/wither_skeleton/wither_skeleton_illager_skulls

data modify entity @n[tag=converted] Tags append from entity @s Tags[]


execute if entity @s[tag=baby] as @n[tag=converted] run function siscu:entities/skeleton/summon_wither_baby

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
particle minecraft:smoke ~ ~1.3 ~ 0 0.3 0 0.06 30

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=converted] remove converted
function siscu:world/kill_dead