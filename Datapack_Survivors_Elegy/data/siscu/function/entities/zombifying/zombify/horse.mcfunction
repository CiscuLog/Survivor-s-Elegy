$summon zombie_horse ~ ~ ~ {Tags:["siscu.zombified"],ArmorItems:$(ArmorItems),HandItems:$(HandItems),ArmorDropChances:$(ArmorDropChances),HandDropChances:$(HandDropChances),Rotation:$(Rotation),FallDistance:$(FallDistance),\
\
Tame:$(Tame),Age:$(Age),attributes:$(attributes),PersistenceRequired:$(PersistenceRequired)\
\
}

execute if data entity @s SaddleItem run data modify entity @n[tag=converted] SaddleItem set from entity @s SaddleItem
execute if data entity @s DeathLootTable run data modify entity @n[tag=converted] DeathLootTable set from entity @s DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=converted] CustomName set from entity @s CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=converted] CustomNameVisible set from entity @s CustomNameVisible

execute if predicate siscu:entities/has_wax_armor run tag @n[tag=siscu.zombified] add siscu.rotting_protected
execute if predicate siscu:entities/has_wax_armor run tag @n[tag=siscu.zombified] add siscu.rot_checked
execute if predicate siscu:entities/has_wax_armor at @n[tag=siscu.zombified] run particle minecraft:item{item:{"id":"leather_horse_armor","components":{"item_model":"siscu_se:wax_horse_armor"}}} ~ ~1 ~ 0.3 0.2 0.3 0.05 50
execute if predicate siscu:entities/has_wax_armor run playsound minecraft:block.honey_block.hit neutral @a ~ ~ ~ 1 0.8

playsound minecraft:entity.zombie_horse.death neutral @a ~ ~ ~ 1 0.8
effect give @e[tag=siscu.zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead