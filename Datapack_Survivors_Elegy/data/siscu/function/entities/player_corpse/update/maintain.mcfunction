
execute if block ~ ~-1 ~ air at @s run function siscu:entities/player_corpse/update/kill/kill

# Environmental effects
execute if entity @s[tag=siscu.corpse_infected] run particle entity_effect{color:[0.752,0.643,0.302,1]} ~ ~0.2 ~ 0 0.2 0 0.03 2 normal

return 1