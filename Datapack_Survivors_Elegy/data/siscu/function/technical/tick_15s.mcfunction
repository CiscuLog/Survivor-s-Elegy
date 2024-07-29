
## Entities ##
execute as @e[type=#siscu:drownable] unless predicate siscu:entities/check_drowning at @s run function siscu:entities/drownable/tick
execute if entity @e[type=warden] run function siscu:entities/warden/check_warden_1s_schedule

## Entity Behav ##
execute as @e[type=#siscu:lamp_holders,tag=!offhand_protected] run function siscu:entities/lamp_holders/time_check

## Desert Wells ##
execute if entity @e[type=marker,tag=siscu.well_unused] run function siscu:world/desert_well/reward_schedule

## Sculk Plantoids ##
execute if entity @e[type=marker,tag=siscu.sculk_plantoid] run function siscu:entities/sculk_plantoid/mantain_plantoid

## alpha 0.9.3: mirage displays and Broth Textures ##
schedule function siscu:entities/mirage_display/empty_effects 1t
execute if entity @e[type=marker,tag=siscu.broth_cauldron] run schedule function siscu:entities/broth_cauldron/update/check_cauldron_schedule 2t

## Worldgen (legacy, used for old worlds) ##
execute if entity @e[type=marker,tag=siscu.cobble_column] run function siscu:world/jungle_ruins/cobble_column
execute if entity @e[type=marker,tag=siscu.dirt_column] run function siscu:world/jungle_ruins/dirt_column

## Kill stray entities on death row ##
function siscu:world/kill_dead

schedule function siscu:technical/tick_15s 15s
