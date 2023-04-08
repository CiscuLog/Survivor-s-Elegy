
## Entities ##
execute as @e[type=#siscu:drownable] unless predicate siscu:entities/check_drowning at @s run function siscu:entities/drownable/tick
execute if entity @e[type=warden] run function siscu:entities/warden/check_warden_1s_schedule

## Oxidation ##
execute as @a run function siscu:items/passive_behav/oxidisation_chance

## Desert Wells ##
execute if entity @e[type=marker,tag=siscu.well_unused] run function siscu:world/desert_well/reward_schedule

kill @e[predicate=siscu:locations/check_void]

function siscu:technical/tick_15s_schedule