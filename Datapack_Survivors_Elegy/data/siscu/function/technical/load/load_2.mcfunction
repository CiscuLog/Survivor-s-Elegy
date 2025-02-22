## Scheduled functions due to loading restrictions
# distance anchor
execute positioned 0 0 0 run kill @e[type=block_display,tag=siscu.distance_calculation,distance=..10]
execute unless entity @e[type=block_display,tag=siscu.distance_calculation] run summon block_display 0.0 0 0.0 {Tags:["siscu.distance_calculation"]}
