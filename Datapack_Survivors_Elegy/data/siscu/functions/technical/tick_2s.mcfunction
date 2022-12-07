## Check newly spawned entities ##
execute as @e[type=#siscu:subject_to_check,tag=!entity_checked] at @s run function siscu:entities/global

## Entity Behav ##
execute as @e[type=#siscu:lamp_holders,tag=!offhand_protected] run function siscu:entities/lamp_holders/time_check

## Rotting ##
execute as @e[type=#siscu:rotting_mobs_all,tag=!rot_checked] run function siscu:entities/rotting_mobs/assign_initial_rot
execute as @e[type=#siscu:rotting_mobs_all] run function siscu:entities/rotting_mobs/convert

## Withering ##
execute as @e[type=skeleton,predicate=siscu:utils/check_the_nether] run function siscu:entities/skeleton/wither

## Zombifying ##
execute as @e[predicate=siscu:entities/has_phage,tag=!zombifying] run function siscu:entities/zombifying/start_zombifying
execute as @e[predicate=siscu:entities/has_phage,tag=!zombifying_strong] run function siscu:entities/zombifying/start_zombifying_strong
execute as @e[type=player,tag=zombie] at @s if predicate siscu:utils/light_level/lvl15 unless predicate siscu:entities/is_on_fire run function siscu:entities/player/burn_player

## Player Behav ##
execute as @e[type=player] if score @s siscu.death matches 1.. at @s run function siscu:entities/player/death

## Ambient Effects ##
execute as @e[type=marker,tag=breach] run function siscu:world/breach_effects


function siscu:technical/tick_2s_schedule