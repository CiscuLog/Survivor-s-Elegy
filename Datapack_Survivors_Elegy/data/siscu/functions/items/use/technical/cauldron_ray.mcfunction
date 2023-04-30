scoreboard players remove ray siscu.volatile 1

execute if block ~ ~ ~ cauldron run scoreboard players set ray siscu.volatile -100
execute if block ~ ~ ~ water_cauldron[level=1] run scoreboard players set ray siscu.volatile -200
execute if block ~ ~ ~ water_cauldron[level=2] run scoreboard players set ray siscu.volatile -300

execute if score ray siscu.volatile matches -100 run setblock ~ ~ ~ water_cauldron[level=1]
execute if score ray siscu.volatile matches -200 run setblock ~ ~ ~ water_cauldron[level=2]
execute if score ray siscu.volatile matches -300 run setblock ~ ~ ~ water_cauldron[level=3]

execute if score ray siscu.volatile matches 0.. positioned ^ ^ ^0.001 run function siscu:items/use/technical/cauldron_ray