
## Entities ##
execute as @e[type=#siscu:drownable,tag=!smithed.entity] unless predicate siscu:entities/check_drowning at @s run function siscu:entities/drownable/tick
execute as @e[type=zombie_villager,tag=!smithed.entity,nbt=!{ConversionTime:-1}] at @s run function siscu:entities/zombified_illager/cure/start_schedule
execute if entity @e[type=warden] run function siscu:entities/warden/check_warden_1s_schedule

## Entity Behav ##
execute as @e[type=#siscu:lamp_holders,tag=!smithed.entity] run function siscu:entities/lamp_holders/time_check

## Desert Wells ##
execute if entity @e[type=marker,tag=siscu.well_unused] run function siscu:world/desert_well/reward_schedule

## Sculk Plantoids ##
execute if entity @e[type=interaction,tag=siscu.sculk_plantoid] run function siscu:blocks/sculk_plantoid/update/clock

## alpha 0.9.3: mirage displays and Broth Textures ##
schedule function siscu:entities/mirage_display/empty_effects 1t

## Healing iron golems
execute as @e[type=iron_golem,tag=!smithed.entity] at @s run function siscu:entities/iron_golem/villager_repair/repair
## Zombified players aggro nearby iron golems
execute as @a[tag=siscu.zombie] at @s as @n[type=iron_golem,distance=..32] run function siscu:entities/iron_golem/angry_against_player

execute if entity @e[type=interaction,tag=siscu.player_corpse] run schedule function siscu:entities/player_corpse/update/schedule 1t

schedule function siscu:technical/clocks/tick_15s 15s
