particle minecraft:wax_off ~ ~2 ~ 1.5 1.5 1.5 0 5
execute if entity @e[type=item,predicate=siscu:entities/is_gold_ingot,distance=..1.5] if block ~ ~ ~ water run function siscu:world/desert_well/grant_reward

execute if entity @e[type=marker,tag=siscu.well_unused] run schedule function siscu:world/desert_well/reward_schedule 2s