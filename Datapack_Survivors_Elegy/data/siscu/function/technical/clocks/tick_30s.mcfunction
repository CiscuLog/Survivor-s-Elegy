
## Ambient Effects ##
execute as @e[type=#siscu:fire_spring,tag=fire_spring] at @s run function siscu:blocks/fire_spring/fire_spring_effects

## Rotting ##
execute as @e[type=#siscu:rotting_mobs_any,tag=!siscu.rotting_protected,tag=siscu.rot_checked] if predicate siscu:utils/50_percent run function siscu:entities/rotting_mobs/rot

## Worldgen processors ##
execute as @e[type=marker,tag=siscu.trader_tent_llama] run function siscu:world/trader_camp/summon {String:"trader_llama"}
execute as @e[type=marker,tag=siscu.wandering_trader] run function siscu:world/trader_camp/summon {String:"wandering_trader"}

execute as @e[type=item_frame,tag=siscu.piglin_painting] run function siscu:world/piglin/painting
execute as @e[type=item_frame,tag=siscu.piglin_banner] run function siscu:world/piglin/banner

execute as @e[type=item_frame,tag=siscu.worldgen] run function siscu:world/item_frame_starters

# split function in two to lower the load put on a single tick
schedule function siscu:technical/clocks/tick_30s_2 1t

schedule function siscu:technical/clocks/tick_30s 30s
