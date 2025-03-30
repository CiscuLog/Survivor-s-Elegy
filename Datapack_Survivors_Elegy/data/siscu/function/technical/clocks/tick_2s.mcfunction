
# split function in two to lower the load put on a single tick
schedule function siscu:technical/clocks/tick_2s_2 1t

schedule function siscu:technical/clocks/tick_2s 2s

# Turns out if there are too many commands the function cannot be resolved and it all breaks. Thus, in this function we schedule the checks so they're not all contained in the same "command". It's not all-proof, but it should do his job. The self schedules are declared here too so when and if an issue exists, the clock doesn't stop ticking.

## Check newly spawned entities ##
execute as @e[type=#siscu:initialisable_tick_2s,tag=!siscu.entity_checked] at @s run function siscu:entities/global

## Rotting ##
execute as @e[type=#siscu:rotting_mobs_any,tag=!smithed.entity] run function siscu:entities/rotting_mobs/main

## Withering ##
execute as @e[type=#siscu:withering_convertible,tag=!smithed.entity] if score @s siscu.withering matches 10.. at @s run function siscu:world/withering/skeleton_conversion
execute as @e[type=wolf,predicate=siscu:entities/is_skeleton_wolf] if score @s siscu.withering matches 20.. at @s run return run function siscu:entities/wolf/wither with entity @s
