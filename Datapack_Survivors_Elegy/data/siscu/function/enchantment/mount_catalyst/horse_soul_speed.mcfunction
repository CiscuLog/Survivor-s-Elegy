execute on vehicle at @s unless block ~ ~-0.6 ~ #minecraft:soul_speed_blocks run return 0
execute on vehicle run effect give @s minecraft:speed 1 2 true
execute on vehicle positioned as @s run particle minecraft:soul ~ ~0.3 ~ 0.3 0 0.3 0 1 normal