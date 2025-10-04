$summon wither_skeleton ~ ~ ~ {Tags:["siscu.entity_checked","bogged_checned","converted","withered"],Rotation:$(Rotation),fall_distance:$(fall_distance),\
\
LeftHanded:$(LeftHanded),PersistenceRequired:$(PersistenceRequired),CanPickUpLoot:$(CanPickUpLoot)\
\
}

execute if data entity @s drop_chances run data modify entity @n[tag=converted] drop_chances set from entity @n[type=skeleton] drop_chances
execute if data entity @s equipment run data modify entity @n[tag=converted] equipment set from entity @n[type=skeleton] equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=converted] DeathLootTable set from entity @n[type=skeleton] DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=converted] CustomName set from entity @n[type=skeleton] CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=converted] CustomNameVisible set from entity @n[type=skeleton] CustomNameVisible
execute unless items entity @s armor.head air run item replace entity @n[tag=converted] armor.head from entity @s armor.head
execute if items entity @s armor.head air run item replace entity @n[tag=converted] armor.head with small_dripleaf[item_model="siscu_se:bogged_shrooms"]

data modify entity @n[tag=converted] Tags append from entity @s Tags[]



execute if entity @s[tag=baby] as @n[tag=converted] run function siscu:entities/bogged/summon_wither_baby

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
particle minecraft:smoke ~ ~1.3 ~ 0 0.3 0 0.06 30

execute on passengers run ride @s dismount
ride @s dismount
tag @n[tag=converted] remove converted
function siscu:world/kill_dead