scoreboard players remove ray siscu.volatile 1

execute if block ~ ~ ~ bell run scoreboard players set ray siscu.volatile -100

execute if score ray siscu.volatile matches ..-1 run particle minecraft:item echo_shard ^ ^ ^ 0 0 0 0.05 4

execute if score ray siscu.volatile matches 0.. positioned ^ ^ ^0.001 run function siscu:items/use/technical/echo_shard_ray