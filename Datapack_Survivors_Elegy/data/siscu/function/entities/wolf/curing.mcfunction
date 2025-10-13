tag @s remove siscu.zombified
tag @s remove siscu.zombifying_invulnerable
tag @s remove siscu.rot_checked
tag @s remove siscu.rotting_protected
scoreboard players reset @s siscu.zombifying
scoreboard players reset @s siscu.rotting_mob

# get previous wolf state and set the variant [[ FIX ]]
data modify storage siscu:volatile UUID set from entity @s UUID
function siscu:entities/wolf/macro/get_variant with storage siscu:volatile
function siscu:entities/wolf/macro/remove_from_list with storage siscu:volatile
execute if predicate siscu:entities/is_zombie_variant run data merge entity @s {variant:"pale"}

# effects
playsound entity.zombie_villager.cure neutral @a ~ ~ ~
execute at @s run particle item{item:{id:"rotten_flesh"}} ~ ~ ~ 0.3 0.3 0.3 0.06 30
