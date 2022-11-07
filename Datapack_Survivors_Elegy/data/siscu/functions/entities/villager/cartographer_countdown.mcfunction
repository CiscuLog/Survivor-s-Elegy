
scoreboard players remove villager_upgrade siscu.volatile 1

execute as @e[type=villager,predicate=siscu:entities/is_cartographer_lvl4,tag=!cartographer_lvl4] at @s run function siscu:entities/villager/cartographer_tier4


execute if score villager_upgrade siscu.volatile matches 1.. run function siscu:entities/villager/cartographer_countdown_schedule