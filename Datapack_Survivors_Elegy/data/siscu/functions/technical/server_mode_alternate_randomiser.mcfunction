# Randomiser v2 (SE alpha v0.7.4)

execute store result score daytime siscu.volatile run time query daytime
execute store result score x siscu.volatile run data get entity @s Pos[0]
execute store result score y siscu.volatile run data get entity @s Pos[1]
execute store result score z siscu.volatile run data get entity @s Pos[2]
scoreboard players operation server_randNdiff siscu.volatile = random_max siscu.volatile
scoreboard players operation server_randNdiff siscu.volatile -= random_min siscu.volatile

# N=N(-1)+pos(x)+pos(y)+pos(z)+daytime
scoreboard players operation server_randN siscu.volatile += daytime siscu.volatile
scoreboard players operation server_randN siscu.volatile += x siscu.volatile
scoreboard players operation server_randN siscu.volatile += y siscu.volatile
scoreboard players operation server_randN siscu.volatile += z siscu.volatile

# N%=(random_max-random_min)
scoreboard players operation server_randN siscu.volatile %= server_randNdiff siscu.volatile

# N+=random_min
scoreboard players operation server_randN siscu.volatile += random_min siscu.volatile