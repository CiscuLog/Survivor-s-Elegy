
scoreboard players operation timer.minutes siscu.volatile = timer.time_in_seconds siscu.volatile
scoreboard players operation timer.seconds siscu.volatile = timer.time_in_seconds siscu.volatile
scoreboard players operation timer.minutes siscu.volatile /= 60 siscu.integer
scoreboard players operation timer.seconds siscu.volatile %= 60 siscu.integer