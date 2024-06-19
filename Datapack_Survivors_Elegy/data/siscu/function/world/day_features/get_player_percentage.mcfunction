execute store result score player_percentage siscu.day run gamerule playersSleepingPercentage
execute store result score player_amount siscu.day run execute if entity @a
scoreboard players operation player_percentage siscu.day *= player_amount siscu.day
scoreboard players operation player_percentage siscu.day /= 100 siscu.integer