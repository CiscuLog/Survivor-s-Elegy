execute store result score player_percentage siscu.day run gamerule players_sleeping_percentage
execute store result score player_amount siscu.day run execute if entity @a
scoreboard players operation player_percentage siscu.day *= player_amount siscu.day
scoreboard players operation player_percentage siscu.day /= 100 siscu.integer