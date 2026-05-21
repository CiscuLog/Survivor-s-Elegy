tag @s remove siscu.zombified
tag @s remove siscu.zombifying_invulnerable
tag @s remove siscu.rot_checked
tag @s remove siscu.rotting_protected
scoreboard players reset @s siscu.zombifying
scoreboard players reset @s siscu.rotting_mob

execute unless data entity @s data.variant run function siscu:entities/wolf/curing_legacy/main
execute if data entity @s data.variant run data modify entity @s variant set from entity @s data.variant

# effects
playsound entity.zombie_villager.cure neutral @a ~ ~ ~
execute at @s run particle item{item:{id:"rotten_flesh"}} ~ ~ ~ 0.3 0.3 0.3 0.06 30
