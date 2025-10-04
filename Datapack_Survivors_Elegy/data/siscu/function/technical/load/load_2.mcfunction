## Scheduled functions due to loading restrictions
# distance anchor
execute positioned 0 0 0 run kill @e[type=block_display,tag=siscu.distance_calculation,distance=..10]
execute unless entity @n[type=block_display,tag=siscu.distance_calculation,distance=..10] run summon block_display 0.0 0 0.0 {Tags:["smithed.entity","smithed.strict","siscu.distance_calculation"]}
