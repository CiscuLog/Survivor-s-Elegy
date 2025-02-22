scoreboard players remove ray siscu.volatile 1

execute if block ~ ~ ~ bell run scoreboard players set ray siscu.volatile -100

execute if score ray siscu.volatile matches ..-1 run particle minecraft:item{"item":"echo_shard"} ^ ^ ^ 0 0 0 0.05 4

execute if block ~ ~ ~ bell align xyz run function siscu:technical/get_block_location
execute if block ~ ~ ~ bell align xyz positioned ~0.5 ~0.5 ~0.5 run particle sonic_boom
execute if block ~ ~ ~ bell align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=!#siscu:glowing_invulnerable,distance=1..48] run function siscu:items/use/bell_void_shard/vibration_to_entity

execute if score ray siscu.volatile matches 0.. positioned ^ ^ ^0.001 run function siscu:items/use/bell_void_shard/echo_shard_ray