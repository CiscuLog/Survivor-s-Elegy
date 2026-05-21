
## Ambient Effects ##
execute if entity @e[type=#siscu:fire_spring,tag=siscu.fire_spring] run function siscu:blocks/fire_spring/fire_spring_effects_schedule

## Rotting ##
execute as @e[type=#siscu:rotting_mobs_any,tag=!siscu.rotting_protected,tag=siscu.rot_checked] if predicate siscu:utils/50_percent run function siscu:entities/rotting_mobs/rot

## Worldgen processors ##
# Remove those soon
execute as @e[type=item_frame,tag=siscu.piglin_painting] run function siscu:world/piglin/painting
execute as @e[type=item_frame,tag=siscu.piglin_banner] run function siscu:world/piglin/banner

execute as @e[type=item_frame,tag=siscu.worldgen] at @s run function siscu:world/worldgen_entity_starters

# split function in two to lower the load put on a single tick
schedule function siscu:technical/clocks/tick_30s_2 1t

schedule function siscu:technical/clocks/tick_30s 30s
