$summon wither_skeleton ~ ~ ~ {Tags:["siscu.entity_checked","siscu.skeleton_checked","converted","withered"],ArmorItems:$(ArmorItems),HandItems:$(HandItems),ArmorDropChances:$(ArmorDropChances),HandDropChances:$(HandDropChances),Rotation:$(Rotation),FallDistance:$(FallDistance),\
\
LeftHanded:$(LeftHanded),PersistenceRequired:$(PersistenceRequired),CanPickUpLoot:$(CanPickUpLoot)\
\
}

execute if entity @s[tag=piglin] run loot replace entity @n[tag=converted] armor.head loot siscu:entities/wither_skeleton/wither_skeleton_piglin_skulls
execute if entity @s[tag=villager] run loot replace entity @n[tag=converted] armor.head loot siscu:entities/wither_skeleton/wither_skeleton_illager_skulls

data modify entity @n[tag=converted] Tags append from entity @s Tags[]

$execute if data entity @s DeathLootTable run data merge entity @n[tag=converted] {SaddleItem:$(DeathLootTable)}
$execute if data entity @s CustomName run data merge entity @n[tag=converted] {SaddleItem:$(CustomName)}
$execute if data entity @s CustomNameVisible run data merge entity @n[tag=converted] {SaddleItem:$(CustomNameVisible)}


execute if entity @s[tag=baby] as @n[tag=converted] run function siscu:entities/skeleton/summon_wither_baby

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
particle minecraft:smoke ~ ~1.3 ~ 0 0.3 0 0.06 30

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=converted] remove converted
tag @s add siscu.dead
function siscu:world/kill_dead