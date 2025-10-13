
## Entities ##
execute as @e[type=#siscu:drownable,tag=!smithed.entity] unless predicate siscu:entities/check_drowning at @s run function siscu:entities/drownable/tick
execute if entity @e[type=warden] run function siscu:entities/warden/check_warden_1s_schedule

## Entity Behav ##
execute as @e[type=#siscu:lamp_holders,tag=!smithed.entity] run function siscu:entities/lamp_holders/time_check

## Desert Wells ##
execute if entity @e[type=marker,tag=siscu.well_unused] run function siscu:world/desert_well/reward_schedule

## Sculk Plantoids ##
execute if entity @e[type=marker,tag=siscu.sculk_plantoid] run function siscu:blocks/sculk_plantoid/mantain_plantoid

## alpha 0.9.3: mirage displays and Broth Textures ##
schedule function siscu:entities/mirage_display/empty_effects 1t
schedule function siscu:blocks/broth_cauldron/update/check_schedule 1t append

schedule function siscu:technical/clocks/tick_15s 15s
