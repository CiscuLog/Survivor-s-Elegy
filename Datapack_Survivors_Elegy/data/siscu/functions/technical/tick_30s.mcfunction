
## Rotting ##
execute as @e[type=#siscu:rotting_mobs_all,tag=!rotting_protected] run function siscu:entities/rotting_mobs/rot

## Withering ##
execute if score withering siscu.integer matches 1 as @e[type=#withering_vulnerable] run function siscu:world/withering

## Ambient Effects ##
execute as @e[type=marker,tag=fire_spring] at @s run function siscu:entities/blaze/fire_spring_effects

## Worldgen processors ##
execute if entity @e[type=marker,tag=swamp_hut_stuff] run function siscu:world/swamp_hut/swamp_starters
execute if entity @e[type=marker,tag=wandering_trader] run function siscu:world/trader_camp/summon_trader

function siscu:technical/tick_30s_schedule