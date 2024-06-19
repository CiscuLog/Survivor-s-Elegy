data merge storage siscu:volatile {min:0}
data merge storage siscu:volatile {max:5}
execute store result score server_randN siscu.volatile run function siscu:technical/randomiser with storage siscu:volatile
execute if entity @p[tag=discharging,distance=..2] run scoreboard players set server_randN siscu.volatile 0

execute if score server_randN siscu.volatile matches 0..1 positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
execute if score server_randN siscu.volatile matches 2 rotated ~40 ~ positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
execute if score server_randN siscu.volatile matches 3 rotated ~-40 ~ positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
execute if score server_randN siscu.volatile matches 4 rotated ~ ~40 positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
execute if score server_randN siscu.volatile matches 5 rotated ~ ~-40 positioned ^ ^ ^0.1 run function siscu:entities/guardian/zap_effect
