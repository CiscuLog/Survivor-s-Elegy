## Others ##
execute if entity @e[type=item_display,tag=boat_flag] run function siscu:entities/boat/remove_flag
advancement revoke @a only siscu:entities/struck_by_lightning_while_wearing_copper_armor

## Rotting ##
execute as @e[type=#siscu:rotting_mobs_any,tag=!rotting_protected,tag=rot_checked] run function siscu:entities/rotting_mobs/rot

## Withering ##
execute if score withering siscu.integer matches 1 as @e[type=#siscu:withering_vulnerable] run function siscu:world/withering/withering

## Ambient Effects ##
execute as @e[type=#siscu:fire_spring,tag=fire_spring] at @s run function siscu:entities/blaze/fire_spring/fire_spring_effects

## Worldgen processors ##
execute if entity @e[type=marker,tag=swamp_hut_stuff] run function siscu:world/swamp_hut/swamp_starters
execute if entity @e[type=marker,tag=siscu.trader_tent_glass] run function siscu:world/trader_camp/clear_barrier
execute if entity @e[type=marker,tag=siscu.trader_tent_llama] run function siscu:world/trader_camp/summon_llama
execute if entity @e[type=marker,tag=wandering_trader] run function siscu:world/trader_camp/summon_trader
execute if entity @e[type=marker,tag=siscu.witch_hut_markers] run function siscu:world/swamp_hut/swamp_starters

execute if entity @e[type=item_frame,tag=siscu.piglin_painting] as @e[type=item_frame,tag=siscu.piglin_painting] run function siscu:world/piglin/painting
execute if entity @e[type=item_frame,tag=siscu.piglin_banner] as @e[type=item_frame,tag=siscu.piglin_banner] run function siscu:world/piglin/banner


schedule function siscu:technical/tick_30s 30s