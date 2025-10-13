$summon zombie_horse ~ ~ ~ {Tags:["siscu.zombified"],Rotation:$(Rotation),fall_distance:$(fall_distance),\
\
Tame:$(Tame),Age:$(Age),attributes:$(attributes),PersistenceRequired:$(PersistenceRequired)\
\
}

execute if data entity @s drop_chances run data modify entity @n[tag=siscu.zombified] drop_chances set from entity @n[type=horse] drop_chances
execute if data entity @s equipment run data modify entity @n[tag=siscu.zombified] equipment set from entity @n[type=horse] equipment
execute if data entity @s DeathLootTable run data modify entity @n[tag=siscu.zombified] DeathLootTable set from entity @n[type=horse] DeathLootTable
execute if data entity @s CustomName run data modify entity @n[tag=siscu.zombified] CustomName set from entity @n[type=horse] CustomName
execute if data entity @s CustomNameVisible run data modify entity @n[tag=siscu.zombified] CustomNameVisible set from entity @n[type=horse] CustomNameVisible

execute if predicate siscu:entities/has_wax_armor run tag @n[tag=siscu.zombified] add siscu.rotting_protected
execute if predicate siscu:entities/has_wax_armor run tag @n[tag=siscu.zombified] add siscu.rot_checked
execute if predicate siscu:entities/has_wax_armor at @n[tag=siscu.zombified] run particle minecraft:item{item:{"id":"leather_horse_armor","components":{"item_model":"siscu_se:wax_horse_armor"}}} ~ ~1 ~ 0.3 0.2 0.3 0.05 50
execute if predicate siscu:entities/has_wax_armor run playsound minecraft:block.honey_block.hit neutral @a ~ ~ ~ 1 0.8

playsound minecraft:entity.zombie_horse.death neutral @a ~ ~ ~ 1 0.8
effect give @n[tag=siscu.zombified] slowness 3 2 true
effect give @n[tag=siscu.zombified] fire_resistance infinite 1 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead