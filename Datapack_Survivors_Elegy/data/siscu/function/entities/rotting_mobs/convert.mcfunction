
## Set Rotting Stage ##
execute as @s if predicate siscu:utils/25_percent if score @s siscu.rotting_mob >= rotting_timer_limit siscu.integer run scoreboard players add @s siscu.rotting_mob 100

## Entity Behav ##
execute if score @s siscu.rotting_mob matches 1000..1999 run damage @s 50 siscu:rotting
execute if score @s siscu.rotting_mob matches 2000.. run kill @s

execute if score @s[type=#siscu:rotting_mobs,tag=!siscu.stray_zombie,tag=!siscu.bogged_zombie] siscu.rotting_mob matches 100.. at @s run return run function siscu:entities/rotting_mobs/summon_skeleton
execute if score @s[tag=siscu.stray_zombie] siscu.rotting_mob matches 100.. at @s run return run function siscu:entities/rotting_mobs/summon_stray
execute if score @s[tag=siscu.bogged_zombie] siscu.rotting_mob matches 100.. at @s run return run function siscu:entities/rotting_mobs/summon_bogged
execute if score @s[type=zoglin] siscu.rotting_mob matches 100.. at @s run damage @s 2 siscu:rotting
execute if score @s[type=zombie_villager] siscu.rotting_mob matches 100.. at @s run return run function siscu:entities/rotting_mobs/summon_skeleton
execute if score @s[type=zombie_horse] siscu.rotting_mob matches 100.. at @s run return run function siscu:entities/rotting_mobs/summon_skeleton_horse
execute if score @s[type=wolf] siscu.rotting_mob matches 100.. at @s run return run function siscu:entities/rotting_mobs/summon_wolf
