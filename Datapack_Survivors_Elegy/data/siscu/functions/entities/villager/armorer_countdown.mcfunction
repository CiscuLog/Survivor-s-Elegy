
scoreboard players remove villager_upgrade siscu.volatile 1

execute as @e[type=villager,predicate=siscu:entities/is_armorer_lvl5,tag=!armorer_lvl5] at @s run function siscu:entities/villager/armorer_tier5

execute if score villager_upgrade siscu.volatile matches 1.. if score armorer_5_amount siscu.volatile matches 1.. run schedule function siscu:entities/villager/armorer_countdown 2t

execute if score villager_upgrade siscu.volatile matches 0 run scoreboard players remove armorer_5_amount siscu.volatile 1