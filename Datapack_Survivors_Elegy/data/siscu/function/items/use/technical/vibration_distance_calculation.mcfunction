function siscu:technical/distance_calculation
scoreboard players operation d siscu.volatile *= 1 siscu.integer
execute if score d siscu.volatile matches 50.. run scoreboard players set d siscu.volatile 50
execute store result storage siscu:volatile d int 1 run scoreboard players get d siscu.volatile