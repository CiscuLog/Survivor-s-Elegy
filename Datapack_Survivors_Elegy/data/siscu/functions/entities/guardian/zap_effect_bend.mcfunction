scoreboard players set random_min siscu.volatile 0
scoreboard players set random_max siscu.volatile 5
execute store result score server_randN siscu.volatile run loot spawn ~ ~ ~ loot siscu:gameplay/generic_randomiser
execute if score server_status siscu.integer matches 0 run function siscu:technical/server_mode_alternate_randomiser
execute if entity @p[tag=discharging,distance=..2] run scoreboard players set server_randN siscu.volatile 0

execute if score server_randN siscu.volatile matches 0..1 positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
execute if score server_randN siscu.volatile matches 2 rotated ~40 ~ positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
execute if score server_randN siscu.volatile matches 3 rotated ~-40 ~ positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
execute if score server_randN siscu.volatile matches 4 rotated ~ ~40 positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
execute if score server_randN siscu.volatile matches 5 rotated ~ ~-40 positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
