
scoreboard players operation timer.time_in_seconds siscu.volatile = @s siscu.zombifying
scoreboard players operation timer.time_in_seconds siscu.volatile *= -1 siscu.integer
scoreboard players operation timer.time_remainder siscu.volatile = timer.time_in_seconds siscu.volatile

scoreboard players operation timer.time_in_seconds siscu.volatile /= 60 siscu.integer
scoreboard players operation timer.time_remainder siscu.volatile %= 30 siscu.integer

execute if score timer.time_in_seconds siscu.volatile matches 1.. if score timer.time_remainder siscu.volatile matches 1.. run return 0

function siscu:entities/phage/zombification/text