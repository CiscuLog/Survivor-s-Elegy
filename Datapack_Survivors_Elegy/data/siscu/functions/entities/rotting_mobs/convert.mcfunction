
## Set Rotting Stage ##
execute as @s if predicate siscu:utils/25_percent if score @s siscu.rotting_mob >= rotting_timer_limit siscu.integer run scoreboard players add @s siscu.rotting_mob 100

## Entity Behav ##
execute if score @s[type=#siscu:rotting_mobs,predicate=siscu:utils/is_not_baby] siscu.rotting_mob matches 100.. at @s run function siscu:entities/rotting_mobs/summon_skeleton
execute if score @s[type=zoglin] siscu.rotting_mob matches 100.. at @s run kill @s
execute if score @s[type=zombie_villager] siscu.rotting_mob matches 100.. at @s run function siscu:entities/rotting_mobs/summon_skeleton
execute if score @s[type=zombie_horse] siscu.rotting_mob matches 100.. at @s run function siscu:entities/rotting_mobs/summon_skeleton_horse

execute if score @s siscu.rotting_mob matches 200.. run kill @s