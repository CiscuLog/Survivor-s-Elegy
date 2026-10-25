
# set equipment
execute if entity @s[tag=siscu.baby] run function siscu:systems/withering/conversion/skeleton_baby
# head
item replace entity @s[tag=siscu.piglin] armor.head with bone[item_model="siscu_se:piglin_skull_withered"]
item replace entity @s[tag=siscu.villager] armor.head with bone[item_model="siscu_se:villager_skull_withered"]
execute if predicate {type:"entity_properties",entity:"this",predicate:{entity_tags:{any_of:["siscu.piglin","siscu.villager","siscu.baby"]}}} run data modify entity @s drop_chances.head set value 0

# transformation
data merge storage siscu:volatile {data:{data:{},entity:"wither_skeleton"}}
data modify storage siscu:volatile data.data set from entity @s
data remove storage siscu:volatile data.data.UUID

function siscu:entities/generic/transformation with storage siscu:volatile data

playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
particle minecraft:smoke ~ ~1.3 ~ 0 0.3 0 0.06 30

function siscu:world/kill_dead