$summon wither_skeleton ~ ~ ~ {Tags:["siscu.entity_checked","bogged_checned","converted","withered"],ArmorItems:$(ArmorItems),HandItems:$(HandItems),ArmorDropChances:$(ArmorDropChances),HandDropChances:$(HandDropChances),Rotation:$(Rotation),FallDistance:$(FallDistance),\
\
LeftHanded:$(LeftHanded),PersistenceRequired:$(PersistenceRequired),CanPickUpLoot:$(CanPickUpLoot)\
\
}

execute unless items entity @s armor.head air run item replace entity @n[tag=converted] armor.head from entity @s armor.head
execute if items entity @s armor.head air run item replace entity @n[tag=converted] armor.head with small_dripleaf[item_model="siscu_se:bogged_shrooms"]

data modify entity @n[tag=converted] Tags append from entity @s Tags[]

$execute if data entity @s DeathLootTable run data merge entity @n[tag=converted] {SaddleItem:$(DeathLootTable)}
$execute if data entity @s CustomName run data merge entity @n[tag=converted] {SaddleItem:$(CustomName)}
$execute if data entity @s CustomNameVisible run data merge entity @n[tag=converted] {SaddleItem:$(CustomNameVisible)}


execute if entity @s[tag=baby] as @n[tag=converted] run function siscu:entities/bogged/summon_wither_baby

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
particle minecraft:smoke ~ ~1.3 ~ 0 0.3 0 0.06 30

execute on passengers run ride @s dismount
ride @s dismount
tag @n[tag=converted] remove converted
tag @s add siscu.dead
function siscu:world/kill_dead