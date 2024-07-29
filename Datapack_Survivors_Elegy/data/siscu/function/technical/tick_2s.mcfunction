
## Check newly spawned entities ##
execute as @e[type=#siscu:subject_to_check,tag=!entity_checked] at @s run function siscu:entities/global

## Rotting ##
execute if score rotting siscu.integer matches 1 as @e[type=#siscu:rotting_mobs_all,tag=!rot_checked] run function siscu:entities/rotting_mobs/assign_initial_rot
execute if score rotting siscu.integer matches 1 as @e[type=#siscu:rotting_mobs_any,tag=rot_checked] run function siscu:entities/rotting_mobs/convert

## Withering ##
execute as @e[type=skeleton,predicate=siscu:utils/check_the_nether] if score @s siscu.withering matches 10.. at @s run function siscu:entities/skeleton/summon_wither_skeleton
execute as @e[type=wolf,predicate=siscu:entities/is_skeleton_wolf] if score @s siscu.withering matches 10.. at @s run function siscu:entities/wolf/wither

# split function in two to lower the load put on a single tick
schedule function siscu:technical/tick_2s_2 1t

schedule function siscu:technical/tick_2s 2s