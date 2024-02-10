## Check newly spawned entities ##
execute as @e[type=#siscu:subject_to_check,tag=!entity_checked] at @s run function siscu:entities/global

## Rotting ##
execute if score rotting siscu.integer matches 1 as @e[type=#siscu:rotting_mobs_all,tag=!rot_checked] run function siscu:entities/rotting_mobs/assign_initial_rot
execute if score rotting siscu.integer matches 1 as @e[type=#siscu:rotting_mobs_all] run function siscu:entities/rotting_mobs/convert

## Withering ##
execute as @e[type=skeleton,predicate=siscu:utils/check_the_nether] run function siscu:entities/skeleton/wither

## Zombifying ##
execute as @e[predicate=siscu:entities/has_phage,tag=!zombifying] if score phage_enabled siscu.integer matches 1 run function siscu:entities/zombifying/start_zombifying
execute as @e[predicate=siscu:entities/has_phage,tag=!zombifying_strong] if score phage_enabled siscu.integer matches 1 run function siscu:entities/zombifying/start_zombifying_strong
execute as @a[tag=zombie,gamemode=!creative] at @s if predicate siscu:utils/light_level/lvl15 unless predicate siscu:entities/is_on_fire run function siscu:entities/player/burn_player

## Player Behav ##
execute as @a if score @s siscu.death matches 1.. at @s run function siscu:entities/player/death

## Ambient Effects ##
execute as @e[type=marker,tag=breach] run function siscu:world/breach_effects


function siscu:technical/tick_2s_schedule