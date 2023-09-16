summon zombie_horse ~ ~ ~ {Tags:["zombified"]}

data modify entity @e[tag=zombified,limit=1,sort=nearest] SaddleItem set from entity @s SaddleItem

data modify entity @e[tag=zombified,limit=1,sort=nearest] Age set from entity @s Age
data modify entity @e[tag=zombified,limit=1,sort=nearest] Attributes set from entity @s Attributes
data modify entity @e[tag=zombified,limit=1,sort=nearest] Tame set from entity @s Tame
data modify entity @e[tag=zombified,limit=1,sort=nearest] CustomName set from entity @s CustomName
data modify entity @e[tag=zombified,limit=1,sort=nearest] PersistenceRequired set from entity @s PersistenceRequired

data modify entity @e[tag=zombified,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=zombified,limit=1,sort=nearest] FallDistance set from entity @s FallDistance

execute if predicate siscu:entities/has_wax_armor run tag @e[tag=zombified,limit=1,sort=nearest] add rotting_protected
execute if predicate siscu:entities/has_wax_armor run tag @e[tag=zombified,limit=1,sort=nearest] add rot_checked
execute if predicate siscu:entities/has_wax_armor at @e[tag=zombified,limit=1,sort=nearest] run particle minecraft:item golden_horse_armor{CustomModelData:548101} ~ ~1 ~ 0.3 0.2 0.3 0.05 50
execute if predicate siscu:entities/has_wax_armor run playsound minecraft:block.honey_block.hit neutral @a ~ ~ ~ 1 0.8

playsound minecraft:entity.zombie_horse.death neutral @a ~ ~ ~ 1 0.8
effect give @e[tag=zombified] slowness 3 2 true

execute on passengers run ride @s dismount
tag @e[tag=zombified] remove zombified
tp @s[type=!player] ~ -200 ~
kill @s