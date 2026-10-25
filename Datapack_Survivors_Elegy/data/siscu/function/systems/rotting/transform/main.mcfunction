
## Set Rotting Stage ##
execute if score @s siscu.rotting_mob < rotting_timer_limit siscu.integer run return 0
execute as @s if predicate siscu:utils/75_percent run return 0

## Entity Behav ##
execute if score @s siscu.rotting_mob matches 2000.. run return run kill @s
execute if score @s siscu.rotting_mob matches 1000.. run return run damage @s 50 siscu:rotting

# Special Cases
execute if entity @s[type=zoglin] at @s run return run damage @s 2 siscu:rotting
execute if entity @s[type=nautilus] at @s run return run damage @s 2 siscu:rotting
execute if entity @s[type=husk] at @s run return run damage @s 2 siscu:rotting
execute if entity @s[type=#siscu:rotting_mobs_any,type=!#siscu:rotting_mobs_all] at @s run return run function siscu:systems/rotting/transform/generic_passive_mob
execute if entity @s[type=wolf] at @s run return run function siscu:systems/rotting/transform/wolf

execute unless entity @s[type=#siscu:rotting_mobs_all] run return fail
data merge storage siscu:volatile {data:{data:{},entity:"skeleton"}}

# set new entity
execute if entity @s[type=#siscu:rotting_mobs,tag=!siscu.stray_zombie,tag=!siscu.bogged_zombie] run data merge storage siscu:volatile {data:{entity:"skeleton"}}
execute if entity @s[tag=siscu.stray_zombie] run data merge storage siscu:volatile {data:{entity:"stray"}}
execute if entity @s[type=husk] run data merge storage siscu:volatile {data:{entity:"parched"}}
execute if entity @s[tag=siscu.bogged_zombie] run data merge storage siscu:volatile {data:{entity:"bogged"}}
execute if entity @s[type=zombie_villager] run data merge storage siscu:volatile {data:{entity:"skeleton"}}
execute if entity @s[type=zombie_horse] run data merge storage siscu:volatile {data:{entity:"skeleton_horse"}}

# equipment alterations
execute if entity @s[predicate=siscu:utils/is_baby] run tag @s add siscu.baby
execute if entity @s[tag=siscu.baby] run function siscu:systems/rotting/transform/baby_skeleton
execute if entity @s[type=#siscu:skull_exceptions] run function siscu:systems/rotting/transform/custom_skulls
# tags
tag @s add siscu.entity_checked
tag @s[type=#illager] add siscu.villager
tag @s[type=zombified_piglin] add siscu.piglin

# effects
effect give @e[tag=siscu.converted] slowness 3 2 true
playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~
function siscu:systems/rotting/big_particles

# transformation
data modify storage siscu:volatile data.data set from entity @s
data remove storage siscu:volatile data.data.UUID

function siscu:entities/generic/transformation with storage siscu:volatile data
function siscu:world/kill_dead